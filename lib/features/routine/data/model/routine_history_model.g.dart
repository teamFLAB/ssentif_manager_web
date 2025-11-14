// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassRoutineDetailResponseImpl _$$ClassRoutineDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassRoutineDetailResponseImpl(
      scheduleTitle: json['scheduleTitle'] as String? ?? "",
      scheduleStatus: json['scheduleStatus'] as String? ?? "",
      routineDto: json['routineDto'] == null
          ? null
          : RoutineHistoryModel.fromJson(
              json['routineDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassRoutineDetailResponseImplToJson(
        _$ClassRoutineDetailResponseImpl instance) =>
    <String, dynamic>{
      'scheduleTitle': instance.scheduleTitle,
      'scheduleStatus': instance.scheduleStatus,
      'routineDto': instance.routineDto,
    };

_$ClassHistoriesResponseImpl _$$ClassHistoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassHistoriesResponseImpl(
      classInfoDetailOfDateList: (json['classInfoDetailOfDateList']
                  as List<dynamic>?)
              ?.map((e) =>
                  RoutineDtoWrapperModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastScheduleId: (json['lastScheduleId'] as num?)?.toInt(),
      hasNext: json['hasNext'] ?? false,
    );

Map<String, dynamic> _$$ClassHistoriesResponseImplToJson(
        _$ClassHistoriesResponseImpl instance) =>
    <String, dynamic>{
      'classInfoDetailOfDateList': instance.classInfoDetailOfDateList,
      'lastScheduleId': instance.lastScheduleId,
      'hasNext': instance.hasNext,
    };

_$IndividualWorkoutHistoriesResponseImpl
    _$$IndividualWorkoutHistoriesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$IndividualWorkoutHistoriesResponseImpl(
          workoutResponses: (json['workoutResponses'] as List<dynamic>?)
                  ?.map((e) => RoutineDtoWrapperModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          lastWorkoutId: (json['lastWorkoutId'] as num?)?.toInt(),
          hasNext: json['hasNext'] ?? false,
        );

Map<String, dynamic> _$$IndividualWorkoutHistoriesResponseImplToJson(
        _$IndividualWorkoutHistoriesResponseImpl instance) =>
    <String, dynamic>{
      'workoutResponses': instance.workoutResponses,
      'lastWorkoutId': instance.lastWorkoutId,
      'hasNext': instance.hasNext,
    };

_$RoutineDtoWrapperModelImpl _$$RoutineDtoWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineDtoWrapperModelImpl(
      RoutineHistoryModel.fromJson(json['routineDto'] as Map<String, dynamic>),
      (json['groupClients'] as List<dynamic>?)
          ?.map((e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoutineDtoWrapperModelImplToJson(
        _$RoutineDtoWrapperModelImpl instance) =>
    <String, dynamic>{
      'routineDto': instance.routineDto,
      'groupClients': instance.groupClients,
    };

_$RoutineHistoryModelImpl _$$RoutineHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineHistoryModelImpl(
      routineId: (json['routineId'] as num?)?.toInt() ?? -1,
      routineName: json['routineName'] as String? ?? "",
      clientMemo: json['clientMemo'] as String? ?? "",
      routineNumberOfExercise:
          (json['routineNumberOfExercise'] as num?)?.toInt() ?? 0,
      exercisePartsList: (json['exercisePartsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      exerciseIntensity: (json['exerciseIntensity'] as num?)?.toInt() ?? 0,
      exerciseComment: json['exerciseComment'] as String? ?? "",
      routinesExerciseDtos: (json['routinesExerciseDtos'] as List<dynamic>?)
              ?.map((e) => RoutineHistoryExerciseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      classStartDate: json['classStartDate'] as String? ?? "",
      daysAgo: (json['daysAgo'] as num?)?.toInt() ?? 0,
      feedBack: json['feedBack'] as String? ?? "",
      routineStatus: json['routineStatus'] as String? ?? "",
      trainerId: (json['trainerId'] as num?)?.toInt() ?? -1,
      trainerName: json['trainerName'] as String? ?? "",
      trainerProfile: json['trainerProfile'] as String? ?? "",
      clientId: (json['clientId'] as num?)?.toInt() ?? -1,
      clientName: json['clientName'] as String? ?? "",
      clientProfile: json['clientProfile'] as String? ?? "",
      runningTime: json['runningTime'] as String? ?? "",
    );

Map<String, dynamic> _$$RoutineHistoryModelImplToJson(
        _$RoutineHistoryModelImpl instance) =>
    <String, dynamic>{
      'routineId': instance.routineId,
      'routineName': instance.routineName,
      'clientMemo': instance.clientMemo,
      'routineNumberOfExercise': instance.routineNumberOfExercise,
      'exercisePartsList': instance.exercisePartsList,
      'exerciseIntensity': instance.exerciseIntensity,
      'exerciseComment': instance.exerciseComment,
      'routinesExerciseDtos': instance.routinesExerciseDtos,
      'classStartDate': instance.classStartDate,
      'daysAgo': instance.daysAgo,
      'feedBack': instance.feedBack,
      'routineStatus': instance.routineStatus,
      'trainerId': instance.trainerId,
      'trainerName': instance.trainerName,
      'trainerProfile': instance.trainerProfile,
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'clientProfile': instance.clientProfile,
      'runningTime': instance.runningTime,
    };

_$RoutineHistoryExerciseModelImpl _$$RoutineHistoryExerciseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineHistoryExerciseModelImpl(
      routinesExerciseId: (json['routinesExerciseId'] as num?)?.toInt() ?? -1,
      routinesExerciseName: json['routinesExerciseName'] as String? ?? "",
      exerciseId: (json['exerciseId'] as num?)?.toInt() ?? -1,
      exerciseType: json['exerciseType'] as String? ?? "",
      exerciseParts: json['exerciseParts'] as String? ?? "",
      motion: json['motion'] as String? ?? "",
      performMemo: json['performMemo'] as String? ?? "",
      exerciseSets: (json['exerciseSets'] as List<dynamic>?)
              ?.map((e) => ExerciseSetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      routineImagesList: (json['routineImagesList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      routinesImagesListWithType:
          (json['routinesImagesListWithType'] as List<dynamic>?)
                  ?.map((e) => FileUrlModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      routinesExerciseMemo: json['routinesExerciseMemo'] as String? ?? "",
    );

Map<String, dynamic> _$$RoutineHistoryExerciseModelImplToJson(
        _$RoutineHistoryExerciseModelImpl instance) =>
    <String, dynamic>{
      'routinesExerciseId': instance.routinesExerciseId,
      'routinesExerciseName': instance.routinesExerciseName,
      'exerciseId': instance.exerciseId,
      'exerciseType': instance.exerciseType,
      'exerciseParts': instance.exerciseParts,
      'motion': instance.motion,
      'performMemo': instance.performMemo,
      'exerciseSets': instance.exerciseSets,
      'routineImagesList': instance.routineImagesList,
      'routinesImagesListWithType': instance.routinesImagesListWithType,
      'routinesExerciseMemo': instance.routinesExerciseMemo,
    };
