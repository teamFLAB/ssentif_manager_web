

import 'package:freezed_annotation/freezed_annotation.dart';

import '../enumtype/schedule_status_type.dart';

part 'calendar_schedule_entity.freezed.dart';

@freezed
class CalendarScheduleEntity with _$CalendarScheduleEntity {
  factory CalendarScheduleEntity({
    @Default("") String notes,
    @Default("") String trainerName,
    @Default(-1) int scheduleId,
    @Default("") String scheduleName,
    @Default(null) DateTime? startTime,
    @Default(null) DateTime? endTime,
    @Default(0) int runningTime,
    @Default(null) ScheduleStatusType? scheduleStatusType
  }) = _CalendarScheduleEntity;
}