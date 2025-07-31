import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import '../entity/routine_histories_with_page_info_entity.dart';
import '../repository/routine_repository.dart';

final getClassRecordsUseCaseProvider = Provider((ref) {
  final repository = ref.read(routineRepositoryProvider);
  return GetClassRecordsUseCase(repository: repository);
});

class GetClassRecordsUseCase {
  final RoutineRepository repository;

  GetClassRecordsUseCase({ required this.repository });

  Future<ApiStatusEntity<RoutineHistoriesWithPageInfoEntity>> call({
    required List<int> trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  }) async {
    return await repository.getClassRecords(
      trainerIds: trainerIds,
      lastScheduleId: lastScheduleId,
      count: count,
      yearMonth: yearMonth,
    );
  }
}
