class MonthlyScheduleReviewAverageEntity {
  final String yearMonth; // yyyy-MM 형식
  final double averageSatisfaction; // satisfaction 평균값

  MonthlyScheduleReviewAverageEntity({
    required this.yearMonth,
    required this.averageSatisfaction,
  });
}

