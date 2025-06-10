import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'weekly_schedule_state.freezed.dart';

@freezed
class WeeklyScheduleState with _$WeeklyScheduleState {
  const factory WeeklyScheduleState({
    UserEntity? selectedUser,
    DateTime? scheduleStartDate,
    @Default([]) List<CalendarScheduleEntity> schedulesOfSelectedCoach,
    ScheduleDetailEntity? scheduleDetail
  }) = _WeeklyScheduleState;
}
