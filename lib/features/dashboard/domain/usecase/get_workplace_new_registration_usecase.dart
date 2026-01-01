import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_new_registration_with_previous_month_response.dart';

final getWorkplaceNewRegistrationUseCaseProvider =
    Provider<GetWorkplaceNewRegistrationUseCase>((ref) {
  final dashboardRepository = ref.read(dashboardRepositoryProvider);
  return GetWorkplaceNewRegistrationUseCase(
    dashboardRepository: dashboardRepository,
  );
});

class GetWorkplaceNewRegistrationUseCase {
  final DashboardRepository dashboardRepository;

  GetWorkplaceNewRegistrationUseCase({required this.dashboardRepository});

  Future<ApiStatusEntity<WorkplaceNewRegistrationWithPreviousMonthResponse>>
      call({
    required int workplaceId,
    required String yearMonth,
  }) {
    return dashboardRepository.getWorkplaceNewRegistrations(
      workplaceId: workplaceId,
      yearMonth: yearMonth,
    );
  }
}


