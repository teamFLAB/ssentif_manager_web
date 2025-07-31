import 'package:freezed_annotation/freezed_annotation.dart';
import 'routine_history_entity.dart';

part 'routine_histories_with_page_info_entity.freezed.dart';

@freezed
class RoutineHistoriesWithPageInfoEntity
    with _$RoutineHistoriesWithPageInfoEntity {
  const factory RoutineHistoriesWithPageInfoEntity({
    @Default([]) List<RoutineHistoryEntity> classInfoDetailOfDateList,
    int? lastScheduleId,
    @Default(false) bool hasNext,
  }) = _RoutineHistoriesWithPageInfoEntity;
}
