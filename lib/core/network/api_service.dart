import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/login/data/model/request_login.dart';
import 'package:ssentif_manager_web/features/login/data/model/response_login.dart';
import 'package:ssentif_manager_web/features/schedule/data/model/schedule_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_profile_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_monthly_calendar_model.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/body_composition_analysis_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/monthly_diet_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/diet_detail_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_history_model.dart';
import '../../features/dashboard/data/model/trainer_schedules_with_prev_month_model.dart';
import '../../features/dashboard/data/model/monthly_schedule_count_model.dart';
import '../../features/dashboard/data/model/monthly_routine_ratio_model.dart';
import '../../features/dashboard/data/model/monthly_repurchase_count_model.dart';
import '../../features/dashboard/data/model/monthly_schedule_review_average_model.dart';
import '../../features/dashboard/data/model/trainer_schedule_reviews_with_previous_month_response.dart';
import '../../features/schedule/data/model/schedule_detail_model.dart';
import '../../shared/data/model/work_place_model.dart';
import '../../shared/data/model/user_profile_model.dart';
import '../../shared/data/model/workplace_repurchase_with_previous_month_response.dart';
import '../../shared/data/model/workplace_new_registration_with_previous_month_response.dart';
import '../../features/dashboard/data/model/monthly_new_registration_count_model.dart';
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
    return "http://13.125.118.62:8080";
    // return "https://api.ssentif.kr";
    // dotenv 관련 코드 모두 제거됨
  }

  ApiService({Dio? dio}) : _dio = dio ?? Dio() {
    final baseUrl = apiBaseUrl;
    if (baseUrl.isEmpty) {
      if (kDebugMode) {
        print(
            '[WARNING] API base URL is empty. Check .env file or environment variables.');
      }
    }

    _dio.options.baseUrl = baseUrl;

    // Web 환경 최적화 설정
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    _dio.options.sendTimeout = const Duration(seconds: 30);

    // Web에서 CORS를 위한 헤더 설정 (실제 CORS는 서버에서 설정해야 함)
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers['Accept'] = 'application/json';

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
    // TODO: 나중에 사용할 tempRefreshToken
    // final tempRefreshToken = "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzcxMDAsImlhdCI6MTc1Mzk1NDMxNiwiZXhwIjoxNzU2NTQ2MzE2LCJqdGkiOiIzNmZlY2M5Yy1lOGQ4LTQ1MWMtOGVhNS1lMDI5YmIxMDUyMzEifQ.odBOd1Li4uhLtgS1UZwpLlKaN8xHdcMPkvMBpq77598";

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
    try {
      final response = await _dio.post(
        '/api/auth/login',
        data: requestLogin.toJson(),
        options: Options(
          extra: {'requiresToken': false},
        ),
      );

      // response.data가 Map인지 확인
      if (response.data is Map<String, dynamic>) {
        return ResponseLogin.fromJson(response.data as Map<String, dynamic>);
      } else {
        if (kDebugMode) {
          print(
              '[ERROR] Unexpected response data type: ${response.data.runtimeType}');
          print('[ERROR] Response data: ${response.data}');
        }
        return null;
      }
    } on DioException catch (e) {
      if (kDebugMode) {
        print('[ERROR] Login API error: ${e.message}');
        print('[ERROR] Response: ${e.response?.data}');
      }
      rethrow;
    } catch (e) {
      if (kDebugMode) {
        print('[ERROR] Login unexpected error: $e');
      }
      rethrow;
    }
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
      '/api/workplace/${workPlaceId}/trainers',
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    final data = response.data as List<dynamic>;
    return data.map((e) => UserProfileModel.fromJson(e)).toList();
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

  /// 완료된 스케줄 조회하기
  Future<TrainerSchedulesWithPrevMonth?> getCompletedSchedules({
    required int workplaceId,
    required String yearMonth,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/schedules/completed',
      queryParameters: {
        'yearMonth': yearMonth,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    return TrainerSchedulesWithPrevMonth.fromJson(response.data);
  }

  /// 근무지 스케줄 리뷰 조회하기
  Future<TrainerScheduleReviewsWithPreviousMonthResponse?> getScheduleReviews({
    required int workplaceId,
    required String yearMonth,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/schedule-reviews',
      queryParameters: {
        'yearMonth': yearMonth,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    return TrainerScheduleReviewsWithPreviousMonthResponse.fromJson(
        response.data);
  }

  /// 월별 총 수업횟수 조회하기
  Future<List<MonthlyScheduleCountModel>?> getMonthlyScheduleCounts({
    required int workplaceId,
    required String yearMonth,
    int months = 6,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/schedules/completed/monthly-count',
      queryParameters: {
        'baseMonth': yearMonth,
        'months': months,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    if (response.data is List) {
      return (response.data as List)
          .map((json) => MonthlyScheduleCountModel.fromJson(json))
          .toList();
    }
    return null;
  }

  /// 근무지 재구매 정보 조회하기
  Future<WorkplaceRepurchaseWithPreviousMonthResponse?> getWorkplaceRepurchase({
    required int workplaceId,
    required String yearMonth,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/repurchase',
      queryParameters: {
        'baseMonth': yearMonth,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    return WorkplaceRepurchaseWithPreviousMonthResponse.fromJson(response.data);
  }

  /// 근무지 신규 등록 정보 조회하기
  Future<WorkplaceNewRegistrationWithPreviousMonthResponse?>
      getWorkplaceNewRegistrations({
    required int workplaceId,
    required String yearMonth,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/new-registrations',
      queryParameters: {
        'baseMonth': yearMonth,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    return WorkplaceNewRegistrationWithPreviousMonthResponse.fromJson(
        response.data);
  }

  /// 월별 일지 작성률 조회하기
  Future<List<MonthlyRoutineRatioModel>?> getMonthlyRoutineRatio({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/schedules/routine-ratio',
      queryParameters: {
        'baseMonth': baseMonth,
        'months': months,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    if (response.data is List) {
      return (response.data as List)
          .map((json) => MonthlyRoutineRatioModel.fromJson(json))
          .toList();
    }
    return null;
  }

  /// 월별 재등록 횟수 조회하기
  Future<List<MonthlyRepurchaseCountModel>?> getMonthlyRepurchaseCount({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/repurchase/monthly-count',
      queryParameters: {
        'baseMonth': baseMonth,
        'months': months,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    if (response.data is List) {
      return (response.data as List)
          .map((json) => MonthlyRepurchaseCountModel.fromJson(json))
          .toList();
    }
    return null;
  }

  /// 월별 신규 등록 횟수 조회하기
  Future<List<MonthlyNewRegistrationCountModel>?>
      getMonthlyNewRegistrationCounts({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/new-registrations/monthly-count',
      queryParameters: {
        'baseMonth': baseMonth,
        'months': months,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    if (response.data is List) {
      return (response.data as List)
          .map((json) => MonthlyNewRegistrationCountModel.fromJson(json))
          .toList();
    }
    return null;
  }

  /// 월별 회원만족도 평균 조회하기
  Future<List<MonthlyScheduleReviewAverageModel>?>
      getMonthlyScheduleReviewAverage({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    Response<dynamic> response = await _dio.get(
      '/api/user/workplace/${workplaceId}/schedule-reviews/monthly-average',
      queryParameters: {
        'baseMonth': baseMonth,
        'months': months,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    if (response.data is List) {
      return (response.data as List)
          .map((json) => MonthlyScheduleReviewAverageModel.fromJson(json))
          .toList();
    }
    return null;
  }

  /// 일일 개인운동 기록 조회하기
  Future<IndividualWorkoutHistoriesResponse> getDailyWorkoutRecords({
    required String date,
    int? clientId,
  }) async {
    final response = await _dio.get(
      '/api/workout/date',
      queryParameters: {
        'date': date,
        if (clientId != null) 'client-id': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );

    // 실제 응답 구조에 맞게 파싱
    // 응답이 routineDto 래퍼 없이 직접 데이터가 올 수 있음
    final data = response.data as Map<String, dynamic>;
    final workoutResponses = (data['workoutResponses'] as List<dynamic>?) ?? [];

    // 각 workoutResponse를 RoutineDtoWrapperModel로 변환
    final wrappedResponses = workoutResponses.map((item) {
      final itemMap = item as Map<String, dynamic>;

      // routineDto가 있으면 그대로 사용, 없으면 직접 RoutineHistoryModel 생성
      if (itemMap.containsKey('routineDto')) {
        return RoutineDtoWrapperModel.fromJson(itemMap);
      } else {
        // 실제 응답 구조에 맞게 직접 파싱
        final routinesExercisesList =
            (itemMap['routinesExercises'] as List<dynamic>?) ?? [];
        final routinesExercises = routinesExercisesList.map((e) {
          final exerciseMap = e as Map<String, dynamic>;
          return {
            'exerciseId': exerciseMap['exerciseId'],
            'routinesExerciseName': exerciseMap['exerciseName'] ?? '',
            'exerciseType': exerciseMap['exerciseType'] ?? '',
            'exerciseParts': exerciseMap['exercisePart'] ?? '',
            'exerciseSets': exerciseMap['exerciseSets'] ?? [],
            'routineImagesList': exerciseMap['imageUrls'] ?? [],
            'routinesImagesListWithType':
                exerciseMap['routinesImagesListWithType'] ?? [],
            'routinesExerciseMemo': exerciseMap['routinesExerciseMemo'] ?? '',
            'performMemo': exerciseMap['performMemo'] ?? '',
            'motion': exerciseMap['motion'] ?? '',
          };
        }).toList();

        // exercisePartsList 추출
        final exercisePartsList = routinesExercises
            .map((e) => e['exerciseParts'] as String)
            .where((part) => part.isNotEmpty)
            .toSet()
            .toList();

        final routineDto = RoutineHistoryModel(
          routineId: itemMap['routineId'] ?? -1,
          routineName: itemMap['title'] ?? itemMap['routineName'] ?? '',
          clientMemo: itemMap['clientMemo'] ?? '',
          routineStatus: itemMap['routineStatus'] ?? '',
          routinesExerciseDtos: routinesExercises
              .map((e) => RoutineHistoryExerciseModel.fromJson(e))
              .toList(),
          exercisePartsList: exercisePartsList,
          routineNumberOfExercise: routinesExercises.length,
        );

        return RoutineDtoWrapperModel(
          routineDto,
          null,
        );
      }
    }).toList();

    return IndividualWorkoutHistoriesResponse(
      workoutResponses: wrappedResponses,
      lastWorkoutId: data['lastWorkoutId'] as int?,
      hasNext: data['hasNext'] ?? false,
    );
  }

  /// 일일 식단 기록 조회하기
  Future<Map<String, dynamic>> getDailyDietList({
    required String date,
    int? clientId,
  }) async {
    final response = await _dio.get(
      '/api/diet',
      queryParameters: {
        'date': date,
        if (clientId != null) 'client-id': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return response.data as Map<String, dynamic>;
  }

  /// 일일 수업 기록 조회하기
  Future<ClassHistoriesResponse> getDailyClassRecords({
    required String classDate,
    int? clientId,
  }) async {
    final response = await _dio.get(
      '/api/matching/class-info',
      queryParameters: {
        'class-date': classDate,
        if (clientId != null) 'client-id': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ClassHistoriesResponse.fromJson(response.data);
  }

  /// 체성분분석 조회하기
  Future<ResponseBodyCompositionAnalysis> getBodyCompositionAnalysis({
    int? clientId,
    int? count,
  }) async {
    final response = await _dio.get(
      '/api/user/in-body/analysis',
      queryParameters: {
        if (clientId != null) 'clientId': clientId,
        if (count != null) 'count': count,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ResponseBodyCompositionAnalysis.fromJson(response.data);
  }

  Future<MonthlyDietListModel> getMonthlyDiets({
    required int year,
    required int month,
    int? clientId,
  }) async {
    final response = await _dio.get(
      '/api/diet/list',
      queryParameters: {
        'year': year,
        'month': month,
        if (clientId != null) 'client-id': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return MonthlyDietListModel.fromJson(response.data);
  }

  /// 식단 상세 조회하기
  Future<DietModel> getDietDetailById({
    required int dietId,
    int? clientId,
  }) async {
    final response = await _dio.get(
      '/api/diet/v2',
      queryParameters: {
        'diet-id': dietId,
        if (clientId != null) 'client-id': clientId,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return DietModel.fromJson(response.data);
  }

  /// 회원 수강권 리스트 조회하기
  Future<ResponseVoucherHistories> getVoucherHistories(
      int voucherMatchingId) async {
    final response = await _dio.get(
      '/api/matching/classInfo/history',
      queryParameters: {
        'voucherMatching': voucherMatchingId,
      },
    );
    return ResponseVoucherHistories.fromJson(response.data);
  }

  Future<ResponseClientVoucherList> getClientVoucherList({
    required int clientId,
    required bool active,
  }) async {
    final response = await _dio.get(
      '/api/voucher/list/client',
      queryParameters: {
        'client': clientId,
        'active': active,
      },
      options: Options(
        extra: {'requiresToken': true},
      ),
    );
    return ResponseClientVoucherList.fromJson(response.data);
  }
}
