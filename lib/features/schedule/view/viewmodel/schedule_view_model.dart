import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_trainer_schedules_usecase.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';

import '../state/schedule_state.dart';

final scheduleViewModelProvider = StateNotifierProvider.autoDispose
    .family<ScheduleViewModel, ScheduleState, List<UserEntity>>((ref, coaches) {
  final getTrainerSchedulesUseCase =
      ref.read(getTrainerSchedulesUseCaseProvider);
  final now = DateTime.now();
  final firstDayOfMonth = DateTime(now.year, now.month, 1);
  return ScheduleViewModel(
      getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
      initialState: ScheduleState(
          todayDate: now,
          selectedDate: now,
          workPlace: null,
          coaches: coaches,
          selectedMonth: firstDayOfMonth));
});

class ScheduleViewModel extends StateNotifier<ScheduleState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;
  final ScheduleState initialState;

  ScheduleViewModel(
      {required this.getTrainerSchedulesUseCase, required this.initialState})
      : super(initialState) {
    _getCachedInfo();
  }

  void setSelectedDate(DateTime date) {
    state = state.copyWith(
      selectedDate: date,
      selectedDateSchedules: _filterBySelectedDate(
        state.monthlySchedules,
        date,
      ),
    );
  }

  DateTime setSelectedMonth(int offset) {
    // offset: 1(다음달), -1(이전달)
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
            print("data_schedules : ${data.schedules}");
            state = state.copyWith(
              monthlySchedules: List.from(allSchedules),
              selectedDateSchedules: _filterBySelectedDate(
                List.from(allSchedules),
                state.selectedDate,
              ),
            );
          }
        },
        onError: (errCode, errMsg) {
          print("=======> err ==> ${errMsg}");
          // 에러 처리 필요시 추가
        },
      );
    }
  }

  List<CalendarScheduleEntity> _filterBySelectedDate(
      List<CalendarScheduleEntity> schedules, DateTime selectedDate) {
    return schedules
        .where((s) =>
            s.startTime != null &&
            s.startTime!.year == selectedDate.year &&
            s.startTime!.month == selectedDate.month &&
            s.startTime!.day == selectedDate.day)
        .toList();
  }
}
