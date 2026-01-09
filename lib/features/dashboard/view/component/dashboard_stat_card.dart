import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';
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
    final iconSize = DeviceSizeUtils().getResponsiveSize(32, 6, context);
    final cardWidth = DeviceSizeUtils().getResponsiveSize(250, 40, context);
    final borderRadius = DeviceSizeUtils().getResponsiveSize(8, 2, context);

    return SizedBox(
      width: cardWidth,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: DeviceSizeUtils().getResponsiveDouble(16, 4, context),
          horizontal: DeviceSizeUtils().getResponsiveDouble(12, 3, context),
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 카테고리
            Text(
              statType.category,
              style: SsentifTextStyles.medium14(context).copyWith(
                color: AppColors.gray2,
              ),
            ),
            const SizedBox(height: 8),
            // 아이콘, 값, 단위, 전월 대비
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // 아이콘
                statType.icon.image(width: iconSize, height: iconSize),
                DeviceSizeUtils().getResponsiveSizedBoxWidth(12, 4, context),
                // 값과 단위
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value,
                      style: SsentifTextStyles.bold20(context).copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        statType.unit,
                        style: SsentifTextStyles.bold14(context).copyWith(
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
                      style: SsentifTextStyles.medium10(context).copyWith(
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
                          width: DeviceSizeUtils()
                              .getResponsiveDouble(8, 1, context),
                          height: DeviceSizeUtils()
                              .getResponsiveDouble(8, 1, context),
                          color: momColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          statType == DashboardStatType.totalClassCount ||
                                  statType == DashboardStatType.reenrollment ||
                                  statType ==
                                      DashboardStatType.newlyRegistration
                              ? '${mom.abs().toInt()}${statType.unit}'
                              : '${mom.abs().toStringAsFixed(1)}${statType.unit}',
                          style: SsentifTextStyles.medium12(context).copyWith(
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
