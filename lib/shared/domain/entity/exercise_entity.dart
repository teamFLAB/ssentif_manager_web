
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enumtype/exercise_part.dart';
import '../../enumtype/exercise_record_type.dart';

part 'exercise_entity.freezed.dart';
part 'exercise_entity.g.dart';

@freezed
class ExerciseEntity with _$ExerciseEntity {
  const factory ExerciseEntity({
    @Default(-1) int id,
    @Default("") String name,
    ExercisePart? bodyPart,
    ExerciseRecordType? recordType,
    @Default("") String motionUrl,
    @Default("") String description,
    @Default(false) bool isCustom,
    @Default(false) bool isFavorite,
  }) = _ExerciseEntity;

  factory ExerciseEntity.fromJson(Map<String, dynamic> json) => _$ExerciseEntityFromJson(json);
}