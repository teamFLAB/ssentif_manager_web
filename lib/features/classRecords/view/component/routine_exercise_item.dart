import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/widgets/image_expand_dialog.dart';
import 'package:ssentif_manager_web/core/widgets/video_player_dialog.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_record_type.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/enumtype/file_type.dart';

class RoutineExerciseItem extends StatelessWidget {
  final RoutineHistoryExerciseEntity exercise;

  const RoutineExerciseItem({
    required this.exercise,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  exercise.routinesExerciseName,
                  style: SsentifTextStyles.medium16(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              if (exercise.exerciseParts.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    Intl.message(
                        ExercisePart.findExercisePart(exercise.exerciseParts)
                            .findStringKey()),
                    style: SsentifTextStyles.medium12(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
            ],
          ),
          if (exercise.routinesImagesListWithType.isNotEmpty) ...[
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: exercise.routinesImagesListWithType.length,
                itemBuilder: (context, index) {
                  var image = exercise.routinesImagesListWithType[index];
                  return InkWell(
                    onTap: () {
                      if (image.fileType == FileType.image) {
                        ImageExpandDialog.show(
                          context,
                          imageUrl: image.fileUrl,
                        );
                      } else if (image.fileType == FileType.video) {
                        VideoPlayerDialog.show(context,
                            videoUrl: image.fileUrl);
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: SizedBox(
                          width: 45,
                          height: 45,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                image.fileType == FileType.video
                                    ? image.thumbnailUrl
                                    : image.fileUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: AppColors.gray4,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Icon(
                                      Icons.image_not_supported,
                                      color: AppColors.gray3,
                                      size: 20,
                                    ),
                                  );
                                },
                              ),
                              if (image.fileType == FileType.video)
                                Center(
                                  child: Assets.images.icPlayVideo.image(
                                    width: 15,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
          Visibility(
              visible: exercise.exerciseSets.isNotEmpty,
              child: SizedBox(
                  height: exercise.routineImagesList.isNotEmpty ? 10 : 15)),
          // 운동 세트 목록
          ...exercise.exerciseSets.asMap().entries.map((entry) {
            var set = entry.value;
            var index = entry.key;

            final recordType =
                ExerciseRecordType.findRecordType(exercise.exerciseType);
            String setText = '';

            switch (recordType) {
              case ExerciseRecordType.weightAndReps:
                setText = '${set.weight}kg X ${set.reps}회';
                break;
              case ExerciseRecordType.reps:
                setText = '${set.reps}회';
                break;
              case ExerciseRecordType.time:
                final minutes = set.restTime ~/ 60;
                final seconds = set.restTime % 60;
                setText = '${minutes}분 ${seconds}초';
                break;
            }

            return Padding(
              padding: EdgeInsets.only(
                  bottom: index != (exercise.exerciseSets.length - 1) ? 7 : 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'set${index + 1}',
                    style: SsentifTextStyles.regular14(context).copyWith(
                      color: AppColors.gray555,
                    ),
                  ),
                  Text(
                    setText,
                    style: SsentifTextStyles.medium14(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
