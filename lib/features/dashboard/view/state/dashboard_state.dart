import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import '../../../../shared/data/model/trainer_repurchase_info_dto.dart';
import '../../../../shared/data/model/trainer_new_registration_info_dto.dart';
import '../../../../features/dashboard/data/model/trainer_with_schedule_reviews_response.dart';
import 'stat_moms.dart';
import 'stat_values.dart';

class DashboardState {
  final DateTime selectedMonth;
  final StatValues statValues;
  final StatMoms statMoms;

  // 선택된 월의 트레이너별 데이터
  final List<TrainerRepurchaseInfoDto> repurchaseList;
  final List<TrainerNewRegistrationInfoDto> newRegistrationList;
  final List<TrainerWithScheduleEntity> completedSchedules;
  final List<TrainerWithScheduleEntity> previousMonthSchedules;
  final List<TrainerWithScheduleReviewsResponse> currentMonthReviews;

  // 월별 차트 데이터
  final List<MonthlyScheduleCountEntity> monthlyScheduleCounts;
  final List<MonthlyRoutineRatioEntity> monthlyRoutineRatios;
  final List<MonthlyRepurchaseCountEntity> monthlyRepurchaseCounts;
  final List<MonthlyScheduleReviewAverageEntity> monthlyScheduleReviewAverages;
  final List<MonthlyNewRegistrationCountEntity> monthlyNewRegistrationCounts;

  DashboardState({
    required this.selectedMonth,
    StatValues? statValues,
    StatMoms? statMoms,
    List<TrainerRepurchaseInfoDto>? repurchaseList,
    List<TrainerNewRegistrationInfoDto>? newRegistrationList,
    List<TrainerWithScheduleEntity>? completedSchedules,
    List<TrainerWithScheduleEntity>? previousMonthSchedules,
    List<TrainerWithScheduleReviewsResponse>? currentMonthReviews,
    List<MonthlyScheduleCountEntity>? monthlyScheduleCounts,
    List<MonthlyRoutineRatioEntity>? monthlyRoutineRatios,
    List<MonthlyRepurchaseCountEntity>? monthlyRepurchaseCounts,
    List<MonthlyScheduleReviewAverageEntity>? monthlyScheduleReviewAverages,
    List<MonthlyNewRegistrationCountEntity>? monthlyNewRegistrationCounts,
  })  : statValues = statValues ?? const StatValues(),
        statMoms = statMoms ?? const StatMoms(),
        repurchaseList = repurchaseList ?? [],
        newRegistrationList = newRegistrationList ?? [],
        completedSchedules = completedSchedules ?? [],
        previousMonthSchedules = previousMonthSchedules ?? [],
        currentMonthReviews = currentMonthReviews ?? [],
        monthlyScheduleCounts = monthlyScheduleCounts ?? [],
        monthlyRoutineRatios = monthlyRoutineRatios ?? [],
        monthlyRepurchaseCounts = monthlyRepurchaseCounts ?? [],
        monthlyScheduleReviewAverages = monthlyScheduleReviewAverages ?? [],
        monthlyNewRegistrationCounts = monthlyNewRegistrationCounts ?? [];

  DashboardState copyWith({
    DateTime? selectedMonth,
    StatValues? statValues,
    StatMoms? statMoms,
    List<TrainerRepurchaseInfoDto>? repurchaseList,
    List<TrainerNewRegistrationInfoDto>? newRegistrationList,
    List<TrainerWithScheduleEntity>? completedSchedules,
    List<TrainerWithScheduleEntity>? previousMonthSchedules,
    List<TrainerWithScheduleReviewsResponse>? currentMonthReviews,
    List<MonthlyScheduleCountEntity>? monthlyScheduleCounts,
    List<MonthlyRoutineRatioEntity>? monthlyRoutineRatios,
    List<MonthlyRepurchaseCountEntity>? monthlyRepurchaseCounts,
    List<MonthlyScheduleReviewAverageEntity>? monthlyScheduleReviewAverages,
    List<MonthlyNewRegistrationCountEntity>? monthlyNewRegistrationCounts,
  }) {
    return DashboardState(
      selectedMonth: selectedMonth ?? this.selectedMonth,
      statValues: statValues ?? this.statValues,
      statMoms: statMoms ?? this.statMoms,
      repurchaseList: repurchaseList ?? this.repurchaseList,
      newRegistrationList: newRegistrationList ?? this.newRegistrationList,
      completedSchedules: completedSchedules ?? this.completedSchedules,
      previousMonthSchedules:
          previousMonthSchedules ?? this.previousMonthSchedules,
      currentMonthReviews:
          currentMonthReviews ?? this.currentMonthReviews,
      monthlyScheduleCounts:
          monthlyScheduleCounts ?? this.monthlyScheduleCounts,
      monthlyRoutineRatios:
          monthlyRoutineRatios ?? this.monthlyRoutineRatios,
      monthlyRepurchaseCounts:
          monthlyRepurchaseCounts ?? this.monthlyRepurchaseCounts,
      monthlyScheduleReviewAverages:
          monthlyScheduleReviewAverages ?? this.monthlyScheduleReviewAverages,
      monthlyNewRegistrationCounts:
          monthlyNewRegistrationCounts ?? this.monthlyNewRegistrationCounts,
    );
  }
}
