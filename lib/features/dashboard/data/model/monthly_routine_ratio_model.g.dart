// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_routine_ratio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyRoutineRatioModelImpl _$$MonthlyRoutineRatioModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyRoutineRatioModelImpl(
      date: json['date'] as String,
      totalScheduleCount: (json['totalScheduleCount'] as num).toInt(),
      routineScheduleCount: (json['routineScheduleCount'] as num).toInt(),
      ratio: (json['ratio'] as num).toDouble(),
    );

Map<String, dynamic> _$$MonthlyRoutineRatioModelImplToJson(
        _$MonthlyRoutineRatioModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'totalScheduleCount': instance.totalScheduleCount,
      'routineScheduleCount': instance.routineScheduleCount,
      'ratio': instance.ratio,
    };
