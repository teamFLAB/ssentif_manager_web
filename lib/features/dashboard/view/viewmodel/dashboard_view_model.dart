import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_completed_schedules_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_schedule_counts_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_workplace_repurchase_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_routine_ratio_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_repurchase_count_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_schedule_reviews_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_schedule_review_average_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_workplace_new_registration_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_new_registration_count_usecase.dart';
import '../state/dashboard_state.dart';
import '../state/stat_moms.dart';
import '../state/stat_values.dart';

final dashboardViewModelProvider =
    StateNotifierProvider<DashboardViewModel, DashboardState>((ref) {
  final getCompletedSchedulesUseCase =
      ref.read(getCompletedSchedulesUseCaseProvider);
  final getMonthlyScheduleCountsUseCase =
      ref.read(getMonthlyScheduleCountsUseCaseProvider);
  final getWorkplaceRepurchaseUseCase =
      ref.read(getWorkplaceRepurchaseUseCaseProvider);
  final getWorkplaceNewRegistrationUseCase =
      ref.read(getWorkplaceNewRegistrationUseCaseProvider);
  final getMonthlyRoutineRatioUseCase =
      ref.read(getMonthlyRoutineRatioUseCaseProvider);
  final getMonthlyRepurchaseCountUseCase =
      ref.read(getMonthlyRepurchaseCountUseCaseProvider);
  final getMonthlyNewRegistrationCountUseCase =
      ref.read(getMonthlyNewRegistrationCountUseCaseProvider);
  final getScheduleReviewsUseCase = ref.read(getScheduleReviewsUseCaseProvider);
  final getMonthlyScheduleReviewAverageUseCase =
      ref.read(getMonthlyScheduleReviewAverageUseCaseProvider);
  return DashboardViewModel(
    getCompletedSchedulesUseCase: getCompletedSchedulesUseCase,
    getMonthlyScheduleCountsUseCase: getMonthlyScheduleCountsUseCase,
    getWorkplaceRepurchaseUseCase: getWorkplaceRepurchaseUseCase,
    getWorkplaceNewRegistrationUseCase: getWorkplaceNewRegistrationUseCase,
    getMonthlyRoutineRatioUseCase: getMonthlyRoutineRatioUseCase,
    getMonthlyRepurchaseCountUseCase: getMonthlyRepurchaseCountUseCase,
    getMonthlyNewRegistrationCountUseCase:
        getMonthlyNewRegistrationCountUseCase,
    getScheduleReviewsUseCase: getScheduleReviewsUseCase,
    getMonthlyScheduleReviewAverageUseCase:
        getMonthlyScheduleReviewAverageUseCase,
  );
});

class DashboardViewModel extends StateNotifier<DashboardState> {
  final GetCompletedSchedulesUseCase getCompletedSchedulesUseCase;
  final GetMonthlyScheduleCountsUseCase getMonthlyScheduleCountsUseCase;
  final GetWorkplaceRepurchaseUseCase getWorkplaceRepurchaseUseCase;
  final GetWorkplaceNewRegistrationUseCase getWorkplaceNewRegistrationUseCase;
  final GetMonthlyRoutineRatioUseCase getMonthlyRoutineRatioUseCase;
  final GetMonthlyRepurchaseCountUseCase getMonthlyRepurchaseCountUseCase;
  final GetMonthlyNewRegistrationCountUseCase
      getMonthlyNewRegistrationCountUseCase;
  final GetScheduleReviewsUseCase getScheduleReviewsUseCase;
  final GetMonthlyScheduleReviewAverageUseCase
      getMonthlyScheduleReviewAverageUseCase;

  DashboardViewModel({
    required this.getCompletedSchedulesUseCase,
    required this.getMonthlyScheduleCountsUseCase,
    required this.getWorkplaceRepurchaseUseCase,
    required this.getWorkplaceNewRegistrationUseCase,
    required this.getMonthlyRoutineRatioUseCase,
    required this.getMonthlyRepurchaseCountUseCase,
    required this.getMonthlyNewRegistrationCountUseCase,
    required this.getScheduleReviewsUseCase,
    required this.getMonthlyScheduleReviewAverageUseCase,
  }) : super(DashboardState(
          selectedMonth: DateTime.now(),
          statValues: const StatValues(),
          statMoms: const StatMoms(),
        )) {
    _loadCompletedSchedules();
    _loadMonthlyScheduleCounts();
    _loadWorkplaceRepurchase();
    _loadWorkplaceNewRegistrations();
    _loadMonthlyRoutineRatio();
    _loadMonthlyRepurchaseCount();
    _loadMonthlyNewRegistrationCount();
    _loadScheduleReviews();
    _loadMonthlyScheduleReviewAverage();
  }

  void _loadCompletedSchedules() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final yearMonth =
        DateFormat(Constants.yearMonthFormat).format(state.selectedMonth);

