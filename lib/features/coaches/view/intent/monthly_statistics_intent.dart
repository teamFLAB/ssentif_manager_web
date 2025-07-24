import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_statistics_intent.freezed.dart';

@freezed
sealed class MonthlyStatisticsIntent with _$MonthlyStatisticsIntent {
  const factory MonthlyStatisticsIntent.clickThisMonth() = _ClickThisMonth;
  const factory MonthlyStatisticsIntent.clickPreviousMonth() =
      _ClickPreviousMonth;
  const factory MonthlyStatisticsIntent.clickNextMonth() = _ClickNextMonth;
}
