import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';

part 'class_records_effect.freezed.dart';

@freezed
class ClassRecordsEffect with _$ClassRecordsEffect {
  const factory ClassRecordsEffect.showRoutineDetailDialog(
      {required RoutineHistoryEntity record}) = _ShowRoutineDetailDialog;
}
