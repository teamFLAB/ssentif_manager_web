import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/daily_records_repository.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

final getDailyWorkoutRecordsUseCaseProvider =
    Provider<GetDailyWorkoutRecordsUseCase>((ref) {
  final repository = ref.read(dailyRecordsRepositoryProvider);
  return GetDailyWorkoutRecordsUseCase(repository: repository);
});

class GetDailyWorkoutRecordsUseCase {
  final DailyRecordsRepository repository;

  GetDailyWorkoutRecordsUseCase({required this.repository});

  Future<ApiStatusEntity<List<RoutineHistoryModel>>> call({
    required String date,
    int? clientId,
  }) {
    return repository.getDailyWorkoutRecords(
      date: date,
      clientId: clientId,
    );
  }
}

