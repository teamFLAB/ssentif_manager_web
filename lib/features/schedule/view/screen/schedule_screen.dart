import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import '../viewmodel/schedule_view_model.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../component/schedule_date_cell.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final CalendarController _calendarController = CalendarController();
  DateTime? _lastSelectedDate;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final viewModel = ref.read(scheduleViewModelProvider.notifier);
        final selectedDate = ref.watch(scheduleViewModelProvider).selectedDate;

        if (_lastSelectedDate == null ||
            _lastSelectedDate!.year != selectedDate.year ||
            _lastSelectedDate!.month != selectedDate.month) {
          _calendarController.displayDate = selectedDate;
          _lastSelectedDate = selectedDate;
        }

        return Column(
          children: [
            ScheduleHeader(
              selectedDate: selectedDate,
              onPrevMonth: () {
                final prevMonth = DateTime(
                  selectedDate.year,
                  selectedDate.month - 1,
                  1,
                );
                viewModel.setSelectedDate(prevMonth);
              },
              onNextMonth: () {
                final nextMonth = DateTime(
                  selectedDate.year,
                  selectedDate.month + 1,
                  1,
                );
                viewModel.setSelectedDate(nextMonth);
              },
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border(
                            right:
                                BorderSide(color: AppColors.grayE4, width: 1))),
                    child: _TodayTimeline(selectedDate: selectedDate),
                  ),
                  Expanded(
                    child: SfCalendar(
                      controller: _calendarController,
                      view: CalendarView.month,
                      initialDisplayDate: selectedDate,
                      cellBorderColor: AppColors.grayE4,
                      onTap: (calendarTapDetails) {
                        final date = calendarTapDetails.date;
                        if (date != null) {
                          viewModel.setSelectedDate(date);
                        }
                      },
                      headerHeight: 0,
                      viewHeaderHeight: 40,
                      viewHeaderStyle: ViewHeaderStyle(
                        dayTextStyle: ScDreamStyles.medium14(AppColors.gray2)
                      ),
                      todayHighlightColor: AppColors.gray2,
                      backgroundColor: Colors.white,
                      monthCellBuilder: (context, details) {
                        return ScheduleDateCell(
                          cellDate: details.date,
                          selectedDate: selectedDate,
                        );
                      },
                      monthViewSettings: MonthViewSettings(
                        dayFormat: 'EE',
                      ),
                      selectionDecoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primary,
                          width: 2,
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ScheduleHeader extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPrevMonth;
  final VoidCallback onNextMonth;
  const ScheduleHeader({
    super.key,
    required this.selectedDate,
    required this.onPrevMonth,
    required this.onNextMonth,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = selectedDate.formatYearMonth();
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.grayE4, width: 1),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Row(
          children: [
            Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                '센터 일정 관리',
                style: ScDreamStyles.extraBold18(AppColors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onPrevMonth,
                  child: Assets.images.icButtonPrevious.image(width: 24, height: 24),
                ),
                const SizedBox(width: 8),
                Text(
                  formattedDate,
                  style: ScDreamStyles.extraBold18(AppColors.black),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: onNextMonth,
                  child: Assets.images.icButtonNext.image(width: 24, height: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 오늘 일정 타임라인 예시 위젯
class _TodayTimeline extends StatelessWidget {
  final DateTime selectedDate;
  const _TodayTimeline({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
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
          child: Center(
            child: Text(
              '오늘 일정 없음',
              style: ScDreamStyles.medium14(AppColors.gray2),
            ),
          ),
        ),
      ],
    );
  }
}
