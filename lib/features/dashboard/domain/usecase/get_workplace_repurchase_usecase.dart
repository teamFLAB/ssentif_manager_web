import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_repurchase_with_previous_month_response.dart';

final getWorkplaceRepurchaseUseCaseProvider =
    Provider<GetWorkplaceRepurchaseUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetWorkplaceRepurchaseUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetWorkplaceRepurchaseUseCase {
  final DashboardRepository dashboardRepository;

  GetWorkplaceRepurchaseUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<WorkplaceRepurchaseWithPreviousMonthResponse>> call({
    required int workplaceId,
    required String yearMonth,
  }) {
    return dashboardRepository.getWorkplaceRepurchase(
      workplaceId: workplaceId,
      yearMonth: yearMonth,
    );
  }
}