    final result = await getCompletedSchedulesUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: yearMonth,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          // 현재 달: 총 스케줄 수 계산 (모든 trainer의 모든 schedules의 합)
          final totalClassCount = data.currentMonth.fold<int>(
            0,
            (sum, trainerWithSchedule) =>
                sum + trainerWithSchedule.schedules.length,
          );

          // 현재 달: hasRoutine이 true인 스케줄 수 계산
          final hasRoutineCount = data.currentMonth.fold<int>(
            0,
            (sum, trainerWithSchedule) =>
                sum +
                trainerWithSchedule.schedules
                    .where((schedule) => schedule.hasRoutine)
                    .length,
          );

          // 현재 달: recordWritingRate 계산 (비율을 퍼센트로)
          final recordWritingRate = totalClassCount > 0
              ? (hasRoutineCount / totalClassCount * 100).toStringAsFixed(1)
              : '0.0';

          // 이전 달: 총 스케줄 수 계산 (모든 trainer의 모든 schedules의 합)
          final prevTotalClassCount = data.prevMonth.fold<int>(
            0,
            (sum, trainerWithSchedule) =>
                sum + trainerWithSchedule.schedules.length,
          );

          // 이전 달: hasRoutine이 true인 스케줄 수 계산
          final prevHasRoutineCount = data.prevMonth.fold<int>(
            0,
            (sum, trainerWithSchedule) =>
                sum +
                trainerWithSchedule.schedules
                    .where((schedule) => schedule.hasRoutine)
                    .length,
          );

          // 이전 달: recordWritingRate 계산 (비율을 퍼센트로)
          final prevRecordWritingRate = prevTotalClassCount > 0
              ? (prevHasRoutineCount / prevTotalClassCount * 100)
              : 0.0;

          // MoM(Month over Month) 백분율 변화 계산
          // ((현재값 - 이전값) / 이전값) * 100
          final totalClassCountMom = prevTotalClassCount > 0
              ? ((totalClassCount - prevTotalClassCount)).toDouble()
              : 0.0;

          final recordWritingRateMom = prevRecordWritingRate > 0
              ? ((double.parse(recordWritingRate) - prevRecordWritingRate) /
                  prevRecordWritingRate *
                  100)
              : 0.0;

          state = state.copyWith(
            completedSchedules: data.currentMonth,
            previousMonthSchedules: data.prevMonth,
            statValues: state.statValues.copyWith(
              totalClassCount: totalClassCount.toString(),
              recordWritingRate: recordWritingRate,
            ),
            statMoms: state.statMoms.copyWith(
              totalClassCount: totalClassCountMom,
              recordWritingRate: recordWritingRateMom,
            ),
          );
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void clickThisMonth() {
    state = state.copyWith(selectedMonth: DateTime.now());
    _loadCompletedSchedules();
    _loadMonthlyScheduleCounts();
    _loadWorkplaceRepurchase();
    _loadWorkplaceNewRegistrations();
    _loadMonthlyRoutineRatio();
    _loadMonthlyRepurchaseCount();
    _loadMonthlyNewRegistrationCount();
    _loadScheduleReviews();
    _loadMonthlyScheduleReviewAverage();
  }

  void clickPreviousMonth() {
    final currentMonth = state.selectedMonth;
    final previousMonth =
        DateTime(currentMonth.year, currentMonth.month - 1, 1);
    state = state.copyWith(selectedMonth: previousMonth);
    _loadCompletedSchedules();
    _loadMonthlyScheduleCounts();
    _loadWorkplaceRepurchase();
    _loadMonthlyRoutineRatio();
    _loadMonthlyRepurchaseCount();
    _loadWorkplaceNewRegistrations();
    _loadMonthlyNewRegistrationCount();
    _loadScheduleReviews();
    _loadMonthlyScheduleReviewAverage();
  }

  void clickNextMonth() {
    final currentMonth = state.selectedMonth;
    final nextMonth = DateTime(currentMonth.year, currentMonth.month + 1, 1);
    state = state.copyWith(selectedMonth: nextMonth);
    _loadCompletedSchedules();
    _loadMonthlyScheduleCounts();
    _loadWorkplaceRepurchase();
    _loadMonthlyRoutineRatio();
    _loadMonthlyRepurchaseCount();
    _loadWorkplaceNewRegistrations();
    _loadMonthlyNewRegistrationCount();
    _loadScheduleReviews();
    _loadMonthlyScheduleReviewAverage();
  }

  void _loadMonthlyScheduleCounts() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final result = await getMonthlyScheduleCountsUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: state.selectedMonth.formatYearMonthHyphen(),
      months: 6,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(monthlyScheduleCounts: data);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadWorkplaceRepurchase() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final yearMonth =
        DateFormat(Constants.yearMonthFormat).format(state.selectedMonth);

    final result = await getWorkplaceRepurchaseUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: yearMonth,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          // 현재 달 재등록 횟수
          final currentMonthCount = data.currentMonth.totalCount;

          // 이전 달 재등록 횟수
          final previousMonthCount = data.previousMonth.totalCount;

          // MoM(Month over Month) 변화 계산
          // ((현재값 - 이전값) / 이전값) * 100
          final reenrollmentRateMom = previousMonthCount > 0
              ? (currentMonthCount - previousMonthCount).toDouble()
              : 0.0;

          state = state.copyWith(
              statValues: state.statValues
                  .copyWith(reenrollmentRate: currentMonthCount.toString()),
              statMoms: state.statMoms
                  .copyWith(reenrollmentRate: reenrollmentRateMom),
              repurchaseList: data.currentMonth.trainers);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadMonthlyRoutineRatio() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final result = await getMonthlyRoutineRatioUseCase(
      workplaceId: workplaceInfo.id,
      baseMonth: state.selectedMonth.formatYearMonthHyphen(),
      months: 6,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(monthlyRoutineRatios: data);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadMonthlyRepurchaseCount() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final result = await getMonthlyRepurchaseCountUseCase(
      workplaceId: workplaceInfo.id,
      baseMonth: state.selectedMonth.formatYearMonthHyphen(),
      months: 6,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(monthlyRepurchaseCounts: data);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadWorkplaceNewRegistrations() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final yearMonth =
        DateFormat(Constants.yearMonthFormat).format(state.selectedMonth);

    final result = await getWorkplaceNewRegistrationUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: yearMonth,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          final currentMonthCount = data.currentMonth.totalCount;
          final previousMonthCount = data.previousMonth.totalCount;

          final newlyRegistrationMom = previousMonthCount > 0
              ? (currentMonthCount - previousMonthCount).toDouble()
              : 0.0;

          state = state.copyWith(
            statValues: state.statValues.copyWith(
              newlyRegistration: currentMonthCount.toString(),
            ),
            statMoms: state.statMoms.copyWith(
              newlyRegistration: newlyRegistrationMom,
            ),
            newRegistrationList: data.currentMonth.trainers,
          );
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadMonthlyNewRegistrationCount() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final result = await getMonthlyNewRegistrationCountUseCase(
      workplaceId: workplaceInfo.id,
      baseMonth: state.selectedMonth.formatYearMonthHyphen(),
      months: 6,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(
            monthlyNewRegistrationCounts: data,
          );
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadScheduleReviews() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final yearMonth =
        DateFormat(Constants.yearMonthFormat).format(state.selectedMonth);

    final result = await getScheduleReviewsUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: yearMonth,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          // 현재 달: 모든 리뷰의 satisfaction 평균 계산
          final currentMonthSatisfactions = data.currentMonth
              .expand((trainer) => trainer.scheduleReviews)
              .map((review) => review.satisfaction)
              .toList();

          final currentMonthAvg = currentMonthSatisfactions.isNotEmpty
              ? currentMonthSatisfactions.reduce((a, b) => a + b) /
                  currentMonthSatisfactions.length
              : 0.0;

          // 이전 달: 모든 리뷰의 satisfaction 평균 계산
          final previousMonthSatisfactions = data.previousMonth
              .expand((trainer) => trainer.scheduleReviews)
              .map((review) => review.satisfaction)
              .toList();

          final previousMonthAvg = previousMonthSatisfactions.isNotEmpty
              ? previousMonthSatisfactions.reduce((a, b) => a + b) /
                  previousMonthSatisfactions.length
              : 0.0;

          // MoM(Month over Month) 백분율 변화 계산
          // ((현재값 - 이전값) / 이전값) * 100
          final customerSatisfactionMom = previousMonthAvg >= 0
              ? ((currentMonthAvg - previousMonthAvg))
              : 0.0;

          // satisfaction을 퍼센트로 변환 (0.0-1.0 -> 0.0-100.0)
          final customerSatisfaction = (currentMonthAvg).toStringAsFixed(1);

          state = state.copyWith(
            statValues: state.statValues.copyWith(
              customerSatisfaction: customerSatisfaction,
            ),
            statMoms: state.statMoms.copyWith(
              customerSatisfaction: customerSatisfactionMom,
            ),
            currentMonthReviews: data.currentMonth,
          );
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void _loadMonthlyScheduleReviewAverage() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final result = await getMonthlyScheduleReviewAverageUseCase(
      workplaceId: workplaceInfo.id,
      baseMonth: state.selectedMonth.formatYearMonthHyphen(),
      months: 6,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(monthlyScheduleReviewAverages: data);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void logoutAndNavToLogin(Function() navToLogin) {
    StorageManager.clearAll();
    StorageManager.clearAllCookies();
    navToLogin();
  }
}
