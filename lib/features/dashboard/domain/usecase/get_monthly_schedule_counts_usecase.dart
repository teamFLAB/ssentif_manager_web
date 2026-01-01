import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getMonthlyScheduleCountsUseCaseProvider =
    Provider<GetMonthlyScheduleCountsUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetMonthlyScheduleCountsUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetMonthlyScheduleCountsUseCase {
  final DashboardRepository dashboardRepository;

  GetMonthlyScheduleCountsUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<List<MonthlyScheduleCountEntity>>> call({
    required int workplaceId,
    required String yearMonth,
    int months = 6,
  }) {
    return dashboardRepository.getMonthlyScheduleCounts(
      workplaceId: workplaceId,
      yearMonth: yearMonth,
      months: months,
    );
  }
}

