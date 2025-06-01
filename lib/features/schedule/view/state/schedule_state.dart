import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';

class ScheduleState {
  final DateTime todayDate;
  final DateTime selectedDate;
  final WorkPlaceEntity? workPlace;
  final List<UserEntity> coaches;
  final List<CalendarScheduleEntity> monthlySchedules;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  final DateTime selectedMonth;

  const ScheduleState({
    required this.todayDate,
    required this.selectedDate,
    required this.workPlace,
    required this.coaches,
    this.monthlySchedules = const [],
    this.selectedDateSchedules = const [],
    required this.selectedMonth,
  });

  ScheduleState copyWith({
    DateTime? todayDate,
    DateTime? selectedDate,
    WorkPlaceEntity? workPlace,
    List<UserEntity>? coaches,
    List<CalendarScheduleEntity>? monthlySchedules,
    List<CalendarScheduleEntity>? selectedDateSchedules,
    DateTime? selectedMonth,
  }) {
    return ScheduleState(
      todayDate: todayDate ?? this.todayDate,
      selectedDate: selectedDate ?? this.selectedDate,
      workPlace: workPlace,
      coaches: coaches ?? this.coaches,
      monthlySchedules: monthlySchedules ?? this.monthlySchedules,
      selectedDateSchedules:
          selectedDateSchedules ?? this.selectedDateSchedules,
      selectedMonth: selectedMonth ?? this.selectedMonth,
    );
  }
}
