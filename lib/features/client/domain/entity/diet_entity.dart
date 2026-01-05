import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/media_file_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_time_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';

part 'diet_entity.freezed.dart';

@freezed
abstract class DietEntity with _$DietEntity {
  factory DietEntity({
    @Default(-1) int dietId,
    @Default("") String mealTakeDate,
    @Default("") String mealTakeTime,
    @Default([]) List<MediaFileEntity> dietImages,
    @Default(MealTimeType.breakfast) MealTimeType mealTimeType,
    @Default(MealType.normal) MealType mealType,
    @Default("") String memo,
    @Default(false) bool hasFeedback,
    DietFeedbackEntity? dietFeedback,
  }) = _DietEntity;
}

@freezed
abstract class DietFeedbackEntity with _$DietFeedbackEntity {
  factory DietFeedbackEntity({
    @Default(FeedbackTagType.none) FeedbackTagType totalTag,
    @Default([]) List<String> increaseTags,
    @Default([]) List<String> decreaseTags,
    @Default("") String feedback,
  }) = _DietFeedbackEntity;
}

