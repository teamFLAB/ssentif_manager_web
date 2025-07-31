import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_histories_with_page_info_entity.dart';
import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'class_records_state.freezed.dart';

@freezed
class ClassRecordsState with _$ClassRecordsState {
  const factory ClassRecordsState({
    required DateTime selectedMonth,
    @Default([]) List<RoutineHistoryEntity> classRecords,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default('') String errorMessage,
    int? lastScheduleId,
    @Default(false) bool hasNext,
    @Default([]) List<UserEntity> selectedCoaches,
  }) = _ClassRecordsState;
}
