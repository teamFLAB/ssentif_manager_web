import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';

class SelectedDateTimeline extends StatefulWidget {
  final DateTime selectedDate;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  const SelectedDateTimeline({
    required this.selectedDate,
    required this.selectedDateSchedules,
    super.key,
  });

  @override
  State<SelectedDateTimeline> createState() => _SelectedDateTimelineState();
}

class _SelectedDateTimelineState extends State<SelectedDateTimeline> {
  final ScrollController _scrollController = ScrollController();
  bool _scrolled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_scrolled) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToCurrentHour();
      });
      _scrolled = true;
    }
  }

  @override
  void didUpdateWidget(covariant SelectedDateTimeline oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedDateSchedules != oldWidget.selectedDateSchedules) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToCurrentHour();
      });
    }
  }

  void _scrollToCurrentHour() {
    final now = DateTime.now();
    final hour = now.hour;
    final startHour = 6;
    final itemHeight = 80.0;
    final index = (hour < startHour) ? 0 : (hour - startHour);
    final offset = (index * itemHeight) - (itemHeight * 2);
    _scrollController.jumpTo(offset > 0 ? offset : 0);
  }

  @override
  Widget build(BuildContext context) {
    final selectedDate = widget.selectedDate;
    final selectedDateSchedules = widget.selectedDateSchedules;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            selectedDate.formatDotYMDWithWeekday(),
            style: ScDreamStyles.extraBold14(AppColors.black),
          ),
        ),
        const Divider(height: 1, color: AppColors.grayE4),
        Expanded(
          child: selectedDateSchedules.isEmpty
              ? Center(
                  child: Text(
                    '오늘 일정 없음',
                    style: ScDreamStyles.medium14(AppColors.gray2),
                  ),
                )
              : _buildGroupedScheduleList(selectedDateSchedules),
        ),
      ],
    );
  }

  Widget _buildGroupedScheduleList(List<CalendarScheduleEntity> schedules) {
    final Map<int, List<CalendarScheduleEntity>> grouped = {};
    for (final s in schedules) {
      final hour = s.startTime?.hour ?? 0;
      grouped.putIfAbsent(hour, () => []).add(s);
    }
    final hours = List.generate(19, (i) => i + 6); // 6~24
    return ListView.builder(
      controller: _scrollController,
      itemCount: hours.length,
      itemBuilder: (context, idx) {
        final hour = hours[idx];
        final hourStr = hour.toString() + '시';
        final hourSchedules = grouped[hour] ?? [];
        return Container(
          constraints: BoxConstraints(minHeight: 80),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hourStr,
                style: hour == DateTime.now().hour
                    ? ScDreamStyles.bold12(AppColors.modalTextRed)
                    : ScDreamStyles.medium12(AppColors.gray2),
              ),
              const SizedBox(width: 8),
              if (hourSchedules.isEmpty)
                const SizedBox.shrink()
              else
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hourSchedules.map((s) {
                      final scheduleTitle = s.scheduleName +
                          (s.scheduleStatusType ==
                                  ScheduleStatusType.trainerEtcSchedule
                              ? ' 일정'
                              : ' 회원님');

                      return Container(
                        margin: const EdgeInsets.only(left: 4, bottom: 4),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 4),
                        decoration: BoxDecoration(
                          color: s.scheduleStatusType?.findColor() ??
                              AppColors.gray3,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              s.startTime != null
                                  ? s.startTime!.formatM() + '분'
                                  : '',
                              style: ScDreamStyles.medium10(AppColors.white),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              (s.trainerName ?? '') +
                                  ' 코치님' +
                                  '\n${scheduleTitle}',
                              style: ScDreamStyles.medium10(AppColors.white)
                                  .copyWith(height: 1.5)
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
