import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_effect.freezed.dart';

final scheduleEffectProvider =
    StateProvider.autoDispose<ScheduleEffect?>((ref) => null);

@freezed
class ScheduleEffect with _$ScheduleEffect {
  const factory ScheduleEffect.navigateToScheduleDetail(
      {required int scheduleId}) = _NavigateToScheduleDetail;
  const factory ScheduleEffect.showErrorDialog({required String message}) =
      _ShowErrorDialog;

  const factory ScheduleEffect.updateCalendarView(
      {required DateTime dateTime,
      required DateTime selectedDate}) = _UpdateCalendarView;
  const factory ScheduleEffect.updateSelectedDateCell(
      {required DateTime dateTime}) = _UpdateSelectedDateCell;
  const factory ScheduleEffect.showDateScheduleDialog(
      {required DateTime selectedDate}) = _ShowDateScheduleDialog;
  const factory ScheduleEffect.showLogoutDialog() = _ShowLogoutDialog;
  const factory ScheduleEffect.navToLogin() = _NavToLogin;
}
