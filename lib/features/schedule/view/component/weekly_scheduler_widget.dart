

import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/features/schedule/view/utils/weekly_calendar_source.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../core/themes/app_colors.dart';
import '../../domain/entity/calendar_schedule_entity.dart';

class WeeklySchedulerWidget extends StatelessWidget {
  final CalendarController controller;
  final DateTime startDate;
  final List<CalendarScheduleEntity> schedules;
  final Function(CalendarScheduleEntity scheduleEntity) onClickSchedule;
  final Function(DateTime changedWeekStart) onWeekChanged;
  final Function(DateTime clickedDateTime) onEmptyCellClicked;

  const WeeklySchedulerWidget(
      {super.key, required this.controller,
        required this.startDate,
        required this.schedules,
        required this.onClickSchedule,
        required this.onWeekChanged,
        required this.onEmptyCellClicked});

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      showNavigationArrow: true,
      controller: controller,
      view: CalendarView.week,
      showDatePickerButton: true,
      headerStyle: CalendarHeaderStyle(
          backgroundColor: AppColors.white,
          textAlign: TextAlign.center,
          textStyle: ScDreamStyles.medium20(AppColors.black),
      ),
      todayTextStyle: ScDreamStyles.medium12(AppColors.black),
      showCurrentTimeIndicator: true,
      initialDisplayDate: startDate,
      firstDayOfWeek: 1,
      todayHighlightColor: AppColors.subColorRed,
      viewHeaderStyle: ViewHeaderStyle(
        dateTextStyle: ScDreamStyles.medium12(AppColors.gray1),
        dayTextStyle: ScDreamStyles.medium10(AppColors.gray1),
      ),
      timeSlotViewSettings: const TimeSlotViewSettings(
        startHour: 0,
        endHour: 24,
        timeTextStyle: ScDreamStyles.medium12(AppColors.black),
        timeFormat: 'a h',
        dateFormat: 'dd',
        dayFormat: 'E',
      ),
      backgroundColor: AppColors.white,
      appointmentTextStyle: ScDreamStyles.medium12(AppColors.white),
      cellEndPadding: 0,
      selectionDecoration: BoxDecoration(
          border: Border.all(color: AppColors.subColorRed, width: 1),
          borderRadius: BorderRadius.circular(4)),
      appointmentBuilder: (BuildContext context, CalendarAppointmentDetails calendarAppointmentDetails) {
        CalendarScheduleEntity? data;
        try {
          data = (calendarAppointmentDetails.appointments.first as CalendarScheduleEntity);
        } catch (e) {}
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: data?.scheduleStatusType?.findColor(),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Center(
            child: Text(
              calendarAppointmentDetails.appointments.first.scheduleName,
              style: ScDreamStyles.bold12(AppColors.white),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
      dataSource: WeeklyCalendarSource(schedules),
      onViewChanged: (ViewChangedDetails viewChangedDetails) {
        onWeekChanged(viewChangedDetails.visibleDates.first);
      },
      onSelectionChanged: (CalendarSelectionDetails calendarSelectionDetails) {
        // Cell Selection 변경되면 호출, appointment 클릭하면 콜백 안들어오는 듯
      },
      onTap: (CalendarTapDetails calendarTapDetails) {
        if (calendarTapDetails.appointments?.single != null) {
          onClickSchedule(calendarTapDetails.appointments?.single);
        } else if(calendarTapDetails.targetElement.index != 0) {
          // Calendar Header (M월 yyyy년)을 클릭했을 때도 onTap으로 callback이 들어옴.
          // 해당 header의 index는 0이기 때문에 액션이 겹치치 않게 하기 위해 분기처리.
          onEmptyCellClicked(calendarTapDetails.date!);
        }
      },
    );
  }
}
