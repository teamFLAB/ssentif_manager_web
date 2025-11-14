import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/trainer_ranking_item.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class CoachRankingWidget extends ConsumerStatefulWidget {
  const CoachRankingWidget({super.key});

  @override
  ConsumerState<CoachRankingWidget> createState() => _CoachRankingWidgetState();
}

class _CoachRankingWidgetState extends ConsumerState<CoachRankingWidget> {
  DashboardStatType _selectedStatType = DashboardStatType.totalClassCount;

  @override
  Widget build(BuildContext context) {
    final dashboardState = ref.watch(dashboardViewModelProvider);
    final completedSchedules = dashboardState.completedSchedules;

    // 트레이너별 스케줄 횟수 계산 및 정렬
    final trainerScheduleCounts = completedSchedules
        .map((item) => _TrainerScheduleCount(
              trainer: item.trainer,
              count: item.schedules.length,
            ))
        .toList()
      ..sort((a, b) => b.count.compareTo(a.count));

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
            style: SsentifTextStyles.bold16.copyWith(
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ...DashboardStatType.values.map((statType) {
                final isSelected = _selectedStatType == statType;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedStatType = statType;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? statType.selectedColor
                            : AppColors.gray3,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        statType.category,
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
          if (_selectedStatType == DashboardStatType.totalClassCount) ...[
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                  itemCount: trainerScheduleCounts.length,
                  itemBuilder: (context, index) {
                    final item = trainerScheduleCounts[index];
                    final backgroundColor = index % 2 == 0
                        ? const Color(0xFFF1FCFF).withValues(alpha: 0.5)
                        : const Color(0xFFF7F7F7).withValues(alpha: 0.5);

                    return TrainerRankingItem(
                      trainer: item.trainer,
                      count: item.count,
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
}

class _TrainerScheduleCount {
  final UserEntity trainer;
  final int count;

  _TrainerScheduleCount({
    required this.trainer,
    required this.count,
  });
}
