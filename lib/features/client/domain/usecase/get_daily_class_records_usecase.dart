import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/daily_records_repository.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

final getDailyClassRecordsUseCaseProvider =
    Provider<GetDailyClassRecordsUseCase>((ref) {
  final repository = ref.read(dailyRecordsRepositoryProvider);
  return GetDailyClassRecordsUseCase(repository: repository);
});

class GetDailyClassRecordsUseCase {
  final DailyRecordsRepository repository;

  GetDailyClassRecordsUseCase({required this.repository});

  Future<ApiStatusEntity<List<RoutineDtoWrapperModel>>> call({
    required String classDate,
    int? clientId,
  }) {
    return repository.getDailyClassRecords(
      classDate: classDate,
      clientId: clientId,
    );
  }
}

