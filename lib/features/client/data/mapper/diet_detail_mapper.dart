import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/client/data/model/diet_detail_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/media_file_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_time_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';

final dietDetailMapperProvider = Provider<DietDetailMapper>((ref) {
  final dietFeedbackMapper = ref.read(dietFeedbackMapperProvider);
  return DietDetailMapper(dietFeedbackMapper: dietFeedbackMapper);
});

final dietFeedbackMapperProvider = Provider<DietFeedbackMapper>((ref) {
  return DietFeedbackMapper();
});

class DietDetailMapper extends BaseMapper<DietModel, DietEntity> {
  final DietFeedbackMapper dietFeedbackMapper;

  DietDetailMapper({required this.dietFeedbackMapper});

  @override
  DietEntity map(DietModel data) {
    var date = data.time.convertDateFormat(
      formatBefore: Constants.fullDateFormat,
      formatAfter: Constants.localizationDateFormat(),
    );
    var time = data.time.convertDateFormat(
      formatBefore: Constants.fullDateFormat,
      formatAfter: Constants.hourMinutesFormat,
    );

    return DietEntity(
      dietId: data.id ?? -1,
      mealTakeDate: date,
      mealTakeTime: time,
      dietImages: data.img.map((e) {
        return MediaFileEntity(remoteUrl: e, thumbnailUrl: e);
      }).toList(),
      mealTimeType: MealTimeType.findMealTimeType(data.mealTime) ??
          MealTimeType.breakfast,
      mealType: MealType.findMealType(data.mealType) ?? MealType.normal,
      memo: data.memo,
      hasFeedback: data.feedbackResponse != null,
      dietFeedback: data.feedbackResponse != null
          ? dietFeedbackMapper.map(data.feedbackResponse!)
          : null,
    );
  }
}

class DietFeedbackMapper
    extends BaseMapper<DietFeedbackModel, DietFeedbackEntity> {
  @override
  DietFeedbackEntity map(DietFeedbackModel data) {
    return DietFeedbackEntity(
      totalTag: FeedbackTagType.findTag(data.tag),
      increaseTags: data.increase,
      decreaseTags: data.decrease,
      feedback: data.feedback,
    );
  }
}

