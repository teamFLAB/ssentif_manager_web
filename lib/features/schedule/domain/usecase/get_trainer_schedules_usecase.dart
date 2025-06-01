import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/schedule/domain/repository/schedule_repository.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_entity.dart';

class GetTrainerSchedulesUseCase {
  final ScheduleRepository repository;
  GetTrainerSchedulesUseCase({required this.repository});

  Future<ApiStatusEntity<CalendarEntity>> call({
    required int trainerId,
    required String trainerName,
    required String startDate,
    required String endDate,
  }) {
    return repository.getSchedules(
      trainerId: trainerId,
      trainerName: trainerName,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

final getTrainerSchedulesUseCaseProvider =
    Provider<GetTrainerSchedulesUseCase>((ref) {
  final repository = ref.read(scheduleRepositoryProvider);
  return GetTrainerSchedulesUseCase(repository: repository);
});
