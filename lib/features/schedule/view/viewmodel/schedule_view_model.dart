import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_trainer_schedules_usecase.dart';
import 'package:ssentif_manager_web/features/schedule/view/effect/schedule_effect.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/schedule_intent.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';

import '../state/schedule_state.dart';

final scheduleViewModelProvider = StateNotifierProvider.autoDispose
    .family<ScheduleViewModel, ScheduleState, List<UserEntity>>((ref, coaches) {
  final getTrainerSchedulesUseCase =
      ref.read(getTrainerSchedulesUseCaseProvider);
  final scheduleEffect = ref.read(scheduleEffectProvider.notifier);

  final now = DateTime.now();
  final firstDayOfMonth = DateTime(now.year, now.month, 1);
  return ScheduleViewModel(
      getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
      scheduleEffect: scheduleEffect,
      initialState: ScheduleState(
          todayDate: now,
          selectedDate: now,
          workPlace: null,
          coaches: coaches,
          selectedMonth: firstDayOfMonth));
});

class ScheduleViewModel extends StateNotifier<ScheduleState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;
  final StateController<ScheduleEffect?> scheduleEffect;
  final ScheduleState initialState;

  ScheduleViewModel({
    required this.getTrainerSchedulesUseCase,
    required this.initialState,
    required this.scheduleEffect
  }) : super(initialState) {
    _getCachedInfo();
  }

  void handleIntent(ScheduleIntent scheduleIntent) {
    scheduleIntent.when(
        clickScheduleItem: (int scheduleId) {

        },
        onRefreshScheduleList: () {

        },
        clickPreviousMonth: () {
          var newMonth = _updateSelectedMonth(-1);
          var selectedDate = state.selectedDate;
          final newSelectedDate = DateTime(selectedDate.year, selectedDate.month - 1, selectedDate.day);
          _updateSelectedDate(newSelectedDate);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(dateTime: newMonth, selectedDate: newSelectedDate);
        },
        clickNextMonth: () {
          var newMonth = _updateSelectedMonth(1);
          var selectedDate = state.selectedDate;
          final newSelectedDate = DateTime(selectedDate.year, selectedDate.month + 1, selectedDate.day);
          _updateSelectedDate(newSelectedDate);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(dateTime: newMonth, selectedDate: newSelectedDate);
        },
        clickTodayDate: () {
          final now = DateTime.now();
          var selectedMonth = state.selectedMonth;
          final monthDiff = (now.year - selectedMonth.year) * 12 + (now.month - selectedMonth.month);
          var newMonth = _updateSelectedMonth(monthDiff);
          _updateSelectedDate(now);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(dateTime: newMonth, selectedDate: now);
        },
        selectDate: (DateTime date) {
          _updateSelectedDate(date);
        },
        updateSearchFilter: (String filter) {
          _updateSearchFilter(filter);
        }
    );
  }

  void _updateSearchFilter(String searchFilter) {
    state = state.copyWith(searchFilter: searchFilter);
    var filteredSchedules = _filterBySearchQuery(
        state.monthlySchedules,
        searchFilter
    );

    var selectedDateSchedules = _filterBySelectedDate(
        state.monthlySchedules,
        state.selectedDate,
        searchFilter
    );

    state = state.copyWith(
        filteredMonthlySchedules: filteredSchedules,
        selectedDateSchedules: selectedDateSchedules
    );
    // scheduleEffect.state = ScheduleEffect.updateCalendarView(
    //     dateTime: state.selectedMonth,
    //     selectedDate: state.selectedDate
    // );
  }

  void _updateSelectedDate(DateTime date) {
    state = state.copyWith(
      selectedDate: date,
      selectedDateSchedules: _filterBySelectedDate(
          state.monthlySchedules,
          date,
          state.searchFilter
      ),
    );
  }

  DateTime _updateSelectedMonth(int offset) {
    final current = state.selectedMonth;
    final newMonth = DateTime(current.year, current.month + offset, 1);
    state = state.copyWith(selectedMonth: newMonth);
    _loadSchedules(state.coaches);
    return newMonth;
  }

  void _getCachedInfo() {
    var workplaceInfo = StorageManager.getWorkPlaceInfo();

    if (workplaceInfo != null) {
      final now = DateTime.now();
      final firstDayOfMonth = DateTime(now.year, now.month, 1);
      state = state.copyWith(
        workPlace: workplaceInfo,
        selectedMonth: firstDayOfMonth,
      );
      _loadSchedules(state.coaches);
    }
  }

  void _loadSchedules(List<UserEntity> coaches) async {
    final month = state.selectedMonth;
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);

    List<CalendarScheduleEntity> allSchedules = [];

    for (final coach in coaches) {
      final schedules = await getTrainerSchedulesUseCase(
        startDate: firstDay.formatYMD(),
        endDate: lastDay.formatYMD(),
        trainerId: coach.userId,
        trainerName: coach.userName
      );

      schedules.handleStatus(
        onSuccess: (data) {
          if (data != null) {
            allSchedules.addAll(data.schedules);
            state = state.copyWith(
              monthlySchedules: List.from(allSchedules),
              filteredMonthlySchedules: _filterBySearchQuery(
                  allSchedules,
                  state.searchFilter
              ),
              selectedDateSchedules: _filterBySelectedDate(
                List.from(allSchedules),
                state.selectedDate,
                state.searchFilter
              ),
            );
          }
        },
        onError: (errCode, errMsg) {
          // 에러 처리 필요시 추가
        },
      );
    }
  }

  List<CalendarScheduleEntity> _filterBySelectedDate(
      List<CalendarScheduleEntity> schedules,
      DateTime selectedDate,
      String searchQuery
  ) {
    var selectedDateSchedules = schedules
        .where((s) =>
            s.startTime != null &&
            s.startTime!.year == selectedDate.year &&
            s.startTime!.month == selectedDate.month &&
            s.startTime!.day == selectedDate.day)
        .toList();

    return _filterBySearchQuery(selectedDateSchedules, searchQuery);
  }

  List<CalendarScheduleEntity> _filterBySearchQuery(List<CalendarScheduleEntity> schedules, String filter) {
    if(filter.isNotEmpty) {
      return schedules.where((s) {
        return s.trainerName.contains(filter) ||
            s.scheduleName.contains(filter);
      }).toList();
    } else {
      return schedules;
    }
  }
}
