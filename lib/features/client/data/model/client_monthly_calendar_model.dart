import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_monthly_calendar_model.freezed.dart';
part 'client_monthly_calendar_model.g.dart';

@freezed
class ClientMonthlyCalendarModel with _$ClientMonthlyCalendarModel {
  const factory ClientMonthlyCalendarModel(
          {@Default(CalendarCountResponse())
          CalendarCountResponse calendarCountResponse,
          @Default([]) List<ClientCalendarDayModel> calendarDaysV2Responses}) =
      _ClientMonthlyCalendarModel;

  factory ClientMonthlyCalendarModel.fromJson(Map<String, dynamic> json) =>
      _$ClientMonthlyCalendarModelFromJson(json);
}

@freezed
class CalendarCountResponse with _$CalendarCountResponse {
  const factory CalendarCountResponse(
      {@Default(0) int workoutCounts,
      @Default(0) int scheduleCounts,
      @Default(0) int dietCounts}) = _CalendarCountResponse;

  factory CalendarCountResponse.fromJson(Map<String, dynamic> json) =>
      _$CalendarCountResponseFromJson(json);
}

@freezed
class ClientCalendarDayModel with _$ClientCalendarDayModel {
  const factory ClientCalendarDayModel(
      {@Default("") String day,
      @Default([]) List<int> workoutIds,
      @Default([]) List<ScheduleEventModel> schedules,
      @Default(-1) int dietId}) = _ClientCalendarDayModel;

  factory ClientCalendarDayModel.fromJson(Map<String, dynamic> json) =>
      _$ClientCalendarDayModelFromJson(json);
}

@freezed
class ScheduleEventModel with _$ScheduleEventModel {
  const factory ScheduleEventModel(
      {@Default(-1) int scheduleId,
      @Default("") String scheduleStatus}) = _ScheduleEventModel;

  factory ScheduleEventModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEventModelFromJson(json);
}
