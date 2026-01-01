import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_schedule_count_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/trainer_with_schedule_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_routine_ratio_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_repurchase_count_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_schedule_review_average_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/monthly_new_registration_count_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_repurchase_with_previous_month_response.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_new_registration_with_previous_month_response.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_schedule_reviews_with_previous_month_response.dart';

abstract class DashboardRepository {
  Future<ApiStatusEntity<TrainerSchedulesWithPrevMonthEntity>> getCompletedSchedules({
    required int workplaceId,
    required String yearMonth,
  });

  Future<ApiStatusEntity<List<MonthlyScheduleCountEntity>>> getMonthlyScheduleCounts({
    required int workplaceId,
    required String yearMonth,
    int months = 6,
  });

  Future<ApiStatusEntity<WorkplaceRepurchaseWithPreviousMonthResponse>> getWorkplaceRepurchase({
    required int workplaceId,
    required String yearMonth,
  });

  Future<ApiStatusEntity<WorkplaceNewRegistrationWithPreviousMonthResponse>>
      getWorkplaceNewRegistrations({
    required int workplaceId,
    required String yearMonth,
  });

  Future<ApiStatusEntity<List<MonthlyRoutineRatioEntity>>> getMonthlyRoutineRatio({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  });

  Future<ApiStatusEntity<List<MonthlyRepurchaseCountEntity>>> getMonthlyRepurchaseCount({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  });

  Future<ApiStatusEntity<List<MonthlyNewRegistrationCountEntity>>>
      getMonthlyNewRegistrationCounts({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  });

  Future<ApiStatusEntity<TrainerScheduleReviewsWithPreviousMonthResponse>> getScheduleReviews({
    required int workplaceId,
    required String yearMonth,
  });

  Future<ApiStatusEntity<List<MonthlyScheduleReviewAverageEntity>>> getMonthlyScheduleReviewAverage({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  });
}

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  final trainerWithScheduleMapper = ref.read(trainerWithScheduleMapperProvider);
  final monthlyScheduleCountMapper = ref.read(monthlyScheduleCountMapperProvider);
  final monthlyRoutineRatioMapper = ref.read(monthlyRoutineRatioMapperProvider);
  final monthlyRepurchaseCountMapper = ref.read(monthlyRepurchaseCountMapperProvider);
  final monthlyScheduleReviewAverageMapper = ref.read(monthlyScheduleReviewAverageMapperProvider);
  final monthlyNewRegistrationCountMapper =
      ref.read(monthlyNewRegistrationCountMapperProvider);
  return DashboardRepositoryImpl(
    apiService: apiService,
    trainerWithScheduleMapper: trainerWithScheduleMapper,
    monthlyScheduleCountMapper: monthlyScheduleCountMapper,
    monthlyRoutineRatioMapper: monthlyRoutineRatioMapper,
    monthlyRepurchaseCountMapper: monthlyRepurchaseCountMapper,
    monthlyScheduleReviewAverageMapper: monthlyScheduleReviewAverageMapper,
    monthlyNewRegistrationCountMapper: monthlyNewRegistrationCountMapper,
  );
});

