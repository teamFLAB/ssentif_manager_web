import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_review_response.freezed.dart';
part 'schedule_review_response.g.dart';

@freezed
class ScheduleReviewResponse with _$ScheduleReviewResponse {
  const factory ScheduleReviewResponse({
    @Default(-1) int id,
    @Default(-1) int scheduleId,
    @Default(-1) int trainerId,
    @Default("") String trainerName,
    @Default("") String trainerProfileImage,
    @Default(-1) int clientId,
    @Default("") String clientName,
    @Default("") String clientGender,
    @Default("") String scheduleDate,
    @Default(0.0) double satisfaction,
    @Default("") String review,
    @Default("") String clientStatus,
    @Default(false) bool isRead,
  }) = _ScheduleReviewResponse;

  factory ScheduleReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleReviewResponseFromJson(json);
}
