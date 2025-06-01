
import 'package:freezed_annotation/freezed_annotation.dart';
import 'daily_schedule_model.dart';
part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  factory ScheduleModel({
    @Default(ClassScheduleStatusModel()) ClassScheduleStatusModel schedulePresentCondition,
    @Default([]) List<DailyScheduleModel> dateScheduleInfoDtoList
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);
}

@freezed
class ClassScheduleStatusModel with _$ClassScheduleStatusModel {
  const factory ClassScheduleStatusModel({
    @Default(0) int classComplete,
    @Default(0) int reservationWait,
    @Default(0) int reservationComplete,
  }) = _ClassScheduleStatusModel;

  factory ClassScheduleStatusModel.fromJson(Map<String, dynamic> json) => _$ClassScheduleStatusModelFromJson(json);
}

