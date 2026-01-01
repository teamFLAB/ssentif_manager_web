import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_schedule_count_model.freezed.dart';
part 'monthly_schedule_count_model.g.dart';

@freezed
class MonthlyScheduleCountModel with _$MonthlyScheduleCountModel {
  factory MonthlyScheduleCountModel({
    required String date,
    required int scheduleCount,
  }) = _MonthlyScheduleCountModel;

  factory MonthlyScheduleCountModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyScheduleCountModelFromJson(json);
}

