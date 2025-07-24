import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'coaches_state.freezed.dart';

@freezed
class CoachesState with _$CoachesState {
  const factory CoachesState({
    @Default([]) List<UserEntity> coaches,
    @Default(0) int selectedTabIdx,
    UserEntity? selectedUser,
    DateTime? scheduleStartDate,
    @Default([]) List<CalendarScheduleEntity> schedulesOfSelectedCoach,
    @Default(null) DateTime? calendarDate,
  }) = _CoachesState;
}
