import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/calendar_type.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:intl/intl.dart';

class ScheduleState {
  final DateTime todayDate;
  final DateTime selectedDate;
  final WorkPlaceEntity? workPlace;
  final List<UserEntity> coaches;
  final List<CalendarScheduleEntity> monthlySchedules;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  final DateTime calendarDate;
  final List<UserEntity> selectedCoaches;
  final CalendarType selectedCalendarType;
  // 통계 값
  final int totalClassCount;
  final int attendanceCount;
  final int reservationCount;
  final int reservationRequestCount;
  final int etcCount;
  // 날짜별 스케줄 상태 정보
  final Map<DateTime, Map<ScheduleStatusType, int>> schedulesByDateAndStatus;
  final ScheduleDetailEntity? scheduleDetail;

  const ScheduleState({
    required this.todayDate,
    required this.selectedDate,
    required this.workPlace,
    required this.coaches,
    this.monthlySchedules = const [],
    this.selectedDateSchedules = const [],
    required this.calendarDate,
    this.selectedCoaches = const [],
    this.selectedCalendarType = CalendarType.daily,
    this.totalClassCount = 0,
    this.attendanceCount = 0,
    this.reservationCount = 0,
    this.reservationRequestCount = 0,
    this.etcCount = 0,
    this.schedulesByDateAndStatus = const {},
    this.scheduleDetail
  });

  ScheduleState copyWith({
    DateTime? todayDate,
    DateTime? selectedDate,
    WorkPlaceEntity? workPlace,
    List<UserEntity>? coaches,
    List<CalendarScheduleEntity>? monthlySchedules,
    List<CalendarScheduleEntity>? selectedDateSchedules,
    DateTime? calendarDate,
    String? searchFilter,
    int? totalClassCount,
    int? attendanceCount,
    int? reservationCount,
    int? reservationRequestCount,
    int? etcCount,
    List<UserEntity>? selectedCoaches,
    CalendarType? selectedCalendarType,
    Map<DateTime, Map<ScheduleStatusType, int>>? schedulesByDateAndStatus,
    ScheduleDetailEntity? scheduleDetail
  }) {
    return ScheduleState(
      todayDate: todayDate ?? this.todayDate,
      selectedDate: selectedDate ?? this.selectedDate,
      workPlace: workPlace,
      coaches: coaches ?? this.coaches,
      monthlySchedules: monthlySchedules ?? this.monthlySchedules,
      selectedDateSchedules:
          selectedDateSchedules ?? this.selectedDateSchedules,
      calendarDate: calendarDate ?? this.calendarDate,
      selectedCoaches: selectedCoaches ?? this.selectedCoaches,
      selectedCalendarType: selectedCalendarType ?? this.selectedCalendarType,
      totalClassCount: totalClassCount ?? this.totalClassCount,
      attendanceCount: attendanceCount ?? this.attendanceCount,
      reservationCount: reservationCount ?? this.reservationCount,
      reservationRequestCount:
          reservationRequestCount ?? this.reservationRequestCount,
      etcCount: etcCount ?? this.etcCount,
      schedulesByDateAndStatus:
          schedulesByDateAndStatus ?? this.schedulesByDateAndStatus,
      scheduleDetail: scheduleDetail
    );
  }

  String getMonthlyFormatCalendar() {
    return DateFormat('yyyy년 MM월').format(calendarDate);
  }

  String getDailyFormatCalendar() {
    return DateFormat('yyyy년 MM월 dd일').format(calendarDate);
  }
}
