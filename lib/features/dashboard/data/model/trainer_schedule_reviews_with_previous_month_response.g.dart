// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_schedule_reviews_with_previous_month_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerScheduleReviewsWithPreviousMonthResponseImpl
    _$$TrainerScheduleReviewsWithPreviousMonthResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$TrainerScheduleReviewsWithPreviousMonthResponseImpl(
          currentMonth: (json['currentMonth'] as List<dynamic>?)
                  ?.map((e) => TrainerWithScheduleReviewsResponse.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          previousMonth: (json['previousMonth'] as List<dynamic>?)
                  ?.map((e) => TrainerWithScheduleReviewsResponse.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic>
    _$$TrainerScheduleReviewsWithPreviousMonthResponseImplToJson(
            _$TrainerScheduleReviewsWithPreviousMonthResponseImpl instance) =>
        <String, dynamic>{
          'currentMonth': instance.currentMonth,
          'previousMonth': instance.previousMonth,
        };
