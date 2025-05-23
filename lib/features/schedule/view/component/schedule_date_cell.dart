import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class ScheduleDateCell extends StatelessWidget {
  final DateTime cellDate;
  final DateTime selectedDate;
  const ScheduleDateCell({
    super.key,
    required this.cellDate,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = cellDate.year == selectedDate.year &&
        cellDate.month == selectedDate.month &&
        cellDate.day == selectedDate.day;
    final isToday = cellDate.year == DateTime.now().year &&
        cellDate.month == DateTime.now().month &&
        cellDate.day == DateTime.now().day;
    return Container(
      padding: const EdgeInsets.only(top: 4, left: 6, right: 4, bottom: 4),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grayE4,
          width: 0.6,
        ),
      ),
      child: isToday
          ? Container(
              width: 31,
              height: 31,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${cellDate.day}',
                style: ScDreamStyles.medium18(AppColors.white),
              ),
            )
          : Text(
              '${cellDate.day}',
              style: ScDreamStyles.medium18(
                cellDate.month == selectedDate.month
                    ? Colors.black
                    : Colors.grey,
              ),
            ),
    );
  }
}
