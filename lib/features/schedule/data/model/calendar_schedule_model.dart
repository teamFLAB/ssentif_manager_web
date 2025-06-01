
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_schedule_model.freezed.dart';
part 'calendar_schedule_model.g.dart';

@freezed
class CalendarScheduleModel with _$CalendarScheduleModel {
  const factory CalendarScheduleModel({
    @Default(-1) int scheduleId,
    @Default("") String scheduleStatus,
    @Default("") String title,
    @Default("") String scheduleReservationStartDateTime,
    @Default("") String scheduleReservationEndDateTime,
    @Default(0) int timeRequired,
    @Default("") String? repeatName
  }) = _CalendarScheduleModel;

  factory CalendarScheduleModel.fromJson(Map<String, dynamic> json) => _$CalendarScheduleModelFromJson(json);
}