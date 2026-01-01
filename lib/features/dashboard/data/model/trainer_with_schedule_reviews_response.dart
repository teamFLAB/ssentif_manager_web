import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/schedule_review_response.dart';

part 'trainer_with_schedule_reviews_response.freezed.dart';
part 'trainer_with_schedule_reviews_response.g.dart';

@freezed
class TrainerWithScheduleReviewsResponse with _$TrainerWithScheduleReviewsResponse {
  const factory TrainerWithScheduleReviewsResponse({
    required UserProfileModel trainer,
    @Default([]) List<ScheduleReviewResponse> scheduleReviews,
  }) = _TrainerWithScheduleReviewsResponse;

  factory TrainerWithScheduleReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainerWithScheduleReviewsResponseFromJson(json);
}

