import 'package:freezed_annotation/freezed_annotation.dart';

import 'calendar_schedule_model.dart';

part 'daily_schedule_model.freezed.dart';
part 'daily_schedule_model.g.dart';

@freezed
class DailyScheduleModel with _$DailyScheduleModel {
  const factory DailyScheduleModel({
    @Default("") String scheduleDate,
    @Default([]) List<CalendarScheduleModel> scheduleInfoDtoList
  }) = _DailyScheduleModel;

  factory DailyScheduleModel.fromJson(Map<String, dynamic> json) => _$DailyScheduleModelFromJson(json);
}