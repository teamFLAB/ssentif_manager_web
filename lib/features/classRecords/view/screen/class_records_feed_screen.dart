import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';
import 'package:ssentif_manager_web/features/classRecords/view/intent/class_records_intent.dart';
import 'package:ssentif_manager_web/features/classRecords/view/viewmodel/class_records_view_model.dart';
import 'package:ssentif_manager_web/features/classRecords/view/state/class_records_state.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/coach_item.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/features/coaches/view/component/coach_list_item.dart';
import 'package:ssentif_manager_web/features/classRecords/view/component/routine_detail_dialog.dart';
import 'package:ssentif_manager_web/features/classRecords/view/effect/class_records_effect.dart';
import 'package:ssentif_manager_web/shared/enumtype/file_type.dart';
import 'package:ssentif_manager_web/core/widgets/month_selector_widget.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/domain/entity/user_entity.dart';
import '../../../../shared/domain/entity/user_info_entity.dart';
import '../component/class_client_info_widget.dart';

class ClassRecordsFeedScreen extends ConsumerStatefulWidget {
  final List<UserEntity> coaches;

  const ClassRecordsFeedScreen({required this.coaches, super.key});

  @override
  ConsumerState<ClassRecordsFeedScreen> createState() =>
      _ClassRecordsFeedScreenState();
}

