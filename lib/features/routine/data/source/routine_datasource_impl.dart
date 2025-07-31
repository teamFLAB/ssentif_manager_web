import 'package:ssentif_manager_web/core/network/api_service.dart';
import '../model/routine_history_model.dart';
import 'routine_datasource.dart';

class RoutineDataSourceImpl implements RoutineDataSource {
  final ApiService apiService;

  RoutineDataSourceImpl({required this.apiService});

  @override
  Future<ClassHistoriesResponse> getClassRecords({
    required String trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  }) async {
    return await apiService.getClassRecords(
      trainerIds: trainerIds,
      lastScheduleId: lastScheduleId,
      count: count,
      yearMonth: yearMonth,
    );
  }
}
