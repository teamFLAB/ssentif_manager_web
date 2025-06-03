

import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../domain/entity/calendar_schedule_entity.dart';

class WeeklyCalendarSource extends CalendarDataSource {
  WeeklyCalendarSource(List<CalendarScheduleEntity> source) {
    appointments = source;
  }

  @override
  String? getNotes(int index) {
    return appointments![index].notes;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].startTime;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].endTime;
  }

  @override
  String getSubject(int index) {
    return appointments![index].scheduleName;
  }
}
