import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../viewmodel/schedule_view_model.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../component/schedule_date_cell.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';

class ScheduleScreen extends ConsumerStatefulWidget {
  final List<UserEntity> coaches;

  const ScheduleScreen({super.key, required this.coaches});

  @override
  ConsumerState<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends ConsumerState<ScheduleScreen> {
  final CalendarController _calendarController = CalendarController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModelProvider = scheduleViewModelProvider(widget.coaches);
      ref.listen(viewModelProvider, (previous, next) {
        if (_calendarController.displayDate != next.selectedMonth) {
          _calendarController.displayDate = next.selectedMonth;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final viewModelProvider = scheduleViewModelProvider(widget.coaches);
        final viewModel = ref.read(viewModelProvider.notifier);
        final state = ref.watch(viewModelProvider);
        final selectedDate = state.selectedDate;
        final selectedMonth = state.selectedMonth;

        return Column(
          children: [
            ScheduleHeader(
              selectedDate: selectedDate,
              selectedMonth: selectedMonth,
              onPrevMonth: () {
                var newMonth = viewModel.setSelectedMonth(-1);
                _calendarController.displayDate = newMonth;
              },
              onNextMonth: () {
                var newMonth = viewModel.setSelectedMonth(1);
                _calendarController.displayDate = newMonth;
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
                    child: _SelectedDateTimeline(
                      selectedDate: selectedDate,
                      selectedDateSchedules: state.selectedDateSchedules,
                    ),
                  ),
                  Expanded(
                    child: SfCalendar(
                      controller: _calendarController,
                      view: CalendarView.month,
                      initialDisplayDate: selectedMonth,
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
                          dayTextStyle:
                              ScDreamStyles.medium14(AppColors.gray2)),
                      todayHighlightColor: AppColors.gray2,
                      backgroundColor: Colors.white,
                      monthCellBuilder: (context, details) {
                        final date = details.date;
                        final schedules = state.monthlySchedules
                            .where((s) =>
                                s.startTime != null &&
                                s.startTime!.year == date.year &&
                                s.startTime!.month == date.month &&
                                s.startTime!.day == date.day)
                            .toList();
                        return ScheduleDateCell(
                          cellDate: date,
                          selectedDate: selectedMonth,
                          schedules: schedules,
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
  final DateTime selectedMonth;
  final VoidCallback onPrevMonth;
  final VoidCallback onNextMonth;
  const ScheduleHeader({
    super.key,
    required this.selectedDate,
    required this.selectedMonth,
    required this.onPrevMonth,
    required this.onNextMonth,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = "${selectedMonth.year}년 ${selectedMonth.month}월";
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
                  child: Assets.images.icButtonPrevious
                      .image(width: 24, height: 24),
                ),
                const SizedBox(width: 8),
                Text(
                  formattedDate,
                  style: ScDreamStyles.extraBold18(AppColors.black),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: onNextMonth,
                  child:
                      Assets.images.icButtonNext.image(width: 24, height: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectedDateTimeline extends StatefulWidget {
  final DateTime selectedDate;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  const _SelectedDateTimeline(
      {required this.selectedDate, required this.selectedDateSchedules});

  @override
  State<_SelectedDateTimeline> createState() => _SelectedDateTimelineState();
}

class _SelectedDateTimelineState extends State<_SelectedDateTimeline> {
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
  void didUpdateWidget(covariant _SelectedDateTimeline oldWidget) {
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
    final itemHeight = 80.0; // minHeight와 동일하게 맞춤
    final index = (hour < startHour) ? 0 : (hour - startHour);
    final offset = (index * itemHeight) - (itemHeight * 2); // 중앙에 오도록 약간 위로
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
                ...hourSchedules.map((s) {
                  final scheduleTitle = s.scheduleName +
                      (s.scheduleStatusType ==
                              ScheduleStatusType.trainerEtcSchedule
                          ? ' 일정'
                          : ' 회원님');

                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      decoration: BoxDecoration(
                        color: s.scheduleStatusType?.findColor() ??
                            AppColors.gray3,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            s.startTime != null
                                ? s.startTime!.formatM() + '분'
                                : '',
                            style: ScDreamStyles.medium10(AppColors.white),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            (s.trainerName ?? '') +
                                ' 코치' +
                                '\n${scheduleTitle}',
                            style: ScDreamStyles.medium10(AppColors.white),
                          ),
                          // const SizedBox(width: 4),
                          // const Text('-',
                          //     style: ScDreamStyles.medium10(AppColors.white)),
                          // const SizedBox(width: 4),
                          // Text(
                          //   scheduleTitle,
                          //   style: ScDreamStyles.medium10(AppColors.white),
                          //   overflow: TextOverflow.ellipsis,
                          // ),
                        ],
                      ),
                    ),
                  );
                }),
            ],
          ),
        );
      },
    );
  }
}
