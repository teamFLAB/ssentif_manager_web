
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/enumtype/exercise_part.dart';
import '../../../../shared/enumtype/workout_type.dart';
import '../../../routine/domain/entity/recorded_exercise_entity.dart';

part 'routine_history_entity.freezed.dart';

@freezed
class RoutineHistoryEntity with _$RoutineHistoryEntity {
  const factory RoutineHistoryEntity({
    @Default(-1) int routineId,
    @Default("") String routineName,
    @Default("") String clientMemo,
    WorkoutType? workoutType,
    @Default(0) int routineNumberOfExercise,
    @Default([]) List<ExercisePart> exercisePartsList,
    @Default("") String exerciseComment,
    @Default("") String classStartDate,
    @Default([]) List<RecordedExerciseEntity> exercises,
    @Default(0) int daysAgo,
    @Default("") String feedBack
  }) = _RoutineHistoryEntity;
}

@freezed
class RoutineHistoriesWithPageInfo with _$RoutineHistoriesWithPageInfo {
  const factory RoutineHistoriesWithPageInfo({
    @Default([]) List<RoutineHistoryEntity> routines,
    int? lastRoutineId,
    @Default(false) bool hasNextPage
  }) = _RoutineHistoriesWithPageInfo;
}