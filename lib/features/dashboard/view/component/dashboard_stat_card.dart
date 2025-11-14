import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import '../../../../gen/assets.gen.dart';

class DashboardStatCard extends StatelessWidget {
  final DashboardStatType statType;
  final String value;
  final double mom; // Month-over-Month: 전월 대비 변화율

  const DashboardStatCard({
    super.key,
    required this.statType,
    required this.value,
    required this.mom,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPositive = mom >= 0;
    final Color momColor =
        isPositive ? AppColors.subColorRed : AppColors.subColorBlue;

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 카테고리
            Text(
              statType.category,
              style: SsentifTextStyles.medium14.copyWith(
                color: AppColors.gray2,
              ),
            ),
            const SizedBox(height: 8),
            // 아이콘, 값, 단위, 전월 대비
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // 아이콘
                statType.icon.image(width: 32, height: 32),
                const SizedBox(width: 12),
                // 값과 단위
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value,
                      style: SsentifTextStyles.bold22.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        statType.unit,
                        style: SsentifTextStyles.bold14.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // 전월 대비
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '전월 대비',
                      style: SsentifTextStyles.medium10.copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        (isPositive
                                ? Assets.images.icPolygonIncrease
                                : Assets.images.icPolygonDecrease)
                            .image(
                          width: 8,
                          height: 8,
                          color: momColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${mom.abs().toStringAsFixed(1)}%',
                          style: SsentifTextStyles.medium12.copyWith(
                            color: momColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
