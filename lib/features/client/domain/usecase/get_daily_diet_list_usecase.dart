import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/daily_records_repository.dart';

final getDailyDietListUseCaseProvider =
    Provider<GetDailyDietListUseCase>((ref) {
  final repository = ref.read(dailyRecordsRepositoryProvider);
  return GetDailyDietListUseCase(repository: repository);
});

class GetDailyDietListUseCase {
  final DailyRecordsRepository repository;

  GetDailyDietListUseCase({required this.repository});

  Future<ApiStatusEntity<Map<String, dynamic>?>> call({
    required String date,
    int? clientId,
  }) {
    return repository.getDailyDietList(
      date: date,
      clientId: clientId,
    );
  }
}

