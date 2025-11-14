import 'package:ssentif_manager_web/shared/data/mapper/user_info_mapper.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_info_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/file_type.dart';

import '../../domain/entity/routine_histories_with_page_info_entity.dart';
import '../../domain/entity/routine_history_entity.dart';
import '../model/routine_history_model.dart';
import '../model/exercise_set_model.dart';
import '../../../../shared/data/model/file_url_model.dart';

class RoutineHistoriesMapper {
  static RoutineHistoriesWithPageInfoEntity toEntity(ClassHistoriesResponse model) {
    return RoutineHistoriesWithPageInfoEntity(
      classInfoDetailOfDateList: model.classInfoDetailOfDateList
          .map((wrapper) =>
          RoutineHistoryMapper.toEntity(wrapper.routineDto)
              .copyWith(
            groupClients: wrapper.groupClients?.map((userInfoModel) {
              return UserInfoMapper().map(userInfoModel);
            }).toList() ?? []
          )
      ).toList(),
      lastScheduleId: model.lastScheduleId,
      hasNext: model.hasNext,
    );
  }
}

class RoutineHistoryMapper {
  static RoutineHistoryEntity toEntity(RoutineHistoryModel model) {
    return RoutineHistoryEntity(
      routineId: model.routineId,
      routineName: model.routineName,
      clientMemo: model.clientMemo,
      routineNumberOfExercise: model.routineNumberOfExercise,
      exercisePartsList: model.exercisePartsList,
      exerciseIntensity: model.exerciseIntensity,
      exerciseComment: model.exerciseComment,
      routinesExerciseDtos: model.routinesExerciseDtos
          .map((exercise) => RoutineHistoryExerciseMapper.toEntity(exercise))
          .toList(),
      classStartDate: model.classStartDate,
      daysAgo: model.daysAgo,
      feedBack: model.feedBack,
      routineStatus: model.routineStatus,
      trainerInfo:  UserEntity(
          userId: model.trainerId ?? -1,
          userName: model.trainerName ?? "",
          imageUrl: model.trainerProfile ?? ""
      ),
      clientInfo: UserEntity(
        userId: model.clientId ?? -1,
        userName: model.clientName ?? "",
        imageUrl: model.clientProfile ?? ""
      ),
      runningTime: model.runningTime ?? ""
    );
  }
}

class RoutineHistoryExerciseMapper {
  static RoutineHistoryExerciseEntity toEntity(
      RoutineHistoryExerciseModel model) {
    return RoutineHistoryExerciseEntity(
      routinesExerciseId: model.routinesExerciseId,
      routinesExerciseName: model.routinesExerciseName,
      exerciseId: model.exerciseId,
      exerciseType: model.exerciseType,
      exerciseParts: model.exerciseParts,
      motion: model.motion,
      performMemo: model.performMemo,
      exerciseSets: model.exerciseSets
          .map((set) => ExerciseSetMapper.toEntity(set))
          .toList(),
      routineImagesList: model.routineImagesList,
      routinesImagesListWithType: model.routinesImagesListWithType
          .map((file) => FileUrlMapper.toEntity(file))
          .toList(),
      routinesExerciseMemo: model.routinesExerciseMemo,
    );
  }
}

class ExerciseSetMapper {
  static ExerciseSetEntity toEntity(ExerciseSetModel model) {
    return ExerciseSetEntity(
      exerciseSetId: -1, // 모델에 없는 필드
      setNumber: 0, // 모델에 없는 필드
      weight: model.weight.toInt(),
      reps: model.reps,
      restTime: model.time,
      memo: "", // 모델에 없는 필드
    );
  }
}

class FileUrlMapper {
  static FileUrlEntity toEntity(FileUrlModel model) {
    return FileUrlEntity(
      fileUrl: model.url,
      fileType: FileType.findFileType(model.fileType),
      thumbnailUrl: model.thumbnailUrl
    );
  }
}
