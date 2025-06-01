import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';

class ScheduleDateCell extends StatelessWidget {
  final DateTime cellDate;
  final DateTime selectedDate;
  final List<CalendarScheduleEntity> schedules;
  const ScheduleDateCell({
    super.key,
    required this.cellDate,
    required this.selectedDate,
    this.schedules = const [],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isToday
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
          if (schedules.isNotEmpty)
            SizedBox(
              height: 48,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: schedules.length,
                itemBuilder: (context, idx) {
                  final s = schedules[idx];
                  return Container(
                    margin: const EdgeInsets.only(top: 2),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                    decoration: BoxDecoration(
                      color:
                          s.scheduleStatusType?.findColor() ?? AppColors.gray3,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Text(
                          s.startTime != null ? s.startTime!.formatHM() : '',
                          style: ScDreamStyles.medium10(AppColors.white),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            s.scheduleName,
                            style: ScDreamStyles.medium10(AppColors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
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
