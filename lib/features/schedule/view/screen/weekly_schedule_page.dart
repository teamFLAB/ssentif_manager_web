

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/weekly_scheduler_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../domain/entity/calendar_schedule_entity.dart';

class WeeklySchedulePage extends ConsumerStatefulWidget {
  const WeeklySchedulePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _WeeklySchedulePageState();
  }
}

class _WeeklySchedulePageState extends ConsumerState<WeeklySchedulePage> {
  final CalendarController _calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: WeeklySchedulerWidget(
              controller: _calendarController,
              startDate: DateTime.now(),
              schedules: [],
              onClickSchedule: (CalendarScheduleEntity scheduleEntity) {

              },
              onWeekChanged: (DateTime changedWeekStart) {

              },
              onEmptyCellClicked: (DateTime clickedDateTime) {

              }
          ),
        ),
        SizedBox(width: 50),
        Container(color: AppColors.grayE4, width: 1),
        SizedBox(width: 10),
        Flexible(flex:1, child: Spacer())
      ],
    );
  }
}
