import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/schedule/view/effect/schedule_effect.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/schedule_intent.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../viewmodel/schedule_view_model.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../component/schedule_date_cell.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import '../component/schedule_header.dart';
import '../component/selected_date_timeline.dart';

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
      _calendarController.selectedDate = DateTime.now();

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
        handleEffect(ref);

        return Column(
          children: [
            ScheduleHeader(
              selectedDate: selectedDate,
              selectedMonth: selectedMonth,
              onPrevMonth: () {
                viewModel
                    .handleIntent(const ScheduleIntent.clickPreviousMonth());
              },
              onNextMonth: () {
                viewModel.handleIntent(const ScheduleIntent.clickNextMonth());
              },
              onToday: () {
                viewModel.handleIntent(const ScheduleIntent.clickTodayDate());
              },
              onSearchFilterChanged: (filter) {
                viewModel.handleIntent(
                    ScheduleIntent.updateSearchFilter(filter: filter));
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
                    child: SelectedDateTimeline(
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
                          viewModel.handleIntent(
                              ScheduleIntent.selectDate(date: date));
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
                        final schedules = state.filteredMonthlySchedules
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

  void handleEffect(WidgetRef ref) {
    ref.listen(scheduleEffectProvider, (previous, next) {
      if (next == null) return;
      ref.read(scheduleEffectProvider.notifier).state = null;

      next.when(
          navigateToScheduleDetail: (int scheduleId) {},
          showErrorDialog: (String errMsg) {},
          updateCalendarView: (DateTime dateTime, DateTime selectedDate) {
            _calendarController.displayDate = dateTime;
            _calendarController.selectedDate = selectedDate;
          },
          updateSelectedDateCell: (DateTime dateTime) {}
      );
    });
  }
}
