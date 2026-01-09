import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/client/domain/enumtype/event_type.dart';
import 'package:ssentif_manager_web/features/client/view/component/event_label_widget.dart';

class MonthlyCalendarWidget extends StatelessWidget {
  final DateTime selectedMonth;
  final Map<DateTime, List<EventType>> eventsByDate;
  final Function(DateTime)? onDayTap;

  const MonthlyCalendarWidget({
    super.key,
    required this.selectedMonth,
    required this.eventsByDate,
    this.onDayTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 요일 헤더
          _buildWeekdayHeader(context),
          // 날짜 그리드
          Expanded(
            child: _buildDateGrid(context),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekdayHeader(BuildContext context) {
    const weekdays = ['월', '화', '수', '목', '금', '토', '일'];
    const weekendColors = [
      AppColors.black, // 월
      AppColors.black, // 화
      AppColors.black, // 수
      AppColors.black, // 목
      AppColors.black, // 금
      AppColors.subColorBlue, // 토
      AppColors.subColorRed, // 일
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        children: List.generate(7, (index) {
          return Expanded(
            child: Center(
              child: Text(
                weekdays[index],
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: weekendColors[index],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildDateGrid(BuildContext context) {
    final firstDayOfMonth =
        DateTime(selectedMonth.year, selectedMonth.month, 1);
    final firstWeekday = firstDayOfMonth.weekday; // 1=월요일, 7=일요일

    // 이번 달의 첫 번째 날이 시작되는 주의 첫 번째 날 (월요일)
    final startDate =
        firstDayOfMonth.subtract(Duration(days: firstWeekday - 1));

    // 6주 x 7일 = 42개 셀
    final totalCells = 42;

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        childAspectRatio: 1.0,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
      ),
      itemCount: totalCells,
      itemBuilder: (context, index) {
        final currentDate = startDate.add(Duration(days: index));
        final isCurrentMonth = currentDate.month == selectedMonth.month;
        final isToday = _isToday(currentDate);
        final events = eventsByDate[currentDate] ?? [];

        return _buildDateCell(context, currentDate, isCurrentMonth, isToday, events);
      },
    );
  }

  Widget _buildDateCell(BuildContext context, DateTime date, bool isCurrentMonth, bool isToday,
      List<EventType> events) {
    return GestureDetector(
      onTap: () => onDayTap?.call(date),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grayE4, width: 0.5),
          color: isToday ? AppColors.primary.withOpacity(0.1) : AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 날짜 표시
              SizedBox(
                height: 22,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, right: 2),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: isToday ? AppColors.primary : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: SsentifTextStyles.medium10(context).copyWith(
                            color: _getDateTextColor(
                                date, isCurrentMonth, isToday),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // 이벤트 라벨들
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _buildEventLabels(context, events),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildEventLabels(BuildContext context, List<EventType> events) {
    // 중복 제거 (같은 타입의 이벤트는 하나만 표시)
    final uniqueEvents = events.toSet().toList();

    return uniqueEvents.take(3).map((eventType) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: EventLabelWidget(
          text: eventType.label,
          textStyle: SsentifTextStyles.regular10(context),
          backgroundColor: eventType.color,
        ),
      );
    }).toList();
  }

  Color _getDateTextColor(DateTime date, bool isCurrentMonth, bool isToday) {
    if (isToday) {
      return AppColors.white;
    }

    if (!isCurrentMonth) {
      return AppColors.gray2;
    }

    // 주말 색상
    if (date.weekday == 6) {
      // 토요일
      return AppColors.subColorBlue;
    } else if (date.weekday == 7) {
      // 일요일
      return AppColors.subColorRed;
    }

    return AppColors.black;
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }
}
