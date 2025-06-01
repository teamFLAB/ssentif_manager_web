
import 'package:freezed_annotation/freezed_annotation.dart';

import 'calendar_schedule_entity.dart';

part 'calendar_entity.freezed.dart';

@freezed
class CalendarEntity with _$CalendarEntity {
  factory CalendarEntity({
    @Default(ScheduleStatusEntity()) ScheduleStatusEntity scheduleStatus,
    @Default([]) List<CalendarScheduleEntity> schedules
  }) = _CalendarEntity;
}

@freezed
class ScheduleStatusEntity with _$ScheduleStatusEntity {
  const factory ScheduleStatusEntity({
    @Default(0) int classCompleteCount,
    @Default(0) int reservationWaitCount,
    @Default(0) int reservationCompleteCount,
  }) = _ScheduleStatusEntity;
}