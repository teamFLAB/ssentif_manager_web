import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/routine/data/source/routine_datasource_impl.dart';

import '../model/routine_history_model.dart';

final routineDataSourceProvider = Provider((ref) {
  var apiService = ref.read(apiServiceProvider);
  return RoutineDataSourceImpl(apiService: apiService);
});

abstract class RoutineDataSource {
  Future<ClassHistoriesResponse> getClassRecords({
    required String trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  });
}
