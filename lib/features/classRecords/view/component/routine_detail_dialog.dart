import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_record_type.dart';
import 'package:ssentif_manager_web/features/classRecords/view/component/routine_exercise_item.dart';

import '../../../../gen/assets.gen.dart';
import 'class_client_info_widget.dart';

class RoutineDetailDialog extends StatelessWidget {
  final RoutineHistoryEntity record;

  const RoutineDetailDialog({required this.record, super.key});

  @override
  Widget build(BuildContext context) {
    var routineDate = record.classStartDate.convertDateFormat(
        formatBefore: Constants.dateFormat,
        formatAfter: Constants.localizationDateFormat());

    var clientProfileImg = record.clientInfo?.imageUrl ?? "";

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppColors.backgroundColor,
      child: Container(
        width: 900,
        constraints: const BoxConstraints(maxHeight: 600),
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 헤더
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '수업일지',
                        style: SsentifTextStyles.bold18(context).copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "${routineDate}, ${record.runningTime}",
                        style: SsentifTextStyles.medium14(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 28,
                    height: 28,
                    child: const Icon(
                      Icons.close,
                      size: 24,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 트레이너와 회원 정보
            if (record.trainerInfo != null && record.clientInfo != null)
              Row(
                children: [
                  ProfileImageWidget(
                      size: 24, imageURL: record.trainerInfo?.imageUrl ?? ""),
                  const SizedBox(width: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        record.trainerInfo!.userName,
                        style: SsentifTextStyles.medium18(context).copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "코치",
                        style: SsentifTextStyles.medium14(context).copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Assets.images.icRightGray.image(height: 16),
                  const SizedBox(width: 20),
                  Visibility(
                      child: Row(
                        children: record.groupClients.map((user) {
                          return Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: ClassClientInfoWidget(
                                  profileImageSize: 24,
                                  groupClientInfo: user,
                                  clientInfo: null
                              )
                          );
                        }).toList(),
                      )
                  ),
                  Visibility(
                    visible: record.groupClients.isEmpty,
                    child: ClassClientInfoWidget(
                        groupClientInfo: null,
                        clientInfo: record.clientInfo
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            // 수업 내용
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 좌측 절반: 루틴 구성
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '루틴구성',
                            style: SsentifTextStyles.bold14(context).copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 12),
                          // 운동 목록
                          record.routinesExerciseDtos.isNotEmpty
                              ? Expanded(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    itemCount:
                                        record.routinesExerciseDtos.length,
                                    itemBuilder: (context, index) {
                                      final exercise =
                                          record.routinesExerciseDtos[index];
                                      return RoutineExerciseItem(
                                          exercise: exercise);
                                    },
                                  ),
                                )
                              : Text(
                                  record.exerciseComment.isNotEmpty
                                      ? record.exerciseComment
                                      : "아직 수업 내용이 기록되지 않았어요!",
                                  style: SsentifTextStyles.regular14(context).copyWith(
                                    color: AppColors.gray555,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // 우측 절반: 운동 코멘트
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 2.5, color: AppColors.gray4))),
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "루틴 설명",
                            style: SsentifTextStyles.bold14(context).copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                record.exerciseComment.isNotEmpty
                                    ? record.exerciseComment
                                    : "기록된 루틴 설명이 없어요!",
                                style: SsentifTextStyles.regular12(context).copyWith(
                                  color: AppColors.gray555,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            if (record.clientMemo.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                '메모: ${record.clientMemo}',
                style: SsentifTextStyles.regular14(context).copyWith(
                  color: AppColors.gray555,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
