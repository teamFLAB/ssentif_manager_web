import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/trainer_with_schedule_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/repository/dashboard_repository.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  final ApiService apiService;
  final TrainerWithScheduleMapper trainerWithScheduleMapper;

  DashboardRepositoryImpl({
    required this.apiService,
    required this.trainerWithScheduleMapper,
  });

  @override
  Future<ApiStatusEntity<List<TrainerWithScheduleEntity>>>
      getCompletedSchedules({
    required int workplaceId,
    required String yearMonth,
  }) async {
    try {
      final response = await apiService.getCompletedSchedules(
        workplaceId: workplaceId,
        yearMonth: yearMonth,
      );
      final entities = response
          .map((model) => trainerWithScheduleMapper.map(model))
          .toList();
      return ApiStatusEntity(data: entities);
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}

