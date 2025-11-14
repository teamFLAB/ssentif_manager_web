import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';

class DashboardState {
  final DateTime selectedMonth;
  final Map<DashboardStatType, String> statValues;
  final Map<DashboardStatType, double> statMoms;
  final List<TrainerWithScheduleEntity> completedSchedules;

  DashboardState({
    required this.selectedMonth,
    Map<DashboardStatType, String>? statValues,
    Map<DashboardStatType, double>? statMoms,
    List<TrainerWithScheduleEntity>? completedSchedules,
  })  : statValues = statValues ?? {},
        statMoms = statMoms ?? {},
        completedSchedules = completedSchedules ?? [];

  DashboardState copyWith({
    DateTime? selectedMonth,
    Map<DashboardStatType, String>? statValues,
    Map<DashboardStatType, double>? statMoms,
    List<TrainerWithScheduleEntity>? completedSchedules,
  }) {
    return DashboardState(
      selectedMonth: selectedMonth ?? this.selectedMonth,
      statValues: statValues ?? this.statValues,
      statMoms: statMoms ?? this.statMoms,
      completedSchedules: completedSchedules ?? this.completedSchedules,
    );
  }
}

