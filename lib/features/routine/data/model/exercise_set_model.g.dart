// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSetModelImpl _$$ExerciseSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseSetModelImpl(
      weight: (json['weight'] as num?)?.toDouble() ?? 0,
      reps: (json['reps'] as num?)?.toInt() ?? 0,
      time: (json['time'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ExerciseSetModelImplToJson(
        _$ExerciseSetModelImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'reps': instance.reps,
      'time': instance.time,
    };
