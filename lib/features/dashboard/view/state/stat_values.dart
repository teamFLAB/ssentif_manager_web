class StatValues {
  final String totalClassCount;
  final String newlyRegistration;
  final String recordWritingRate;
  final String reenrollmentRate;
  final String customerSatisfaction;

  const StatValues({
    this.totalClassCount = '0',
    this.newlyRegistration = '0',
    this.recordWritingRate = '0.0',
    this.reenrollmentRate = '0.0',
    this.customerSatisfaction = '100.0',
  });

  StatValues copyWith({
    String? totalClassCount,
    String? newlyRegistration,
    String? recordWritingRate,
    String? reenrollmentRate,
    String? customerSatisfaction,
  }) {
    return StatValues(
      totalClassCount: totalClassCount ?? this.totalClassCount,
      newlyRegistration: newlyRegistration ?? this.newlyRegistration,
      recordWritingRate: recordWritingRate ?? this.recordWritingRate,
      reenrollmentRate: reenrollmentRate ?? this.reenrollmentRate,
      customerSatisfaction: customerSatisfaction ?? this.customerSatisfaction,
    );
  }
}

