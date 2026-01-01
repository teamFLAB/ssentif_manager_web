import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_schedule_count_entity.freezed.dart';

@freezed
class MonthlyScheduleCountEntity with _$MonthlyScheduleCountEntity {
  const factory MonthlyScheduleCountEntity({
    required String yearMonth,
    required int count,
  }) = _MonthlyScheduleCountEntity;
}

