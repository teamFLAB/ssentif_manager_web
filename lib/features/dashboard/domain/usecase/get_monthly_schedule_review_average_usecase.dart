import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getMonthlyScheduleReviewAverageUseCaseProvider =
    Provider<GetMonthlyScheduleReviewAverageUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetMonthlyScheduleReviewAverageUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetMonthlyScheduleReviewAverageUseCase {
  final DashboardRepository dashboardRepository;

  GetMonthlyScheduleReviewAverageUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<List<MonthlyScheduleReviewAverageEntity>>> call({
    required int workplaceId,
    required String baseMonth,
    int months = 6,
  }) {
    return dashboardRepository.getMonthlyScheduleReviewAverage(
      workplaceId: workplaceId,
      baseMonth: baseMonth,
      months: months,
    );
  }
}

