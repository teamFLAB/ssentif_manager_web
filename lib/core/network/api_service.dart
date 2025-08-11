import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/login/data/model/request_login.dart';
import 'package:ssentif_manager_web/features/login/data/model/response_login.dart';
import 'package:ssentif_manager_web/features/schedule/data/model/schedule_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_profile_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_monthly_calendar_model.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

import '../../features/schedule/data/model/schedule_detail_model.dart';
import '../../shared/data/model/work_place_model.dart';
import '../../shared/data/model/user_profile_model.dart';
import 'api_interceptor.dart';

// 싱글톤 인스턴스
ApiService? _apiServiceInstance;

final apiServiceProvider = Provider<ApiService>((ref) {
  _apiServiceInstance ??= ApiService();
  return _apiServiceInstance!;
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

    // 인터셉터가 이미 추가되어 있는지 확인
    final hasApiInterceptor =
        _dio.interceptors.any((interceptor) => interceptor is ApiInterceptor);
    if (!hasApiInterceptor) {
      _dio.interceptors
          .add(ApiInterceptor(dio: _dio, refreshToken: refreshToken));
    }

    // 개발 환경에서만 로깅 활성화
    if (kDebugMode) {
      final hasLogInterceptor =
          _dio.interceptors.any((interceptor) => interceptor is LogInterceptor);
      if (!hasLogInterceptor) {
        _dio.interceptors.add(LogInterceptor(
          requestBody: true,
          responseBody: true,
        ));
      }
    }
  }

  /// 토큰 재발급
  Future<bool> refreshToken() async {
    try {
      final refreshToken = StorageManager.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        return false;
      }

      // 인터셉터를 거치지 않도록 새로운 Dio 인스턴스 사용
      final tempDio = Dio();
      tempDio.options.baseUrl = _dio.options.baseUrl;

      final response = await tempDio.get(
        '/api/auth/reissue',
        queryParameters: {'refreshToken': refreshToken},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      final updatedAccessToken = response.data['accessToken'];
      final updatedRefreshToken = response.data['refreshToken'];

      if (updatedAccessToken != null && updatedRefreshToken != null) {
        StorageManager.setAccessToken(updatedAccessToken);
        StorageManager.setRefreshToken(updatedRefreshToken);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('[DEBUG] Token refresh failed: $e');
      }
      return false;
    }
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
        extra: {'requiresToken': true},
      ),
    );
    print("=======리스트 조회 성공");
    final data = response.data;
    return data
        .map((e) => UserProfileModel.fromJson(e as Map<String, dynamic>))
        .toList();
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
        'trainerId': trainerId
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ScheduleModel.fromJson(response.data);
  }

  /// 일정 상세 조회하기
  Future<ScheduleDetailModel> getScheduleDetail(
      {required int scheduleId}) async {
    final response = await _dio.get(
      '/api/schedule/detail/v2',
      queryParameters: {'schedule': scheduleId},
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ScheduleDetailModel.fromJson(response.data);
  }

  /// 수업 중인 회원 목록 조회하기
  Future<ResponseEnrolledClients> getInClassMembers(
      {required int trainerId}) async {
    final response = await _dio.get(
      '/api/user/profile/list/class',
      queryParameters: {'trainerId': trainerId},
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ResponseEnrolledClients.fromJson(response.data);
  }

  /// 회원 프로필 상세 조회하기
  Future<ClientProfileModel?> getClientProfile(
      {required int trainerId, required int clientId}) async {
    final response = await _dio.get(
      '/api/user/profile/v3',
      queryParameters: {
        'trainerId': trainerId,
        'clientId': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ClientProfileModel.fromJson(response.data);
  }

  /// 회원 월간 캘린더 조회하기
  Future<ClientMonthlyCalendarModel> getClientMonthlyEvents({
    required int trainerId,
    required int year,
    required int month,
    required int clientId,
  }) async {
    final response = await _dio.get(
      '/api/user/calendar/v2',
      queryParameters: {
        'trainerId': trainerId,
        'year': year,
        'month': month,
        'clientId': clientId
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ClientMonthlyCalendarModel.fromJson(response.data);
  }

  /// 수업 기록 조회하기
  Future<ClassHistoriesResponse> getClassRecords({
    required String trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  }) async {
    final response = await _dio.get(
      '/api/matching/classInfo/list/all/v2',
      queryParameters: {
        'trainerIds': trainerIds,
        if (lastScheduleId != null) 'lastScheduleId': lastScheduleId,
        'count': count,
        'yearMonth': yearMonth,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ClassHistoriesResponse.fromJson(response.data);
  }
}
