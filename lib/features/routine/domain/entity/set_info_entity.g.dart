// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetInfoEntityImpl _$$SetInfoEntityImplFromJson(Map<String, dynamic> json) =>
    _$SetInfoEntityImpl(
      setOrder: (json['setOrder'] as num?)?.toInt() ?? 0,
      recordType: $enumDecodeNullable(
              _$ExerciseRecordTypeEnumMap, json['recordType']) ??
          ExerciseRecordType.weightAndReps,
      weight: (json['weight'] as num?)?.toDouble() ?? 0,
      time: (json['time'] as num?)?.toDouble() ?? 0,
      reps: (json['reps'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SetInfoEntityImplToJson(_$SetInfoEntityImpl instance) =>
    <String, dynamic>{
      'setOrder': instance.setOrder,
      'recordType': _$ExerciseRecordTypeEnumMap[instance.recordType]!,
      'weight': instance.weight,
      'time': instance.time,
      'reps': instance.reps,
    };

const _$ExerciseRecordTypeEnumMap = {
  ExerciseRecordType.weightAndReps: 'weightAndReps',
  ExerciseRecordType.reps: 'reps',
  ExerciseRecordType.time: 'time',
};
