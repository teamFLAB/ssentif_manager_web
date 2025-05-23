class ScheduleState {
  final DateTime todayDate;
  final DateTime selectedDate;

  const ScheduleState({
    required this.todayDate,
    required this.selectedDate,
  });

  ScheduleState copyWith({DateTime? todayDate, DateTime? selectedDate}) {
    return ScheduleState(
      todayDate: todayDate ?? this.todayDate,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}
