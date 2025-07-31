
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/set_info_entity.dart';
import '../../../../shared/domain/entity/exercise_entity.dart';
import '../../../../shared/domain/entity/media_file_entity.dart';

part 'recorded_exercise_entity.freezed.dart';
part 'recorded_exercise_entity.g.dart';

@freezed
class RecordedExerciseEntity with _$RecordedExerciseEntity {
  factory RecordedExerciseEntity({
    int? routinesExerciseId,
    ExerciseEntity? exerciseInfo,
    @Default("") String clientMemo,
    @Default("") String exerciseMemo,
    @Default([]) List<SetInfoEntity> setInfo,
    @Default([]) List<MediaFileEntity> exerciseImages
  }) = _RecordedExerciseEntity;

  factory RecordedExerciseEntity.fromJson(Map<String, dynamic> json) => _$RecordedExerciseEntityFromJson(json);
}
