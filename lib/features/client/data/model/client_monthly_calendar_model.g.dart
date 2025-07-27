// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_monthly_calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientMonthlyCalendarModelImpl _$$ClientMonthlyCalendarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientMonthlyCalendarModelImpl(
      calendarCountResponse: json['calendarCountResponse'] == null
          ? const CalendarCountResponse()
          : CalendarCountResponse.fromJson(
              json['calendarCountResponse'] as Map<String, dynamic>),
      calendarDaysV2Responses: (json['calendarDaysV2Responses']
                  as List<dynamic>?)
              ?.map((e) =>
                  ClientCalendarDayModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ClientMonthlyCalendarModelImplToJson(
        _$ClientMonthlyCalendarModelImpl instance) =>
    <String, dynamic>{
      'calendarCountResponse': instance.calendarCountResponse,
      'calendarDaysV2Responses': instance.calendarDaysV2Responses,
    };

_$CalendarCountResponseImpl _$$CalendarCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarCountResponseImpl(
      workoutCounts: (json['workoutCounts'] as num?)?.toInt() ?? 0,
      scheduleCounts: (json['scheduleCounts'] as num?)?.toInt() ?? 0,
      dietCounts: (json['dietCounts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CalendarCountResponseImplToJson(
        _$CalendarCountResponseImpl instance) =>
    <String, dynamic>{
      'workoutCounts': instance.workoutCounts,
      'scheduleCounts': instance.scheduleCounts,
      'dietCounts': instance.dietCounts,
    };

_$ClientCalendarDayModelImpl _$$ClientCalendarDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientCalendarDayModelImpl(
      day: json['day'] as String? ?? "",
      workoutIds: (json['workoutIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      schedules: (json['schedules'] as List<dynamic>?)
              ?.map(
                  (e) => ScheduleEventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dietId: (json['dietId'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$ClientCalendarDayModelImplToJson(
        _$ClientCalendarDayModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'workoutIds': instance.workoutIds,
      'schedules': instance.schedules,
      'dietId': instance.dietId,
    };

_$ScheduleEventModelImpl _$$ScheduleEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleEventModelImpl(
      scheduleId: (json['scheduleId'] as num?)?.toInt() ?? -1,
      scheduleStatus: json['scheduleStatus'] as String? ?? "",
    );

Map<String, dynamic> _$$ScheduleEventModelImplToJson(
        _$ScheduleEventModelImpl instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'scheduleStatus': instance.scheduleStatus,
    };
