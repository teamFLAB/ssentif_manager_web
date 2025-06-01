
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';

import '../../../../core/network/base_mapper.dart';
import '../../domain/entity/calendar_entity.dart';
import '../../domain/entity/calendar_schedule_entity.dart';
import '../../domain/enumtype/schedule_status_type.dart';
import '../model/calendar_schedule_model.dart';
import '../model/schedule_model.dart';

final scheduleMapper = Provider<ScheduleMapper>((ref) {
  final calendarScheduleMapper = ref.read(calendarScheduleMapperProvider);
  return ScheduleMapper(calendarScheduleMapper: calendarScheduleMapper);
});

final calendarScheduleMapperProvider = Provider<CalendarScheduleMapper>((ref) {
  return CalendarScheduleMapper();
});

class ScheduleMapper extends BaseMapper<ScheduleModel, CalendarEntity> {
  final CalendarScheduleMapper calendarScheduleMapper;

  ScheduleMapper({required this.calendarScheduleMapper});

  @override
  CalendarEntity map(ScheduleModel data) {
    var scheduleStatus = data.schedulePresentCondition;
    return CalendarEntity(
        scheduleStatus: ScheduleStatusEntity(
            classCompleteCount: scheduleStatus.classComplete,
            reservationCompleteCount: scheduleStatus.reservationComplete,
            reservationWaitCount: scheduleStatus.reservationWait
        ),
        schedules: data.dateScheduleInfoDtoList.map((dailySchedule) {
          return dailySchedule.scheduleInfoDtoList.map((schedule) {
            return calendarScheduleMapper.map(schedule);
          }).toList();
        }).toList().flatten()
    );
  }
}

class CalendarScheduleMapper extends BaseMapper<CalendarScheduleModel, CalendarScheduleEntity> {
  @override
  CalendarScheduleEntity map(CalendarScheduleModel data) {
    return CalendarScheduleEntity(
        scheduleId: data.scheduleId,
        scheduleName: data.title,
        runningTime: data.timeRequired,
        startTime: data.scheduleReservationStartDateTime.toDateTime(),
        endTime: data.scheduleReservationEndDateTime.toDateTime(),
        scheduleStatusType: ScheduleStatusTypeDto.findScheduleStatusType(data.scheduleStatus)
    );
  }
}
