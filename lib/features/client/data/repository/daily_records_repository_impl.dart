import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/source/daily_records_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/daily_records_repository.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

class DailyRecordsRepositoryImpl extends DailyRecordsRepository {
  final DailyRecordsDataSource dataSource;

  DailyRecordsRepositoryImpl({required this.dataSource});

  @override
  Future<ApiStatusEntity<List<RoutineHistoryModel>>> getDailyWorkoutRecords({
    required String date,
    int? clientId,
  }) async {
    try {
      final response = await dataSource.getDailyWorkoutRecords(
        date: date,
        clientId: clientId,
      );
      final workoutRecords = response.workoutResponses
          .map((wrapper) => wrapper.routineDto)
          .where((routine) =>
              routine.routineId != -1 || routine.routineName.isNotEmpty)
          .toList();
      return ApiStatusEntity(data: workoutRecords);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<Map<String, dynamic>?>> getDailyDietList({
    required String date,
    int? clientId,
  }) async {
    try {
      final response = await dataSource.getDailyDietList(
        date: date,
        clientId: clientId,
      );
      return ApiStatusEntity(data: response);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<RoutineDtoWrapperModel>>> getDailyClassRecords({
    required String classDate,
    int? clientId,
  }) async {
    try {
      final response = await dataSource.getDailyClassRecords(
        classDate: classDate,
        clientId: clientId,
      );
      return ApiStatusEntity(data: response.classInfoDetailOfDateList);
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}

