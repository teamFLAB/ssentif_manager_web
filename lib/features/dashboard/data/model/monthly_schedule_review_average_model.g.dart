// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_schedule_review_average_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyScheduleReviewAverageModelImpl
    _$$MonthlyScheduleReviewAverageModelImplFromJson(
            Map<String, dynamic> json) =>
        _$MonthlyScheduleReviewAverageModelImpl(
          date: json['date'] as String? ?? "",
          averageSatisfaction:
              (json['averageSatisfaction'] as num?)?.toDouble() ?? 0.0,
        );

Map<String, dynamic> _$$MonthlyScheduleReviewAverageModelImplToJson(
        _$MonthlyScheduleReviewAverageModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'averageSatisfaction': instance.averageSatisfaction,
    };
