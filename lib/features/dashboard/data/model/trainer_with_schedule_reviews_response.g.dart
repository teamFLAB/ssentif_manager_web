// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_with_schedule_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerWithScheduleReviewsResponseImpl
    _$$TrainerWithScheduleReviewsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$TrainerWithScheduleReviewsResponseImpl(
          trainer: UserProfileModel.fromJson(
              json['trainer'] as Map<String, dynamic>),
          scheduleReviews: (json['scheduleReviews'] as List<dynamic>?)
                  ?.map((e) => ScheduleReviewResponse.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$TrainerWithScheduleReviewsResponseImplToJson(
        _$TrainerWithScheduleReviewsResponseImpl instance) =>
    <String, dynamic>{
      'trainer': instance.trainer,
      'scheduleReviews': instance.scheduleReviews,
    };
