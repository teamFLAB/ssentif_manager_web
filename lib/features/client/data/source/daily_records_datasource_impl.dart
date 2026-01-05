import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/source/daily_records_datasource.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

class DailyRecordsDataSourceImpl extends DailyRecordsDataSource {
  final ApiService apiService;

  DailyRecordsDataSourceImpl({required this.apiService});

  @override
  Future<IndividualWorkoutHistoriesResponse> getDailyWorkoutRecords({
    required String date,
    int? clientId,
  }) {
    return apiService.getDailyWorkoutRecords(
      date: date,
      clientId: clientId,
    );
  }

  @override
  Future<Map<String, dynamic>> getDailyDietList({
    required String date,
    int? clientId,
  }) {
    return apiService.getDailyDietList(
      date: date,
      clientId: clientId,
    );
  }

  @override
  Future<ClassHistoriesResponse> getDailyClassRecords({
    required String classDate,
    int? clientId,
  }) {
    return apiService.getDailyClassRecords(
      classDate: classDate,
      clientId: clientId,
    );
  }
}

