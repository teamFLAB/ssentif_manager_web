class StatMoms {
  final double totalClassCount;
  final double newlyRegistration;
  final double recordWritingRate;
  final double reenrollmentRate;
  final double customerSatisfaction;

  const StatMoms({
    this.totalClassCount = 0.0,
    this.newlyRegistration = 0.0,
    this.recordWritingRate = 0.0,
    this.reenrollmentRate = 0.0,
    this.customerSatisfaction = 0.0,
  });

  StatMoms copyWith({
    double? totalClassCount,
    double? newlyRegistration,
    double? recordWritingRate,
    double? reenrollmentRate,
    double? customerSatisfaction,
  }) {
    return StatMoms(
      totalClassCount: totalClassCount ?? this.totalClassCount,
      newlyRegistration: newlyRegistration ?? this.newlyRegistration,
      recordWritingRate: recordWritingRate ?? this.recordWritingRate,
      reenrollmentRate: reenrollmentRate ?? this.reenrollmentRate,
      customerSatisfaction: customerSatisfaction ?? this.customerSatisfaction,
    );
  }
}

