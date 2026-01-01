import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_routine_ratio_model.freezed.dart';
part 'monthly_routine_ratio_model.g.dart';

@freezed
class MonthlyRoutineRatioModel with _$MonthlyRoutineRatioModel {
  factory MonthlyRoutineRatioModel({
    required String date,
    required int totalScheduleCount,
    required int routineScheduleCount,
    required double ratio,
  }) = _MonthlyRoutineRatioModel;

  factory MonthlyRoutineRatioModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyRoutineRatioModelFromJson(json);
}




