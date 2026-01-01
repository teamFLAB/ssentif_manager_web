import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_routine_ratio_entity.freezed.dart';

@freezed
class MonthlyRoutineRatioEntity with _$MonthlyRoutineRatioEntity {
  const factory MonthlyRoutineRatioEntity({
    required String yearMonth,
    required double ratio,
  }) = _MonthlyRoutineRatioEntity;
}




