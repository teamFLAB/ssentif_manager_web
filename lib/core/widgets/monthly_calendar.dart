import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class MonthlyCalendar extends StatelessWidget {
  final DateTime selectedMonth;
  final Map<int, int> dailyScheduleCounts; // 날짜별 일정 갯수 (key: day, value: count)
  final Function(int day)? onDayTap; // 날짜 클릭 콜백

  const MonthlyCalendar({
    super.key,
    required this.selectedMonth,
    this.dailyScheduleCounts = const {},
    this.onDayTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // 요일 헤더
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildWeekdayHeader('월'),
              _buildWeekdayHeader('화'),
              _buildWeekdayHeader('수'),
              _buildWeekdayHeader('목'),
              _buildWeekdayHeader('금'),
              _buildWeekdayHeader('토'),
              _buildWeekdayHeader('일'),
            ],
          ),
          const SizedBox(height: 12),
          // 날짜 그리드
          ..._buildCalendarDays(),
        ],
      ),
    );
  }

  Widget _buildWeekdayHeader(String day) {
    return Text(
      day,
      style: SsentifTextStyles.bold14.copyWith(
        color: AppColors.black,
      ),
    );
  }

  List<Widget> _buildCalendarDays() {
    final List<Widget> rows = [];
    final DateTime firstDayOfMonth =
        DateTime(selectedMonth.year, selectedMonth.month, 1);
    final int daysInMonth =
        DateTime(selectedMonth.year, selectedMonth.month + 1, 0).day;
    final int startingDayOfWeek = firstDayOfMonth.weekday;

    List<Widget> currentRow = [];

    // Add empty boxes for days before the first day of the month
    for (int i = 0; i < startingDayOfWeek - 1; i++) {
      currentRow.add(const SizedBox(width: 40, height: 50));
    }

    for (int i = 1; i <= daysInMonth; i++) {
      final DateTime currentDay =
          DateTime(selectedMonth.year, selectedMonth.month, i);
      final bool isSaturday = currentDay.weekday == 6;
      final bool isSunday = currentDay.weekday == 7;
      final int scheduleCount = dailyScheduleCounts[i] ?? 0;

      Color textColor;
      if (isSaturday) {
        textColor = AppColors.subColorBlue;
      } else if (isSunday) {
        textColor = AppColors.subColorRed;
      } else {
        textColor = AppColors.black;
      }

      final bool isToday = DateTime.now().year == currentDay.year &&
          DateTime.now().month == currentDay.month &&
          DateTime.now().day == currentDay.day;

      currentRow.add(
        GestureDetector(
          onTap: () {
            if (onDayTap != null) {
              onDayTap!(i);
            }
          },
          child: Container(
            width: 40,
            height: 50,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isToday
                    ? Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          i.toString(),
                          style: SsentifTextStyles.medium16.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      )
                    : Text(
                        i.toString(),
                        style: SsentifTextStyles.medium16.copyWith(
                          color: textColor,
                        ),
                      ),
                const SizedBox(height: 4),
                Text(
                  '${scheduleCount}회',
                  style: SsentifTextStyles.regular12.copyWith(
                    color: isSaturday
                        ? AppColors.subColorBlue
                        : isSunday
                            ? AppColors.subColorRed
                            : AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

      // Start new row if we have 7 days
      if (currentRow.length == 7) {
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: currentRow,
        ));
        rows.add(const SizedBox(height: 8));
        currentRow = [];
      }
    }

    // Add remaining days in the last row
    if (currentRow.isNotEmpty) {
      // Fill remaining slots with empty boxes
      while (currentRow.length < 7) {
        currentRow.add(const SizedBox(width: 40, height: 50));
      }
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: currentRow,
      ));
    }

    return rows;
  }
}
