// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_with_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerWithScheduleModelImpl _$$TrainerWithScheduleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainerWithScheduleModelImpl(
      trainer:
          UserProfileModel.fromJson(json['trainer'] as Map<String, dynamic>),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) =>
              ScheduleDetailHasRoutineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainerWithScheduleModelImplToJson(
        _$TrainerWithScheduleModelImpl instance) =>
    <String, dynamic>{
      'trainer': instance.trainer,
      'schedules': instance.schedules,
    };
