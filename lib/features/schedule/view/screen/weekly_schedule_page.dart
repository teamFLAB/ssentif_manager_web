

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/schedule_detail_view.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/weekly_scheduler_widget.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/weekly_schedule_intent.dart';
import 'package:ssentif_manager_web/features/schedule/view/viewmodel/weekly_schedule_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../domain/entity/calendar_schedule_entity.dart';

class WeeklySchedulePage extends ConsumerStatefulWidget {
  final UserEntity? selectedCoach;

  const WeeklySchedulePage({
    super.key,
    required this.selectedCoach
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _WeeklySchedulePageState();
  }
}

class _WeeklySchedulePageState extends ConsumerState<WeeklySchedulePage> {
  final CalendarController _calendarController = CalendarController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var viewModel = ref.read(weeklyScheduleViewModelProvider.notifier);
      viewModel.handleIntent(
          WeeklyScheduleIntent.initialize(
              selectedCoach: widget.selectedCoach
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      var viewModel = ref.read(weeklyScheduleViewModelProvider.notifier);
      var state = ref.watch(weeklyScheduleViewModelProvider);
      return Container(
        padding: EdgeInsets.only(bottom: 40),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.gray4, width: 1)
                  ),
                  padding: EdgeInsets.all(2),
                  clipBehavior: Clip.hardEdge,
                  child: WeeklySchedulerWidget(
                      controller: _calendarController,
                      startDate: DateTime.now(),
                      schedules: state.schedulesOfSelectedCoach,
                      onClickSchedule: (CalendarScheduleEntity scheduleEntity) {
                        viewModel.handleIntent(
                            WeeklyScheduleIntent.onClickScheduleItem(
                                scheduleId: scheduleEntity.scheduleId
                            )
                        );
                      },
                      onWeekChanged: (DateTime changedWeekStart) {

                      },
                      onEmptyCellClicked: (DateTime clickedDateTime) {

                      }
                  ),
                ),
              ),
            ),
            SizedBox(width: 50),
            Container(color: AppColors.grayE4, width: 1),
            SizedBox(width: 50),
            Flexible(
                flex:1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: state.scheduleDetail != null ? Center(
                    child: ScheduleDetailView(
                        scheduleDetail: state.scheduleDetail!,
                        widthPercent: 1
                    ),
                  ) : Center(
                    child: Text(
                      "일정을 선택해주세요.",
                      style: SsentifTextStyles.medium16.copyWith(color: AppColors.gray3)
                    ),
                  ),
                )
            ),
            SizedBox(width: 50),
          ],
        ),
      );
    });
  }
}
