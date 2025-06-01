import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:html' as html;

import '../storage/storage_manager.dart';

class UnAuthorizedException implements Exception {}

class ApiInterceptor extends Interceptor {
  final Dio dio;
  final Future<bool> Function() refreshToken;
  Future<bool>? _refreshTokenFuture;

  ApiInterceptor({
    required this.dio,
    required this.refreshToken,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = StorageManager.getAccessToken();
    bool? requiresToken = options.headers['requiresToken'];

    if (requiresToken == true) {
      options.headers['X-AUTH-TOKEN'] = accessToken;
    }
    options.headers.remove('requiresToken');
    options.headers['Access-Control-Allow-Origin'] = '*';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('[API RESPONSE] ${response.statusCode} ${response.requestOptions.uri}');
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      _refreshTokenFuture ??= refreshToken();

      final refreshResult = await _refreshTokenFuture;
      if (refreshResult == true) {
        final newAccessToken = StorageManager.getAccessToken();
        final requestOptions = err.requestOptions;
        requestOptions.headers['X-AUTH-TOKEN'] = '$newAccessToken';
        try {
          final clone = await dio.request(
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
        _refreshTokenFuture = null;
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
