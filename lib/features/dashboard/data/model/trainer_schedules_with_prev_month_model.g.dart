// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_schedules_with_prev_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerSchedulesWithPrevMonthImpl
    _$$TrainerSchedulesWithPrevMonthImplFromJson(Map<String, dynamic> json) =>
        _$TrainerSchedulesWithPrevMonthImpl(
          currentMonth: (json['currentMonth'] as List<dynamic>)
              .map((e) =>
                  TrainerWithScheduleModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          previousMonth: (json['previousMonth'] as List<dynamic>)
              .map((e) =>
                  TrainerWithScheduleModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TrainerSchedulesWithPrevMonthImplToJson(
        _$TrainerSchedulesWithPrevMonthImpl instance) =>
    <String, dynamic>{
      'currentMonth': instance.currentMonth,
      'previousMonth': instance.previousMonth,
    };
