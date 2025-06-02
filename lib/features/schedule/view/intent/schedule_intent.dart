// NOTE: 이 파일을 사용하려면 freezed 코드 생성이 필요합니다. (flutter pub run build_runner build)
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
