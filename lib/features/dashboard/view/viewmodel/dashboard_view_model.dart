import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_completed_schedules_usecase.dart';
import '../state/dashboard_state.dart';

final dashboardViewModelProvider =
    StateNotifierProvider<DashboardViewModel, DashboardState>((ref) {
  final getCompletedSchedulesUseCase =
      ref.read(getCompletedSchedulesUseCaseProvider);
  return DashboardViewModel(
    getCompletedSchedulesUseCase: getCompletedSchedulesUseCase,
  );
});

class DashboardViewModel extends StateNotifier<DashboardState> {
  final GetCompletedSchedulesUseCase getCompletedSchedulesUseCase;

  DashboardViewModel({
    required this.getCompletedSchedulesUseCase,
  }) : super(DashboardState(
          selectedMonth: DateTime.now(),
          statValues: {
            DashboardStatType.totalClassCount: '125',
            DashboardStatType.recordWritingRate: '87.5',
            DashboardStatType.reenrollmentRate: '72.3',
            DashboardStatType.customerSatisfaction: '94.2',
          },
          statMoms: {
            DashboardStatType.totalClassCount: 5.2,
            DashboardStatType.recordWritingRate: -2.3,
            DashboardStatType.reenrollmentRate: 8.1,
            DashboardStatType.customerSatisfaction: 1.5,
          },
        )) {
    _loadCompletedSchedules();
  }

  void _loadCompletedSchedules() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      return;
    }

    final yearMonth =
        DateFormat(Constants.yearMonthFormat).format(state.selectedMonth);

    final result = await getCompletedSchedulesUseCase(
      workplaceId: workplaceInfo.id,
      yearMonth: yearMonth,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          state = state.copyWith(completedSchedules: data);
        }
      },
      onError: (errCode, errMsg) {
        // 에러 처리 (필요시 추가)
      },
    );
  }

  void clickThisMonth() {
    state = state.copyWith(selectedMonth: DateTime.now());
    _updateDummyStats();
    _loadCompletedSchedules();
  }

  void clickPreviousMonth() {
    final currentMonth = state.selectedMonth;
    final previousMonth =
        DateTime(currentMonth.year, currentMonth.month - 1, 1);
    state = state.copyWith(selectedMonth: previousMonth);
    _updateDummyStats();
    _loadCompletedSchedules();
  }

  void clickNextMonth() {
    final currentMonth = state.selectedMonth;
    final nextMonth = DateTime(currentMonth.year, currentMonth.month + 1, 1);
    state = state.copyWith(selectedMonth: nextMonth);
    _updateDummyStats();
    _loadCompletedSchedules();
  }

  void _updateDummyStats() {
    // Dummy data update logic for demonstration
    // In a real app, this would fetch data based on selectedMonth
    state = state.copyWith(
      statValues: {
        DashboardStatType.totalClassCount: '130',
        DashboardStatType.recordWritingRate: '88.0',
        DashboardStatType.reenrollmentRate: '73.0',
        DashboardStatType.customerSatisfaction: '95.0',
      },
      statMoms: {
        DashboardStatType.totalClassCount: 6.0,
        DashboardStatType.recordWritingRate: -1.5,
        DashboardStatType.reenrollmentRate: 9.0,
        DashboardStatType.customerSatisfaction: 2.0,
      },
    );
  }
}
