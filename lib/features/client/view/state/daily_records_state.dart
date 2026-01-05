import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';

part 'daily_records_state.freezed.dart';

@freezed
class DailyRecordsState with _$DailyRecordsState {
  const factory DailyRecordsState({
    @Default(false) bool isLoading,
    @Default([]) List<RoutineHistoryModel> workoutRecords,
    Map<String, dynamic>? dietRecord,
    @Default([]) List<RoutineDtoWrapperModel> classRecords,
    ScheduleDetailEntity? scheduleDetail,
    @Default(ClientCalendarEventType.classEvent)
        ClientCalendarEventType selectedCategory,
  }) = _DailyRecordsState;
}