class _ClassRecordsFeedScreenState
    extends ConsumerState<ClassRecordsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    var viewModelProvider = classRecordsViewModelProvider(widget.coaches);
    var state = ref.watch(viewModelProvider);
    var viewModel = ref.read(viewModelProvider.notifier);

    // Effect 핸들러 설정
    viewModel.setEffectHandler((effect) {
      if (effect is ClassRecordsEffect) {
        effect.when(
          showRoutineDetailDialog: (record) {
            showDialog(
              context: context,
              builder: (context) => RoutineDetailDialog(record: record),
            );
          },
        );
      }
    });

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          // 헤더
          Container(
              height: 60,
              decoration: const BoxDecoration(
                color: AppColors.white,
              )),
          // 코치 리스트
          const SizedBox(height: 20),
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.coaches.length,
              separatorBuilder: (BuildContext context, int idx) {
                return const SizedBox(width: 8);
              },
              itemBuilder: (BuildContext context, int idx) {
                var user = widget.coaches[idx];
                return CoachItem(
                  coach: user,
                  selected: state.selectedCoaches
                      .any((coach) => coach.userId == user.userId),
                  onTap: () {
                    viewModel.handleIntent(
                        ClassRecordsIntent.toggleCoachSelection(user: user));
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // 컨텐츠
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: MonthSelectorWidget(
                      selectedMonth: state.selectedMonth,
                      onThisMonth: () {
                        viewModel
                            .handleIntent(ClassRecordsIntent.clickThisMonth());
                      },
                      onPreviousMonth: () {
                        viewModel.handleIntent(
                            ClassRecordsIntent.clickPreviousMonth());
                      },
                      onNextMonth: () {
                        viewModel
                            .handleIntent(ClassRecordsIntent.clickNextMonth());
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 수업 기록 리스트
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: _buildClassRecordsList(state, viewModel),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassRecordsList(
      ClassRecordsState state, ClassRecordsViewModel viewModel) {
    if (state.isLoading && state.classRecords.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.classRecords.isEmpty) {
      return Container(
        height: 200,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.gray4),
        ),
        child: Text(
          '이번 달에 기록된 수업 없어요!',
          style: SsentifTextStyles.regular16(context),
        ),
      );
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels >=
            scrollInfo.metrics.maxScrollExtent * 0.8) {
          viewModel.loadMoreRecords();
        }
        return false;
      },
      child: ListView.builder(
        itemCount: state.classRecords.length + (state.isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == state.classRecords.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          final record = state.classRecords[index];
          return _buildClassRecordItem(record);
        },
      ),
    );
  }

  Widget _buildClassRecordItem(RoutineHistoryEntity record) {
    var routineDate = record.classStartDate.convertDateFormat(
        formatBefore: Constants.dateFormat,
        formatAfter: Constants.localizationDateFormat2());

    var exposedExercises = record.routinesExerciseDtos.length > 3
        ? record.routinesExerciseDtos.sublist(0, 3)
        : record.routinesExerciseDtos;

    var exerciseParts = record.exercisePartsList
        .map((e) =>
            Intl.message(ExercisePart.findExercisePart(e).findStringKey()))
        .toList()
        .join(", ");

    // routinesExerciseDtos에서 routinesImagesListWithType들을 flatten
    var allImages = record.routinesExerciseDtos
        .expand((exercise) => exercise.routinesImagesListWithType)
        .toList();

    return GestureDetector(
      onTap: () {
        var viewModel =
            ref.read(classRecordsViewModelProvider(widget.coaches).notifier);
        viewModel.handleIntent(
            ClassRecordsIntent.showRoutineDetailDialog(record: record));
      },
      child: Container(
        margin: EdgeInsets.only(
            bottom: DeviceSizeUtils().getResponsiveDouble(12, 2, context)
        ),
        height: 180, // 고정 높이 설정
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.gray4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            if (record.trainerInfo != null && record.clientInfo != null)
              Row(
                children: [
                  ProfileImageWidget(
                      size: 20, imageURL: record.trainerInfo?.imageUrl ?? ""),
                  const SizedBox(width: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        record.trainerInfo!.userName,
                        style: SsentifTextStyles.medium16(context).copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "코치",
                        style: SsentifTextStyles.medium12(context).copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 18),
                  Assets.images.icRightGray.image(height: 16),
                  const SizedBox(width: 18),
                  Visibility(
                      child: Row(
                    children: record.groupClients.map((user) {
                      return Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ClassClientInfoWidget(
                              groupClientInfo: user, clientInfo: null));
                    }).toList(),
                  )),
                  Visibility(
                    visible: record.groupClients.isEmpty,
                    child: ClassClientInfoWidget(
                        groupClientInfo: null, clientInfo: record.clientInfo),
                  ),
                  const Spacer(),
                  Text(
                    "${routineDate}, ${record.runningTime}",
                    style: SsentifTextStyles.regular14(context).copyWith(
                      color: AppColors.gray2,
                    ),
                  )
                ],
              ),
            const SizedBox(height: 20),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 좌측 1/3: 첨부된 사진/영상 영역
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
                            "첨부된 사진/영상",
                            style: SsentifTextStyles.bold14(context).copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          if (allImages.isNotEmpty)
                            SizedBox(
                              height: DeviceSizeUtils().getResponsiveDouble(80, 8, context),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    allImages.length > 3 ? 3 : allImages.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 8),
                                itemBuilder: (context, index) {
                                  var image = allImages[index];
                                  var isLastItem =
                                      index == 2 && allImages.length > 3;
                                  var remainingCount = allImages.length - 3;

                                  return Container(
                                    width: DeviceSizeUtils().getResponsiveDouble(80, 8, context),
                                    height: DeviceSizeUtils().getResponsiveDouble(80, 8, context),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          DeviceSizeUtils().getResponsiveDouble(8, 1.5, context)
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            image.fileType == FileType.video
                                                ? image.thumbnailUrl
                                                : image.fileUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: isLastItem
                                        ? Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      DeviceSizeUtils().getResponsiveDouble(8, 1.5, context)
                                                  ),
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+$remainingCount',
                                                style: SsentifTextStyles.bold14(context)
                                                    .copyWith(
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          )
                                        : image.fileType == FileType.video
                                            ? Container(
                                                decoration: BoxDecoration(color: AppColors.blackAlpha10),
                                                child: Assets.images.icPlayVideo.image(
                                                    width: DeviceSizeUtils().getResponsiveDouble(24, 3, context),
                                                    height: DeviceSizeUtils().getResponsiveDouble(24, 3, context)
                                                )
                                    )
                                            : null,
                                  );
                                },
                              ),
                            )
                          else
                            IndexCircleText(
                              text: "첨부된 사진 및 영상이 없어요.",
                            )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // 중앙 1/3: 운동 부위와 운동 목록
                  Visibility(
                    visible: record.exercisePartsList.isNotEmpty,
                    child: Expanded(
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
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "기록된 운동 ${record.routineNumberOfExercise}개",
                                    style: SsentifTextStyles.bold14(context).copyWith(
                                      color: AppColors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    "(${exerciseParts})",
                                    style: SsentifTextStyles.medium12(context).copyWith(
                                      color: AppColors.gray1,
                                    ),
                                  )
                                ]),
                            const SizedBox(height: 12),
                            ...exposedExercises
                                .map(
                                  (exercise) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: IndexCircleText(
                                      text: exercise.routinesExerciseName,
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                      visible: record.exercisePartsList.isEmpty,
                      child: Expanded(
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
                                "진행한 운동",
                                style: SsentifTextStyles.bold14(context).copyWith(
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              IndexCircleText(text: "아직 수업 내용이 기록되지 않았어요!")
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(width: 16),
                  // 우측 1/3: 운동 코멘트
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
                          Visibility(
                              visible: record.exerciseComment.isEmpty,
                              child: IndexCircleText(text: "기록된 루틴 설명이 없어요!")),
                          Visibility(
                            visible: record.exerciseComment.isNotEmpty,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Assets.images.icIndexCircle.image(
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    record.exerciseComment,
                                    style: SsentifTextStyles.regular12(context).copyWith(
                                      color: AppColors.gray555,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 5,
                                  ),
                                ),
                              ],
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
          ],
        ),
      ),
    );
  }
}

class IndexCircleText extends StatelessWidget {
  final String text;

  const IndexCircleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.images.icIndexCircle.image(
          width: 10,
          height: 10,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: SsentifTextStyles.regular12(context).copyWith(
              color: AppColors.gray555,
            ),
          ),
        ),
      ],
    );
  }
}
