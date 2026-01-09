import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/trainer_ranking_item.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/work_position.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';

class CoachRankingWidget extends ConsumerStatefulWidget {
  final DashboardStatType selectedStatType;

  const CoachRankingWidget({
    super.key,
    required this.selectedStatType,
  });

  @override
  ConsumerState<CoachRankingWidget> createState() => _CoachRankingWidgetState();
}

class _CoachRankingWidgetState extends ConsumerState<CoachRankingWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dashboardState = ref.watch(dashboardViewModelProvider);
    final completedSchedules = dashboardState.completedSchedules;
    final repurchaseList = dashboardState.repurchaseList;
    final newRegistrationList = dashboardState.newRegistrationList;
    final currentMonthReviews = dashboardState.currentMonthReviews;

    // customerSatisfaction일 때는 currentMonthReviews를 사용
    if (widget.selectedStatType == DashboardStatType.customerSatisfaction) {
      final trainerSatisfactionCounts = currentMonthReviews.map((item) {
        // 트레이너별 만족도 평균 계산
        final satisfactions =
            item.scheduleReviews.map((review) => review.satisfaction).toList();
        final avgSatisfaction = satisfactions.isNotEmpty
            ? satisfactions.reduce((a, b) => a + b) / satisfactions.length
            : 0.0;

        return _TrainerSatisfactionCount(
          trainer: _userProfileModelToEntity(item.trainer),
          satisfaction: avgSatisfaction,
        );
      }).toList()
        ..sort((a, b) => b.satisfaction.compareTo(a.satisfaction));

      return Container(
        height: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '지표별 강사 순위',
              style: SsentifTextStyles.bold16(context).copyWith(
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: trainerSatisfactionCounts.length,
                  itemBuilder: (context, index) {
                    final item = trainerSatisfactionCounts[index];
                    final backgroundColor = index % 2 == 1
                        ? widget.selectedStatType.selectedBgColor
                        : null;

                    return TrainerRankingItem(
                      trainer: item.trainer,
                      count: (item.satisfaction).toInt(),
                      backgroundColor: backgroundColor,
                      suffix: "%",
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }

    // reenrollment일 때는 repurchaseList를 사용
    if (widget.selectedStatType == DashboardStatType.reenrollment) {
      final trainerRepurchaseCounts = repurchaseList.map((item) {
        return _TrainerRepurchaseCount(
          trainer: _userProfileModelToEntity(item.trainer),
          reissuedCount: item.reissuedCount,
        );
      }).toList()
        ..sort((a, b) => b.reissuedCount.compareTo(a.reissuedCount));

      return Container(
        height: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '지표별 강사 순위',
              style: SsentifTextStyles.bold16(context).copyWith(
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: trainerRepurchaseCounts.length,
                  itemBuilder: (context, index) {
                    final item = trainerRepurchaseCounts[index];
                    final backgroundColor = index % 2 == 1
                        ? widget.selectedStatType.selectedColor.withValues(
                            alpha: widget.selectedStatType ==
                                    DashboardStatType.customerSatisfaction
                                ? 0.3
                                : widget.selectedStatType ==
                                        DashboardStatType.recordWritingRate
                                    ? 0.01
                                    : widget.selectedStatType ==
                                            DashboardStatType.reenrollment
                                        ? 0.3
                                        : 0.2)
                        : null;

                    return TrainerRankingItem(
                      trainer: item.trainer,
                      count: item.reissuedCount,
                      backgroundColor: backgroundColor,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }

    // newlyRegistration일 때는 newRegistrationList를 사용
    if (widget.selectedStatType == DashboardStatType.newlyRegistration) {
      final trainerNewRegistrationCounts = newRegistrationList.map((item) {
        return _TrainerRepurchaseCount(
          trainer: _userProfileModelToEntity(item.trainer),
          reissuedCount: item.newRegistrationCount,
        );
      }).toList()
        ..sort((a, b) => b.reissuedCount.compareTo(a.reissuedCount));

      return Container(
        height: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '지표별 강사 순위',
              style: SsentifTextStyles.bold16(context).copyWith(
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: trainerNewRegistrationCounts.length,
                  itemBuilder: (context, index) {
                    final item = trainerNewRegistrationCounts[index];
                    final backgroundColor = index % 2 == 1
                        ? widget.selectedStatType.selectedColor.withValues(alpha: 0.3)
                        : null;

                    return TrainerRankingItem(
                      trainer: item.trainer,
                      count: item.reissuedCount,
                      backgroundColor: backgroundColor,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }

    // 트레이너별 스케줄 횟수 계산 및 정렬
    final trainerScheduleCounts = completedSchedules.map((item) {
      final totalCount = item.schedules.length;
      final hasRoutineCount =
          item.schedules.where((schedule) => schedule.hasRoutine).length;
      return _TrainerScheduleCount(
        trainer: item.trainer,
        count: totalCount,
        hasRoutineCount: hasRoutineCount,
      );
    }).toList()
      ..sort((a, b) {
        // 선택된 statType에 따라 정렬 기준 변경
        if (widget.selectedStatType == DashboardStatType.recordWritingRate) {
          return b.hasRoutineCount.compareTo(a.hasRoutineCount);
        }
        return b.count.compareTo(a.count);
      });

    return Container(
      height: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지표별 강사 순위',
            style: SsentifTextStyles.bold16(context).copyWith(
              color: AppColors.black,
            ),
          ),
          if (widget.selectedStatType == DashboardStatType.totalClassCount ||
              widget.selectedStatType == DashboardStatType.recordWritingRate ||
              widget.selectedStatType == DashboardStatType.reenrollment) ...[
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: trainerScheduleCounts.length,
                  itemBuilder: (context, index) {
                    final item = trainerScheduleCounts[index];
                    final backgroundColor = index % 2 == 1
                        ? widget.selectedStatType.selectedBgColor
                        : null;

                    // recordWritingRate일 때는 hasRoutineCount를 사용
                    final displayCount = widget.selectedStatType ==
                            DashboardStatType.recordWritingRate
                            ? item.hasRoutineCount
                            : item.count;

                    return TrainerRankingItem(
                      trainer: item.trainer,
                      count: displayCount,
                      backgroundColor: backgroundColor,
                    );
                  },
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // UserProfileModel을 UserEntity로 변환하는 헬퍼 메서드
  UserEntity _userProfileModelToEntity(UserProfileModel trainerModel) {
    return UserEntity(
      userId: trainerModel.id,
      userName: trainerModel.name,
      imageUrl: trainerModel.imgUrl,
      email: trainerModel.email,
      phoneNumber: trainerModel.phoneNumber,
      birthDate: trainerModel.birthDate,
      gender: trainerModel.sex.isNotEmpty
          ? GenderType.findGenderType(trainerModel.sex)
          : GenderType.male,
      workPlaceId: trainerModel.workplaceId,
      workPlaceName: trainerModel.workplaceName,
      workPlaceAddress: trainerModel.workplaceAddress,
      workPlaceAddressDetail: trainerModel.workplaceAddressDetail,
      workPosition: trainerModel.workType.isNotEmpty
          ? WorkPosition.getWorkPositionFromDTO(trainerModel.workType)
          : null,
    );
  }
}

class _TrainerScheduleCount {
  final UserEntity trainer;
  final int count;
  final int hasRoutineCount;

  _TrainerScheduleCount({
    required this.trainer,
    required this.count,
    required this.hasRoutineCount,
  });
}

class _TrainerRepurchaseCount {
  final UserEntity trainer;
  final int reissuedCount;

  _TrainerRepurchaseCount({
    required this.trainer,
    required this.reissuedCount,
  });
}

class _TrainerSatisfactionCount {
  final UserEntity trainer;
  final double satisfaction;

  _TrainerSatisfactionCount({
    required this.trainer,
    required this.satisfaction,
  });
}
