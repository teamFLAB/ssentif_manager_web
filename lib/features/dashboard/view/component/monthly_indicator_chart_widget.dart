import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';

class MonthlyIndicatorChartWidget extends StatefulWidget {
  const MonthlyIndicatorChartWidget({super.key});

  @override
  State<MonthlyIndicatorChartWidget> createState() =>
      _MonthlyIndicatorChartWidgetState();
}

class _MonthlyIndicatorChartWidgetState
    extends State<MonthlyIndicatorChartWidget> {
  DashboardStatType _selectedStatType = DashboardStatType.totalClassCount;

  @override
  Widget build(BuildContext context) {
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
            '최근 6개월 지표 변화',
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
        ],
      ),
    );
  }
}
