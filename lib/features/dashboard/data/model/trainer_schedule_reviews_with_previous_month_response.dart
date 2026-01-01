import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_with_schedule_reviews_response.dart';

part 'trainer_schedule_reviews_with_previous_month_response.freezed.dart';
part 'trainer_schedule_reviews_with_previous_month_response.g.dart';

@freezed
class TrainerScheduleReviewsWithPreviousMonthResponse
    with _$TrainerScheduleReviewsWithPreviousMonthResponse {
  const factory TrainerScheduleReviewsWithPreviousMonthResponse({
    @Default([]) List<TrainerWithScheduleReviewsResponse> currentMonth,
    @Default([]) List<TrainerWithScheduleReviewsResponse> previousMonth,
  }) = _TrainerScheduleReviewsWithPreviousMonthResponse;

  factory TrainerScheduleReviewsWithPreviousMonthResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TrainerScheduleReviewsWithPreviousMonthResponseFromJson(json);
}

