import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:intl/intl.dart';

class ScheduleDateCell extends StatelessWidget {
  final DateTime cellDate;
  final DateTime selectedDate;
  final Map<ScheduleStatusType, int> schedules;
  const ScheduleDateCell({
    super.key,
    required this.cellDate,
    required this.selectedDate,
    this.schedules = const {},
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
      padding: const EdgeInsets.only(top: 10, left: 6, right: 4, bottom: 4),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grayE4,
          width: 0.6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isToday
              ? Container(
                  width: 26,
                  height: 26,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${cellDate.day}',
                    style: SsentifTextStyles.medium14.copyWith(color: AppColors.white),
                  ),
                )
              : Text(
                  '${cellDate.day}',
                  style: SsentifTextStyles.medium14.copyWith(color:
                    cellDate.month == selectedDate.month
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
          if(schedules.isNotEmpty)
            SizedBox(height: 6),
          if (schedules.isNotEmpty)
            Expanded(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: schedules.entries.length,
                itemBuilder: (context, idx) {
                  final scheduleType = schedules.keys.toList()[idx];
                  final scheduleCount = schedules.values.toList()[idx];

                  return Container(
                    margin: const EdgeInsets.only(top: 2),
                    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 6px 사각형 (scheduleStatus 색상)
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: scheduleType.findColor() ?? AppColors.gray3,
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        const SizedBox(width: 8), // 5px 간격
                        // 스케줄 상태 텍스트
                        Expanded(
                          child: Text(
                            Intl.message(scheduleType.findScheduleDetailStringKey()),
                            style: SsentifTextStyles.medium12.copyWith(color: AppColors.gray2),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // 스케줄 개수
                        Text(
                          '$scheduleCount',
                          style: SsentifTextStyles.medium12.copyWith(color: AppColors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
