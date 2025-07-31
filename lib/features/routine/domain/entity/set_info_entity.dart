
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/enumtype/exercise_record_type.dart';

part 'set_info_entity.freezed.dart';
part 'set_info_entity.g.dart';

@freezed
class SetInfoEntity with _$SetInfoEntity {
  factory SetInfoEntity({
    @Default(0) int setOrder,
    @Default(ExerciseRecordType.weightAndReps) ExerciseRecordType recordType,
    @Default(0) double weight,
    @Default(0) double time,
    @Default(0) double reps,
  }) = _SetInfoEntity;

  factory SetInfoEntity.fromJson(Map<String, dynamic> json) => _$SetInfoEntityFromJson(json);
}