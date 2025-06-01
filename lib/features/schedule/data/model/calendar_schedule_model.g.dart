// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarScheduleModelImpl _$$CalendarScheduleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarScheduleModelImpl(
      scheduleId: (json['scheduleId'] as num?)?.toInt() ?? -1,
      scheduleStatus: json['scheduleStatus'] as String? ?? "",
      title: json['title'] as String? ?? "",
      scheduleReservationStartDateTime:
          json['scheduleReservationStartDateTime'] as String? ?? "",
      scheduleReservationEndDateTime:
          json['scheduleReservationEndDateTime'] as String? ?? "",
      timeRequired: (json['timeRequired'] as num?)?.toInt() ?? 0,
      repeatName: json['repeatName'] as String? ?? "",
    );

Map<String, dynamic> _$$CalendarScheduleModelImplToJson(
        _$CalendarScheduleModelImpl instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'scheduleStatus': instance.scheduleStatus,
      'title': instance.title,
      'scheduleReservationStartDateTime':
          instance.scheduleReservationStartDateTime,
      'scheduleReservationEndDateTime': instance.scheduleReservationEndDateTime,
      'timeRequired': instance.timeRequired,
      'repeatName': instance.repeatName,
    };
