import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_schedule_review_average_model.freezed.dart';
part 'monthly_schedule_review_average_model.g.dart';

@freezed
class MonthlyScheduleReviewAverageModel
    with _$MonthlyScheduleReviewAverageModel {
  const factory MonthlyScheduleReviewAverageModel({
    @Default("") String date, // yyyy-MM 형식
    @Default(0.0) double averageSatisfaction, // satisfaction 평균값
  }) = _MonthlyScheduleReviewAverageModel;

  factory MonthlyScheduleReviewAverageModel.fromJson(
          Map<String, dynamic> json) =>
      _$MonthlyScheduleReviewAverageModelFromJson(json);
}

