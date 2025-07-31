import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';
import 'package:ssentif_manager_web/features/classRecords/view/intent/class_records_intent.dart';
import 'package:ssentif_manager_web/features/classRecords/view/viewmodel/class_records_view_model.dart';
import 'package:ssentif_manager_web/features/classRecords/view/state/class_records_state.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/features/coaches/view/component/coach_list_item.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/domain/entity/user_entity.dart';

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
          Container(
            height: 80,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                return CoachListItem(
                  user: user,
                  selected: state.selectedCoaches
                      .any((coach) => coach.userId == user.userId),
                  isFirstItem: idx == 0,
                  onClick: () {
                    viewModel.handleIntent(
                        ClassRecordsIntent.toggleCoachSelection(user: user));
                  },
                );
              },
            ),
          ),
          // 컨텐츠
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(children: [
                Row(
                  children: [
                    Text(DateFormat('yyyy년 MM월').format(state.selectedMonth),
                        style: SsentifTextStyles.bold24
                            .copyWith(color: AppColors.black)),
                    const SizedBox(width: 16),
                    // 이번달 버튼
                    GestureDetector(
                      onTap: () {
                        viewModel
                            .handleIntent(ClassRecordsIntent.clickThisMonth());
                      },
                      child: Container(
                        height: 24,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.gray4,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '이번달',
                          style: SsentifTextStyles.medium14.copyWith(
                            color: AppColors.gray555,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // 이전 버튼
                    GestureDetector(
                      onTap: () {
                        viewModel.handleIntent(
                            ClassRecordsIntent.clickPreviousMonth());
                      },
                      child: Assets.images.icPreviousButton.image(
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // 다음 버튼
                    GestureDetector(
                      onTap: () {
                        viewModel
                            .handleIntent(ClassRecordsIntent.clickNextMonth());
                      },
                      child: Assets.images.icNextButton.image(
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // 수업 기록 리스트
                Expanded(
                  child: _buildClassRecordsList(state, viewModel),
                ),
              ]),
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
      return const Center(
        child: Text(
          '수업 기록이 없습니다.',
          style: SsentifTextStyles.regular16,
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
        formatAfter: Constants.localizationDateFormat());

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "${routineDate}",
                  style: SsentifTextStyles.medium14.copyWith(
                    color: AppColors.gray3,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          if (record.trainerInfo != null && record.clientInfo != null)
            Row(
              children: [
                ProfileImageWidget(
                    size: 28, imageURL: record.trainerInfo?.imageUrl ?? ""),
                SizedBox(width: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      record.trainerInfo!.userName,
                      style: SsentifTextStyles.medium22.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "코치",
                      style: SsentifTextStyles.medium16.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Assets.images.icRightGray.image(height: 20),
                SizedBox(width: 20),
                ProfileImageWidget(
                    size: 28, imageURL: record.clientInfo?.imageUrl ?? ""),
                SizedBox(width: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      record.clientInfo!.userName,
                      style: SsentifTextStyles.medium22.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "회원",
                      style: SsentifTextStyles.medium16.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 20),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 좌측 절반: 운동 부위와 운동 목록
                Visibility(
                  visible: record.exercisePartsList.isNotEmpty,
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 2.5, color: AppColors.gray4))),
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: record.exercisePartsList.map((e) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTabSelected,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  Intl.message(ExercisePart.findExercisePart(e)
                                      .findStringKey()),
                                  style: SsentifTextStyles.regular12.copyWith(
                                    color: AppColors.backgroundTabSelectedText,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 12),
                          // 운동 목록
                          ...record.routinesExerciseDtos
                              .map(
                                (exercise) => Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    '• ${exercise.routinesExerciseName}',
                                    style: SsentifTextStyles.regular14.copyWith(
                                      color: AppColors.gray555,
                                    ),
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
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "진행한 운동",
                              style: SsentifTextStyles.bold14.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "아직 수업 내용이 기록되지 않았어요!",
                              style: SsentifTextStyles.regular14.copyWith(
                                color: AppColors.gray555,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                const SizedBox(width: 16),
                // 우측 절반: 운동 코멘트
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                width: 2.5, color: AppColors.gray4))),
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "루틴 설명",
                          style: SsentifTextStyles.bold14.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          record.exerciseComment.isNotEmpty
                              ? record.exerciseComment
                              : "기록된 루틴 설명이 없어요.",
                          style: SsentifTextStyles.regular14.copyWith(
                            color: AppColors.gray555,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
