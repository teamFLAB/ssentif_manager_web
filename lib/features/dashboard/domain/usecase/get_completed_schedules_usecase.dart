import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

final getCompletedSchedulesUseCaseProvider =
    Provider<GetCompletedSchedulesUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetCompletedSchedulesUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetCompletedSchedulesUseCase {
  final DashboardRepository dashboardRepository;

  GetCompletedSchedulesUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<TrainerSchedulesWithPrevMonthEntity>> call({
    required int workplaceId,
    required String yearMonth,
  }) {
    return dashboardRepository.getCompletedSchedules(
      workplaceId: workplaceId,
      yearMonth: yearMonth,
    );
  }
}
