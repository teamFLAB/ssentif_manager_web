

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/data/model/file_url_model.dart';
import 'exercise_set_model.dart';

part 'routine_history_model.freezed.dart';
part 'routine_history_model.g.dart';

@freezed
class ClassRoutineDetailResponse with _$ClassRoutineDetailResponse {
  factory ClassRoutineDetailResponse({
    @Default("") String scheduleTitle,
    @Default("") String scheduleStatus,
    RoutineHistoryModel? routineDto
  }) = _ClassRoutineDetailResponse;

  factory ClassRoutineDetailResponse.fromJson(Map<String, dynamic> json) => _$ClassRoutineDetailResponseFromJson(json);
}

@freezed
class ClassHistoriesResponse with _$ClassHistoriesResponse {
  factory ClassHistoriesResponse({
    @Default([]) List<RoutineDtoWrapperModel> classInfoDetailOfDateList,
    int? lastScheduleId,
    @Default(false) hasNext
  }) = _ClassHistoriesResponse;

  factory ClassHistoriesResponse.fromJson(Map<String, dynamic> json) => _$ClassHistoriesResponseFromJson(json);
}

@freezed
class IndividualWorkoutHistoriesResponse with _$IndividualWorkoutHistoriesResponse {
  factory IndividualWorkoutHistoriesResponse({
    @Default([]) List<RoutineDtoWrapperModel> workoutResponses,
    int? lastWorkoutId,
    @Default(false) hasNext
  }) = _IndividualWorkoutHistoriesResponse;

  factory IndividualWorkoutHistoriesResponse.fromJson(Map<String, dynamic> json) => _$IndividualWorkoutHistoriesResponseFromJson(json);
}


@freezed
class RoutineDtoWrapperModel with _$RoutineDtoWrapperModel {
  factory RoutineDtoWrapperModel(RoutineHistoryModel routineDto) = _RoutineDtoWrapperModel;
  factory RoutineDtoWrapperModel.fromJson(Map<String, dynamic> json) => _$RoutineDtoWrapperModelFromJson(json);
}

@freezed
class RoutineHistoryModel with _$RoutineHistoryModel {
  const factory RoutineHistoryModel({
    @Default(-1) int routineId,
    @Default("") String routineName,
    @Default("") String clientMemo,
    @Default(0) int routineNumberOfExercise,
    @Default([]) List<String> exercisePartsList,
    @Default(0) int exerciseIntensity,
    @Default("") String exerciseComment,
    @Default([]) List<RoutineHistoryExerciseModel> routinesExerciseDtos,
    @Default("") String classStartDate,
    @Default(0) int daysAgo,
    @Default("") String feedBack,
    @Default("") String routineStatus,
    @Default(-1) int? trainerId,
    @Default("") String? trainerName,
    @Default("") String? trainerProfile,
    @Default(-1) int? clientId,
    @Default("") String? clientName,
    @Default("") String? clientProfile
  }) = _RoutineHistoryModel;

  factory RoutineHistoryModel.fromJson(Map<String, dynamic> json) => _$RoutineHistoryModelFromJson(json);
}


@freezed
class RoutineHistoryExerciseModel with _$RoutineHistoryExerciseModel {
  factory RoutineHistoryExerciseModel({
    @Default(-1) int routinesExerciseId,
    @Default("") String routinesExerciseName,
    @Default(-1) int exerciseId,
    @Default("") String exerciseType,
    @Default("") String exerciseParts,
    @Default("") String motion,
    @Default("") String? performMemo,
    @Default([]) List<ExerciseSetModel> exerciseSets,
    @Default([]) List<String> routineImagesList,
    @Default([]) List<FileUrlModel> routinesImagesListWithType,
    @Default("") String routinesExerciseMemo
  }) = _RoutineHistoryExerciseModel;

  factory RoutineHistoryExerciseModel.fromJson(Map<String, dynamic> json) => _$RoutineHistoryExerciseModelFromJson(json);
}


