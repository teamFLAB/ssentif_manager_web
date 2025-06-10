import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/login/data/model/request_login.dart';
import 'package:ssentif_manager_web/features/login/data/model/response_login.dart';
import 'package:ssentif_manager_web/features/schedule/data/model/schedule_model.dart';

import '../../features/schedule/data/model/schedule_detail_model.dart';
import '../../shared/data/model/work_place_model.dart';
import '../../shared/data/model/user_profile_model.dart';
import 'api_interceptor.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

class ApiService {
  final Dio _dio;

  String get apiBaseUrl {
    if (kReleaseMode) {
      return dotenv.env['PRODUCTION_API_URL'] ?? '';
    } else {
      return dotenv.env['TEST_API_URL'] ?? '';
    }
  }

  ApiService({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.options.baseUrl = apiBaseUrl;
    _dio.interceptors
        .add(ApiInterceptor(dio: _dio, refreshToken: refreshToken));
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  /// 토큰 재발급
  Future<bool> refreshToken() async {
    return true;
  }

  /// 로그인 API
  Future<ResponseLogin?> login({required RequestLogin requestLogin}) async {
    final response = await _dio.post(
      '/api/auth/login',
      data: requestLogin.toJson(),
      options: Options(
        extra: {'requiresToken': false},
      ),
    );
    return ResponseLogin.fromJson(response.data);
  }

  /// 내 정보 조회하기
  Future<UserProfileModel> getUserProfile() async {
    final response = await _dio.get(
      '/api/user',
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return UserProfileModel.fromJson(response.data);
  }

  /// 근무지 조회하기
  Future<ResponseWorkPlaceList> searchWorkPlaces(
      {required String keyword}) async {
    final response = await _dio.get(
      '/api/workplace/search',
      queryParameters: {'keyword': keyword},
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ResponseWorkPlaceList.fromJson(response.data);
  }

  /// 트레이너 리스트 조회하기
  Future<List<UserProfileModel>> getCoachList(
      {required int workPlaceId}) async {
    final response = await _dio.get(
      '/api/workplace/$workPlaceId/trainers',
      options: Options(
        extra: {'requiresToken': false},
      ),
    );
    final data = response.data;
    if (data is List) {
      return data
          .map((e) => UserProfileModel.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  /// 트레이너별 주간 스케줄 조회하기
  Future<ScheduleModel> getSchedules({
    required String startDate,
    required String endDate,
    required int trainerId,
  }) async {
    final response = await _dio.get(
      '/api/schedule/calendar/v2',
      queryParameters: {
        'startDate': startDate,
        'endDate': endDate,
        'trainerId' : trainerId
      },
      options: Options(
        extra: {'requiresToken': true },
      ),
    );
    return ScheduleModel.fromJson(response.data) ;
  }

  /// 일정 상세 조회하기
  Future<ScheduleDetailModel> getScheduleDetail({
    required int scheduleId
  }) async {
    final response = await _dio.get(
      '/api/schedule/detail/v2',
      queryParameters: {
        'schedule' : scheduleId
      },
      options: Options(
        extra: {'requiresToken': true },
      ),
    );
    return ScheduleDetailModel.fromJson(response.data) ;
  }
}
