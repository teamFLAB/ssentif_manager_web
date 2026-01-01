import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';

class DashboardStatTypeSelectorWidget extends StatelessWidget {
  final DashboardStatType selectedStatType;
  final ValueChanged<DashboardStatType> onStatTypeChanged;

  const DashboardStatTypeSelectorWidget({
    super.key,
    required this.selectedStatType,
    required this.onStatTypeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...DashboardStatType.values.map((statType) {
            final isSelected = selectedStatType == statType;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () {
                  onStatTypeChanged(statType);
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
    );
  }
}

