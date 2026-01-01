import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getMonthlyRoutineRatioUseCaseProvider =
    Provider<GetMonthlyRoutineRatioUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetMonthlyRoutineRatioUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetMonthlyRoutineRatioUseCase {
  final DashboardRepository dashboardRepository;

  GetMonthlyRoutineRatioUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<List<MonthlyRoutineRatioEntity>>> call({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) {
    return dashboardRepository.getMonthlyRoutineRatio(
      workplaceId: workplaceId,
      baseMonth: baseMonth,
      months: months,
    );
  }
}




