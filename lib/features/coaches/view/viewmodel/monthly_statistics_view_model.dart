import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import '../intent/monthly_statistics_intent.dart';
import '../state/monthly_statistics_state.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_trainer_schedules_usecase.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:intl/intl.dart';

final monthlyStatisticsViewModelProvider = StateNotifierProvider.autoDispose
    .family<MonthlyStatisticsViewModel, MonthlyStatisticsState,
        ({UserEntity? selectedCoach, DateTime selectedMonth})>((ref, params) {
  final getTrainerSchedulesUseCase =
      ref.read(getTrainerSchedulesUseCaseProvider);
  return MonthlyStatisticsViewModel(
    getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
    selectedCoach: params.selectedCoach,
    selectedMonth: params.selectedMonth,
  );
});

class MonthlyStatisticsViewModel extends StateNotifier<MonthlyStatisticsState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;

  MonthlyStatisticsViewModel({
    required this.getTrainerSchedulesUseCase,
    UserEntity? selectedCoach,
    required DateTime selectedMonth,
  }) : super(MonthlyStatisticsState(
          selectedMonth: selectedMonth,
          totalClassCount: 0,
          attendanceCount: 0,
          reservationCount: 0,
          reservationRequestCount: 0,
          etcCount: 0,
          dailyScheduleCounts: {},
          selectedCoach: selectedCoach,
        )) {
    _loadMonthlySchedulesForCoach();
  }

  void _loadDummyData() {
    // 더미 일정 갯수 데이터 (1일: 3개, 5일: 2개, 15일: 5개, 20일: 1개)
    final Map<int, int> dummyDailyCounts = {
      1: 3,
      5: 2,
      15: 5,
      20: 1,
    };

    state = state.copyWith(
      totalClassCount: 45,
      attendanceCount: 32,
      reservationCount: 13,
      reservationRequestCount: 8,
      etcCount: 5,
      dailyScheduleCounts: dummyDailyCounts,
    );
  }

  Future<void> _loadMonthlySchedulesForCoach() async {
    final coach = state.selectedCoach;
    final month = state.selectedMonth;
    if (coach == null) return;

    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    final dateFormat = DateFormat('yyyy-MM-dd');

    final response = await getTrainerSchedulesUseCase(
      trainerId: coach.userId,
      trainerName: coach.userName,
      startDate: dateFormat.format(firstDay),
      endDate: dateFormat.format(lastDay),
    );

    if (response.data != null) {
      final schedules = response.data!.schedules;
      // 날짜별 일정 갯수 집계
      final Map<int, int> dailyCounts = {};
      for (final schedule in schedules) {
        final start = schedule.startTime;
        if (start != null &&
            start.month == month.month &&
            start.year == month.year) {
          dailyCounts[start.day] = (dailyCounts[start.day] ?? 0) + 1;
        }
      }
      state = state.copyWith(
          dailyScheduleCounts: dailyCounts,
          reservationCount:
              response.data!.scheduleStatus.reservationCompleteCount,
          reservationRequestCount:
              response.data!.scheduleStatus.reservationWaitCount,
          attendanceCount: response.data!.scheduleStatus.classCompleteCount,
          etcCount: schedules
              .where((e) =>
                  e.scheduleStatusType == ScheduleStatusType.trainerEtcSchedule)
              .length);
    }
  }

  void handleIntent(MonthlyStatisticsIntent intent) {
    intent.when(
      clickThisMonth: () {
        _updateSelectedMonth(DateTime.now());
      },
      clickPreviousMonth: () {
        final currentMonth = state.selectedMonth;
        final previousMonth =
            DateTime(currentMonth.year, currentMonth.month - 1, 1);
        _updateSelectedMonth(previousMonth);
      },
      clickNextMonth: () {
        final currentMonth = state.selectedMonth;
        final nextMonth =
            DateTime(currentMonth.year, currentMonth.month + 1, 1);
        _updateSelectedMonth(nextMonth);
      },
    );
  }

  void _updateSelectedMonth(DateTime month) {
    state = state.copyWith(selectedMonth: month);
    _loadMonthlySchedulesForCoach();
  }
}
