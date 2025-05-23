

import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';

import 'api_interceptor.dart';

class ApiStatusEntity<T> {
  final StatusType statusType;
  final String errMsg;
  final String errCode;
  final T? data;

  ApiStatusEntity({
    this.statusType = StatusType.SUCCESS,
    this.errMsg = "",
    this.errCode = "",
    required this.data
  });

  factory ApiStatusEntity.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT
      ) {
    return ApiStatusEntity(
        statusType: StatusType.values.firstWhere((e) => e.name == json['statusType']),
        errMsg: json['errMsg'],
        errCode: json['errCode'],
        data: fromJsonT(json['data'])
    );
  }

  Map<String, dynamic> toJson(Object? Function(T? value) toJsonT) {
    return {
      'statusType': statusType.name,
      'data': toJsonT(data),
      'errMsg' : errMsg,
      'errCode' : errCode
    };
  }
}

extension ApiStatusEntityHandler<T> on ApiStatusEntity<T> {
  void handleStatus({
    void Function(T? data)? onSuccess,
    void Function()? onUnauthorized,
    void Function(String errCode, String errMsg)? onError,
    void Function()? onLoading,
    void Function()? onEmpty,
  }) {
    switch (statusType) {
      case StatusType.SUCCESS:
        if (onSuccess != null) onSuccess(data);
        break;
      case StatusType.UNAUTHORIZED:
        if (onUnauthorized != null) onUnauthorized();
        break;
      case StatusType.SERVER_ERROR:
        if (onError != null) onError(errCode, errMsg);
        break;
      case StatusType.LOADING:
        if (onLoading != null) onLoading();
        break;
      case StatusType.PARSE_TYPE_ERROR:
        if (onError != null) onError(errCode, errMsg);
        break;
      case StatusType.MOBILE_CLIENT_ERROR:
        if (onError != null) onError(errCode, errMsg);
        break;
    }
  }
}

extension ExceptionExtension on Object {
  ApiStatusEntity<T> toErrorEntity<T>() {
    if (this is DioException && (this as DioException).error is UnAuthorizedException) {
      return ApiStatusEntity(
        statusType: StatusType.UNAUTHORIZED,
        data: null,
      );
    } else if(this is DioException) {
      var errorResponse =(this as DioException).response as Response<dynamic>;
      var customFieldErrors = errorResponse.data['customFieldErrors'] as List<dynamic>?;

      var message = (this as DioException).message ?? "";

      if(customFieldErrors != null && customFieldErrors.isNotEmpty == true) {
        if(customFieldErrors.first['reason'] != null) {
          message = customFieldErrors.first['reason'];
        }
      } else if(errorResponse.data['message']?.isNotEmpty == true) {
        message = errorResponse.data['message']!;
      }

      return ApiStatusEntity(
        errMsg: message,
        errCode: (this as DioException).response?.statusCode?.toString() ?? "",
        statusType: StatusType.SERVER_ERROR,
        data: null,
      );
    } else if(this is TypeError){
      return ApiStatusEntity(
          statusType: StatusType.PARSE_TYPE_ERROR,
          errMsg: toString(),
          data: null
      );
    } else {
      return ApiStatusEntity(
          statusType: StatusType.MOBILE_CLIENT_ERROR,
          errMsg: toString(),
          data: null
      );
    }
  }
}