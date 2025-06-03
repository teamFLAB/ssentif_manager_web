
import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_intent.freezed.dart';

@freezed
sealed class ScheduleIntent with _$ScheduleIntent {
  const factory ScheduleIntent.clickScheduleItem({required int scheduleId}) =
      _ClickScheduleItem;
  const factory ScheduleIntent.onRefreshScheduleList() = _OnRefreshScheduleList;
  const factory ScheduleIntent.clickPreviousMonth() = _ClickPreviousMonth;
  const factory ScheduleIntent.clickNextMonth() = _ClickNextMonth;
  const factory ScheduleIntent.clickTodayDate() = _ClickTodayDate;
  const factory ScheduleIntent.selectDate({required DateTime date}) =
      _SelectDate;
  const factory ScheduleIntent.updateSearchFilter({required String filter}) =
      _UpdateSearchFilter;
}
