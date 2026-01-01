import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_schedule_reviews_with_previous_month_response.dart';

final getScheduleReviewsUseCaseProvider =
    Provider<GetScheduleReviewsUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetScheduleReviewsUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetScheduleReviewsUseCase {
  final DashboardRepository dashboardRepository;

  GetScheduleReviewsUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<TrainerScheduleReviewsWithPreviousMonthResponse>> call({
    required int workplaceId,
    required String yearMonth,
  }) {
    return dashboardRepository.getScheduleReviews(
      workplaceId: workplaceId,
      yearMonth: yearMonth,
    );
  }
}

