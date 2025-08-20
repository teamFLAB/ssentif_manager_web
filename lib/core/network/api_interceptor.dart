import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:html' as html;

import '../storage/storage_manager.dart';

class UnAuthorizedException implements Exception {}

class ApiInterceptor extends Interceptor {
  final Dio dio;
  final Future<bool> Function() refreshToken;
  Future<bool>? _refreshTokenFuture;
  final tempAccessToken = "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzcxMDAsImlhdCI6MTc1NTY1MzkxMCwiZXhwIjoxNzU1NzQwMzEwfQ.nPjPLxuspIgHWuEtGQeXSvgoGl7W9Infciewydn31-w";

  ApiInterceptor({
    required this.dio,
    required this.refreshToken,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = StorageManager.getAccessToken();
    bool? requiresToken = options.extra['requiresToken'];

    if (requiresToken == true) {
      options.headers['X-AUTH-TOKEN'] = accessToken;
      if (kDebugMode) {
        print('[DEBUG] Token being sent: ${accessToken?.substring(0, 20)}...');
      }
    }
    // options.extra를 직접 수정하지 않음
    options.headers['Content-Type'] = 'application/json';
    options.headers['Access-Control-Allow-Origin'] = '*';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!kDebugMode) {
      print('[API RESPONSE] ${response.statusCode} ${response.requestOptions.uri}');
    }
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // 이미 토큰 재발급 중이면 대기
      _refreshTokenFuture ??= refreshToken();

      final refreshResult = await _refreshTokenFuture;
      if (refreshResult == true) {
        final newAccessToken = StorageManager.getAccessToken();
        final requestOptions = err.requestOptions;

        // 새로운 토큰으로 헤더 업데이트
        requestOptions.headers['X-AUTH-TOKEN'] = '$newAccessToken';

        try {
          // 원본 요청 재시도 - 인터셉터를 거치지 않도록 새로운 Dio 인스턴스 사용
          final tempDio = Dio();
          tempDio.options.baseUrl = dio.options.baseUrl;

          final clone = await tempDio.request(
            requestOptions.path,
            data: requestOptions.data,
            queryParameters: requestOptions.queryParameters,
            options: Options(
              method: requestOptions.method,
              headers: requestOptions.headers,
              extra: requestOptions.extra,
            ),
          );
          _refreshTokenFuture = null;
          handler.resolve(clone);
          return Future.value();
        } on DioException catch (e) {
          _refreshTokenFuture = null;
          handler.next(e);
          return Future.value();
        } catch (e) {
          _refreshTokenFuture = null;
          return Future.value();
        }
      } else {
        // 토큰 재발급 실패 시 로그아웃 처리
        _refreshTokenFuture = null;
        if (kDebugMode) {
          print('[DEBUG] Token refresh failed, user needs to re-login');
        }
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: UnAuthorizedException(),
            response: err.response,
            type: DioExceptionType.badResponse,
          ),
        );
        return Future.value();
      }
    }
    return super.onError(err, handler);
  }
}
