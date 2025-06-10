
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
part 'weekly_schedule_intent.freezed.dart';

@freezed
sealed class WeeklyScheduleIntent with _$WeeklyScheduleIntent {
  const factory WeeklyScheduleIntent.initialize({ required UserEntity? selectedCoach }) = _Initialize;
  const factory WeeklyScheduleIntent.onChangePreviousWeek() = _OnChangePreviousWeek;
  const factory WeeklyScheduleIntent.onChangeNextWeek() = _OnChangeNextWeek;
  const factory WeeklyScheduleIntent.onSelectDate({ required DateTime selectedDate }) = _OnSelectDate;
  const factory WeeklyScheduleIntent.onClickScheduleItem({required int scheduleId}) = _OnClickScheduleItem;
}
