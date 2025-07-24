import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/calendar_type.dart';
part 'schedule_intent.freezed.dart';

@freezed
sealed class ScheduleIntent with _$ScheduleIntent {
  const factory ScheduleIntent.clickScheduleItem({required int scheduleId}) =
      _ClickScheduleItem;
  const factory ScheduleIntent.onRefreshScheduleList() = _OnRefreshScheduleList;
  const factory ScheduleIntent.clickPreviousMonth() = _ClickPreviousMonth;
  const factory ScheduleIntent.clickNextMonth() = _ClickNextMonth;
  const factory ScheduleIntent.clickTodayDate() = _ClickTodayDate;
  const factory ScheduleIntent.clickPreviousDay() = _ClickPreviousDay;
  const factory ScheduleIntent.clickNextDay() = _ClickNextDay;
  const factory ScheduleIntent.selectDate({required DateTime date}) =
      _SelectDate;
  const factory ScheduleIntent.onToggleCoach({required UserEntity coach}) =
      _OnToggleCoach;
  const factory ScheduleIntent.onSelectCalendarType(
      {required CalendarType type}) = _OnSelectCalendarType;
}
