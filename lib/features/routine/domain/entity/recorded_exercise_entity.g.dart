// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recorded_exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordedExerciseEntityImpl _$$RecordedExerciseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordedExerciseEntityImpl(
      routinesExerciseId: (json['routinesExerciseId'] as num?)?.toInt(),
      exerciseInfo: json['exerciseInfo'] == null
          ? null
          : ExerciseEntity.fromJson(
              json['exerciseInfo'] as Map<String, dynamic>),
      clientMemo: json['clientMemo'] as String? ?? "",
      exerciseMemo: json['exerciseMemo'] as String? ?? "",
      setInfo: (json['setInfo'] as List<dynamic>?)
              ?.map((e) => SetInfoEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exerciseImages: (json['exerciseImages'] as List<dynamic>?)
              ?.map((e) => MediaFileEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RecordedExerciseEntityImplToJson(
        _$RecordedExerciseEntityImpl instance) =>
    <String, dynamic>{
      'routinesExerciseId': instance.routinesExerciseId,
      'exerciseInfo': instance.exerciseInfo,
      'clientMemo': instance.clientMemo,
      'exerciseMemo': instance.exerciseMemo,
      'setInfo': instance.setInfo,
      'exerciseImages': instance.exerciseImages,
    };
