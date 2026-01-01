import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getMonthlyRepurchaseCountUseCaseProvider =
    Provider<GetMonthlyRepurchaseCountUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetMonthlyRepurchaseCountUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetMonthlyRepurchaseCountUseCase {
  final DashboardRepository dashboardRepository;

  GetMonthlyRepurchaseCountUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<List<MonthlyRepurchaseCountEntity>>> call({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) {
    return dashboardRepository.getMonthlyRepurchaseCount(
      workplaceId: workplaceId,
      baseMonth: baseMonth,
      months: months,
    );
  }
}


