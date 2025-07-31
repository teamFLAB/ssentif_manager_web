import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'class_records_intent.freezed.dart';

@freezed
class ClassRecordsIntent with _$ClassRecordsIntent {
  const factory ClassRecordsIntent.initialize() = _Initialize;
  const factory ClassRecordsIntent.clickThisMonth() = _ClickThisMonth;
  const factory ClassRecordsIntent.clickPreviousMonth() = _ClickPreviousMonth;
  const factory ClassRecordsIntent.clickNextMonth() = _ClickNextMonth;
  const factory ClassRecordsIntent.toggleCoachSelection(
      {required UserEntity user}) = _ToggleCoachSelection;
}
