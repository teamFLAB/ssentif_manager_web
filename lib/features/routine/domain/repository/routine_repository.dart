import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/routine/data/repository/routine_repository_impl.dart';
import 'package:ssentif_manager_web/features/routine/data/source/routine_datasource.dart';
import '../entity/routine_histories_with_page_info_entity.dart';

final routineRepositoryProvider = Provider((ref) {
  var dataSource = ref.read(routineDataSourceProvider);
  return RoutineRepositoryImpl(dataSource: dataSource);
});

abstract class RoutineRepository {
  Future<ApiStatusEntity<RoutineHistoriesWithPageInfoEntity>> getClassRecords({
    required List<int> trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  });
}
