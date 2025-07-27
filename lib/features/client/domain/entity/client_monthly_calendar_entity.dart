import 'package:freezed_annotation/freezed_annotation.dart';

import 'calendar_event_entity.dart';

part 'client_monthly_calendar_entity.freezed.dart';

@freezed
class ClientMonthlyCalendarEntity with _$ClientMonthlyCalendarEntity {
  const factory ClientMonthlyCalendarEntity({
    @Default(0) int workoutCounts,
    @Default(0) int classReservationCompleteCounts,
    @Default(0) int classCompleteCounts,
    @Default(0) int classReservationWaitCounts,
    @Default(0) int dietCounts,
    @Default([]) List<CalendarEventEntity> events
  }) = _ClientMonthlyCalendarEntity;
}
