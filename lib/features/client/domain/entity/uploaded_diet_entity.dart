import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/media_file_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';

part 'uploaded_diet_entity.freezed.dart';

@freezed
abstract class UploadedDietEntity with _$UploadedDietEntity {
  factory UploadedDietEntity({
    int? dietId,
    @Default("") String date,
    @Default(FeedbackTagType.balanced) FeedbackTagType feedbackTag,
    @Default([]) List<MediaFileEntity> pictures,
  }) = _UploadedDietEntity;
}

