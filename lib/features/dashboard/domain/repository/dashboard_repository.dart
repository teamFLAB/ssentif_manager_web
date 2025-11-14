import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/data/mapper/trainer_with_schedule_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';

abstract class DashboardRepository {
  Future<ApiStatusEntity<List<TrainerWithScheduleEntity>>> getCompletedSchedules({
    required int workplaceId,
    required String yearMonth,
  });
}

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  final trainerWithScheduleMapper = ref.read(trainerWithScheduleMapperProvider);
  return DashboardRepositoryImpl(
    apiService: apiService,
    trainerWithScheduleMapper: trainerWithScheduleMapper,
  );
});

