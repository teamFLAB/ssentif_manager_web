import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';

class ScheduleState {
  final DateTime todayDate;
  final DateTime selectedDate;
  final WorkPlaceEntity? workPlace;
  final List<UserEntity> coaches;
  final List<CalendarScheduleEntity> monthlySchedules;
  final List<CalendarScheduleEntity> filteredMonthlySchedules;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  final DateTime selectedMonth;
  final String searchFilter;

  const ScheduleState({
    required this.todayDate,
    required this.selectedDate,
    required this.workPlace,
    required this.coaches,
    this.monthlySchedules = const [],
    this.filteredMonthlySchedules = const [],
    this.selectedDateSchedules = const [],
    required this.selectedMonth,
    this.searchFilter = '',
  });

  ScheduleState copyWith({
    DateTime? todayDate,
    DateTime? selectedDate,
    WorkPlaceEntity? workPlace,
    List<UserEntity>? coaches,
    List<CalendarScheduleEntity>? monthlySchedules,
    List<CalendarScheduleEntity>? filteredMonthlySchedules,
    List<CalendarScheduleEntity>? selectedDateSchedules,
    DateTime? selectedMonth,
    String? searchFilter,
  }) {
    return ScheduleState(
      todayDate: todayDate ?? this.todayDate,
      selectedDate: selectedDate ?? this.selectedDate,
      workPlace: workPlace,
      coaches: coaches ?? this.coaches,
      monthlySchedules: monthlySchedules ?? this.monthlySchedules,
      filteredMonthlySchedules :filteredMonthlySchedules ?? this.filteredMonthlySchedules,
      selectedDateSchedules: selectedDateSchedules ?? this.selectedDateSchedules,
      selectedMonth: selectedMonth ?? this.selectedMonth,
      searchFilter: searchFilter ?? this.searchFilter,
    );
  }
}
