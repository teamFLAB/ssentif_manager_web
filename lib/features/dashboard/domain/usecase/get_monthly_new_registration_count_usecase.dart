import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getMonthlyNewRegistrationCountUseCaseProvider =
    Provider<GetMonthlyNewRegistrationCountUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetMonthlyNewRegistrationCountUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetMonthlyNewRegistrationCountUseCase {
  final DashboardRepository dashboardRepository;

  GetMonthlyNewRegistrationCountUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<List<MonthlyNewRegistrationCountEntity>>> call({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) {
    return dashboardRepository.getMonthlyNewRegistrationCounts(
      workplaceId: workplaceId,
      baseMonth: baseMonth,
      months: months,
    );
  }
}


