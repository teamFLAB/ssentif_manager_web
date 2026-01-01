
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_with_schedule_model.dart';

part 'trainer_schedules_with_prev_month_model.freezed.dart';
part 'trainer_schedules_with_prev_month_model.g.dart';

@freezed
class TrainerSchedulesWithPrevMonth with _$TrainerSchedulesWithPrevMonth {
  factory TrainerSchedulesWithPrevMonth({
    required List<TrainerWithScheduleModel> currentMonth,
    required List<TrainerWithScheduleModel> previousMonth
  }) = _TrainerSchedulesWithPrevMonth;

  factory TrainerSchedulesWithPrevMonth.fromJson(Map<String, dynamic> json) => _$TrainerSchedulesWithPrevMonthFromJson(json);
}