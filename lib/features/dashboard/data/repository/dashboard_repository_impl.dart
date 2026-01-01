import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_schedule_count_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/trainer_with_schedule_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_repurchase_with_previous_month_response.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_routine_ratio_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_repurchase_count_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_schedule_review_average_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_schedule_reviews_with_previous_month_response.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_new_registration_with_previous_month_response.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_new_registration_count_mapper.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  final ApiService apiService;
  final TrainerWithScheduleMapper trainerWithScheduleMapper;
  final MonthlyScheduleCountMapper monthlyScheduleCountMapper;
  final MonthlyRoutineRatioMapper monthlyRoutineRatioMapper;
  final MonthlyRepurchaseCountMapper monthlyRepurchaseCountMapper;
  final MonthlyScheduleReviewAverageMapper monthlyScheduleReviewAverageMapper;
  final MonthlyNewRegistrationCountMapper monthlyNewRegistrationCountMapper;

  DashboardRepositoryImpl({
    required this.apiService,
    required this.trainerWithScheduleMapper,
    required this.monthlyScheduleCountMapper,
    required this.monthlyRoutineRatioMapper,
    required this.monthlyRepurchaseCountMapper,
    required this.monthlyScheduleReviewAverageMapper,
    required this.monthlyNewRegistrationCountMapper,
  });

  @override
  Future<ApiStatusEntity<TrainerSchedulesWithPrevMonthEntity>>
      getCompletedSchedules({
    required int workplaceId,
    required String yearMonth,
  }) async {
    try {
      final response = await apiService.getCompletedSchedules(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
      );

      return ApiStatusEntity(
          data: TrainerSchedulesWithPrevMonthEntity(
        currentMonth: response?.currentMonth.map((schedule) {
              return trainerWithScheduleMapper.map(schedule);
            }).toList() ??
            [],
        prevMonth: response?.previousMonth.map((schedule) {
              return trainerWithScheduleMapper.map(schedule);
            }).toList() ??
            [],
      ));
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<MonthlyScheduleCountEntity>>>
      getMonthlyScheduleCounts({
    required int workplaceId,
    required String yearMonth,
    int months = 6,
  }) async {
    try {
      final response = await apiService.getMonthlyScheduleCounts(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
        months: months,
      );

      return ApiStatusEntity(
        data: response
                ?.map((model) => monthlyScheduleCountMapper.map(model))
                .toList() ??
            [],
      );
    } catch (e) {
      print("===> ${e}");
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<WorkplaceRepurchaseWithPreviousMonthResponse>> getWorkplaceRepurchase({
    required int workplaceId,
    required String yearMonth,
  }) async {
    try {
      final response = await apiService.getWorkplaceRepurchase(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
      );

      return ApiStatusEntity(data: response);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<WorkplaceNewRegistrationWithPreviousMonthResponse>>
      getWorkplaceNewRegistrations({
    required int workplaceId,
    required String yearMonth,
  }) async {
    try {
      final response = await apiService.getWorkplaceNewRegistrations(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
      );

      return ApiStatusEntity(data: response);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<MonthlyRoutineRatioEntity>>> getMonthlyRoutineRatio({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    try {
      final response = await apiService.getMonthlyRoutineRatio(
        workplaceId: workplaceId,
        baseMonth: baseMonth,
        months: months,
      );

      return ApiStatusEntity(
        data: response
                ?.map((model) => monthlyRoutineRatioMapper.map(model))
                .toList() ??
            [],
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<MonthlyRepurchaseCountEntity>>> getMonthlyRepurchaseCount({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    try {
      final response = await apiService.getMonthlyRepurchaseCount(
        workplaceId: workplaceId,
        baseMonth: baseMonth,
        months: months,
      );

      return ApiStatusEntity(
        data: response
                ?.map((model) => monthlyRepurchaseCountMapper.map(model))
                .toList() ??
            [],
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<MonthlyNewRegistrationCountEntity>>>
      getMonthlyNewRegistrationCounts({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    try {
      final response = await apiService.getMonthlyNewRegistrationCounts(
        workplaceId: workplaceId,
        baseMonth: baseMonth,
        months: months,
      );

      return ApiStatusEntity(
        data: response
                ?.map(
                    (model) => monthlyNewRegistrationCountMapper.map(model))
                .toList() ??
            [],
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<TrainerScheduleReviewsWithPreviousMonthResponse>> getScheduleReviews({
    required int workplaceId,
    required String yearMonth,
  }) async {
    try {
      final response = await apiService.getScheduleReviews(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
      );

      return ApiStatusEntity(data: response ?? const TrainerScheduleReviewsWithPreviousMonthResponse());
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<MonthlyScheduleReviewAverageEntity>>> getMonthlyScheduleReviewAverage({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) async {
    try {
      final response = await apiService.getMonthlyScheduleReviewAverage(
        workplaceId: workplaceId,
        baseMonth: baseMonth,
        months: months,
      );

      return ApiStatusEntity(
        data: response
                ?.map((model) => monthlyScheduleReviewAverageMapper.map(model))
                .toList() ??
            [],
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}
