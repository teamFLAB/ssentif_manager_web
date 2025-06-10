import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/schedule/domain/repository/schedule_repository.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';

class GetScheduleDetailUseCase {
  final ScheduleRepository repository;
  GetScheduleDetailUseCase({required this.repository});

  Future<ApiStatusEntity<ScheduleDetailEntity>> call({
    required int scheduleId,
  }) {
    return repository.getScheduleDetail(
      scheduleId: scheduleId,
    );
  }
}

final getScheduleDetailUseCaseProvider =
    Provider<GetScheduleDetailUseCase>((ref) {
  final repository = ref.read(scheduleRepositoryProvider);
  return GetScheduleDetailUseCase(repository: repository);
});