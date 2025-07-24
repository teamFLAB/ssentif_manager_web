import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'monthly_statistics_state.freezed.dart';

@freezed
class MonthlyStatisticsState with _$MonthlyStatisticsState {
  const factory MonthlyStatisticsState({
    required DateTime selectedMonth,
    @Default(0) int totalClassCount,
    @Default(0) int attendanceCount,
    @Default(0) int reservationCount,
    @Default(0) int reservationRequestCount,
    @Default(0) int etcCount,
    @Default({}) Map<int, int> dailyScheduleCounts, // 날짜별 일정 갯수
    UserEntity? selectedCoach,
  }) = _MonthlyStatisticsState;
}
