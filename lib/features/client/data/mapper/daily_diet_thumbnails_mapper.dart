import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/model/monthly_diet_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/uploaded_diet_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/media_file_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';

final dailyDietThumbnailsMapperProvider =
    Provider<DailyDietThumbnailsMapper>((ref) {
  return DailyDietThumbnailsMapper();
});

class DailyDietThumbnailsMapper
    extends BaseMapper<DailyDietThumbnailsModel, List<UploadedDietEntity>> {
  @override
  List<UploadedDietEntity> map(DailyDietThumbnailsModel data) {
    return data.dietThumbnailResponses.map((thumbnail) {
      return UploadedDietEntity(
        dietId: thumbnail.id,
        date: data.date,
        feedbackTag: FeedbackTagType.findTag(thumbnail.tag),
        pictures: thumbnail.img
            .map((url) => MediaFileEntity(remoteUrl: url))
            .toList(),
      );
    }).toList();
  }
}

