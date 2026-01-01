// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_schedule_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyScheduleCountModelImpl _$$MonthlyScheduleCountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyScheduleCountModelImpl(
      date: json['date'] as String,
      scheduleCount: (json['scheduleCount'] as num).toInt(),
    );

Map<String, dynamic> _$$MonthlyScheduleCountModelImplToJson(
        _$MonthlyScheduleCountModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'scheduleCount': instance.scheduleCount,
    };
