import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/file_type.dart';

part 'routine_history_entity.freezed.dart';

@freezed
class RoutineHistoryEntity with _$RoutineHistoryEntity {
  const factory RoutineHistoryEntity({
    @Default(-1) int routineId,
    @Default("") String routineName,
    @Default("") String clientMemo,
    @Default(0) int routineNumberOfExercise,
    @Default([]) List<String> exercisePartsList,
    @Default(0) int exerciseIntensity,
    @Default("") String exerciseComment,
    @Default([]) List<RoutineHistoryExerciseEntity> routinesExerciseDtos,
    @Default("") String classStartDate,
    @Default(0) int daysAgo,
    @Default("") String feedBack,
    @Default("") String routineStatus,
    UserEntity? trainerInfo,
    UserEntity? clientInfo,
    @Default("") String runningTime
  }) = _RoutineHistoryEntity;
}

@freezed
class RoutineHistoryExerciseEntity with _$RoutineHistoryExerciseEntity {
  const factory RoutineHistoryExerciseEntity({
    @Default(-1) int routinesExerciseId,
    @Default("") String routinesExerciseName,
    @Default(-1) int exerciseId,
    @Default("") String exerciseType,
    @Default("") String exerciseParts,
    @Default("") String motion,
    @Default("") String? performMemo,
    @Default([]) List<ExerciseSetEntity> exerciseSets,
    @Default([]) List<String> routineImagesList,
    @Default([]) List<FileUrlEntity> routinesImagesListWithType,
    @Default("") String routinesExerciseMemo,
  }) = _RoutineHistoryExerciseEntity;
}

@freezed
class ExerciseSetEntity with _$ExerciseSetEntity {
  const factory ExerciseSetEntity({
    @Default(-1) int exerciseSetId,
    @Default(0) int setNumber,
    @Default(0) int weight,
    @Default(0) int reps,
    @Default(0) int restTime,
    @Default("") String memo,
  }) = _ExerciseSetEntity;
}

@freezed
class FileUrlEntity with _$FileUrlEntity {
  const factory FileUrlEntity({
    @Default("") String fileUrl,
    @Default(FileType.image) FileType fileType,
    @Default("") String thumbnailUrl
  }) = _FileUrlEntity;
}
