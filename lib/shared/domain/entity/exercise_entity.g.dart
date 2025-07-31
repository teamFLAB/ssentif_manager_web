// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseEntityImpl _$$ExerciseEntityImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      bodyPart: $enumDecodeNullable(_$ExercisePartEnumMap, json['bodyPart']),
      recordType:
          $enumDecodeNullable(_$ExerciseRecordTypeEnumMap, json['recordType']),
      motionUrl: json['motionUrl'] as String? ?? "",
      description: json['description'] as String? ?? "",
      isCustom: json['isCustom'] as bool? ?? false,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$ExerciseEntityImplToJson(
        _$ExerciseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bodyPart': _$ExercisePartEnumMap[instance.bodyPart],
      'recordType': _$ExerciseRecordTypeEnumMap[instance.recordType],
      'motionUrl': instance.motionUrl,
      'description': instance.description,
      'isCustom': instance.isCustom,
      'isFavorite': instance.isFavorite,
    };

const _$ExercisePartEnumMap = {
  ExercisePart.chest: 'chest',
  ExercisePart.back: 'back',
  ExercisePart.lowerBody: 'lowerBody',
  ExercisePart.shoulder: 'shoulder',
  ExercisePart.biceps: 'biceps',
  ExercisePart.triceps: 'triceps',
  ExercisePart.core: 'core',
  ExercisePart.foreArm: 'foreArm',
  ExercisePart.aerobicExercise: 'aerobicExercise',
};

const _$ExerciseRecordTypeEnumMap = {
  ExerciseRecordType.weightAndReps: 'weightAndReps',
  ExerciseRecordType.reps: 'reps',
  ExerciseRecordType.time: 'time',
};
