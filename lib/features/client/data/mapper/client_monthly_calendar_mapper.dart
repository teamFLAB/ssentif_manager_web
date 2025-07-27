import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_monthly_calendar_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';

import '../../../../core/network/base_mapper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../shared/enumtype/client_calendar_event_type.dart';
import '../../../schedule/domain/enumtype/schedule_status_type.dart';
import '../../domain/entity/calendar_event_entity.dart';

final clientMonthlyCalendarMapperProvider = Provider<ClientMonthlyCalendarMapper>((ref) {
  return ClientMonthlyCalendarMapper();
});

class ClientMonthlyCalendarMapper extends BaseMapper<ClientMonthlyCalendarModel, List<CalendarEventEntity>>{
  @override
  List<CalendarEventEntity> map(ClientMonthlyCalendarModel data) {
    List<CalendarEventEntity> events = [];

    for (var eventsPerDay in data.calendarDaysV2Responses) {
      var eventDate = eventsPerDay.day.toDateTime();

      var classEvents = eventsPerDay.schedules.map((classInfo) {
        var classType = ClientCalendarEventType.classEvent;

        if(classInfo.scheduleStatus == ScheduleStatusTypeDto.reservationWait) {
          classType = ClientCalendarEventType.classRequestEvent;
        }

        if(classInfo.scheduleStatus == ScheduleStatusTypeDto.classComplete) {
          classType = ClientCalendarEventType.classCompleteEvent;
        }

        if(classInfo.scheduleStatus == ScheduleStatusTypeDto.reservationComplete) {
          classType = ClientCalendarEventType.reservationCompleteEvent;
        }

        return CalendarEventEntity(
            eventId: classInfo.scheduleId,
            name: ClientCalendarEventType.findTypeName(classType),
            eventType: classType,
            startDateTime: eventDate,
            endDateTime: eventDate,
            backgroundColor: classType == ClientCalendarEventType.classRequestEvent
                ? AppColors.subColorOrange
                : classType == ClientCalendarEventType.classCompleteEvent
                ? AppColors.subColorBlue
                : AppColors.primary
        );
      }).toList();

      var workoutEvents = eventsPerDay.workoutIds.map((workoutId) {
        var workoutType = ClientCalendarEventType.workoutEvent;
        return CalendarEventEntity(
            eventId: workoutId,
            name: ClientCalendarEventType.findTypeName(workoutType),
            eventType: workoutType,
            startDateTime: eventDate,
            endDateTime: eventDate,
            backgroundColor: AppColors.subColorRed
        );
      }).toList();

      events.addAll(classEvents);
      events.addAll(workoutEvents);

      if(eventsPerDay.dietId != -1) {
        var dietType = ClientCalendarEventType.dietEvent;
        var diet = CalendarEventEntity(
            eventId: eventsPerDay.dietId,
            name: ClientCalendarEventType.findTypeName(dietType),
            eventType: dietType,
            startDateTime: eventDate,
            endDateTime: eventDate,
            backgroundColor: AppColors.subColorPurple
        );
        events.add(diet);
      }
    }
    return events;
  }
}