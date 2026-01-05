import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/source/daily_records_datasource_impl.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

final dailyRecordsDataSourceProvider =
    Provider<DailyRecordsDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return DailyRecordsDataSourceImpl(apiService: apiService);
});

abstract class DailyRecordsDataSource {
  Future<IndividualWorkoutHistoriesResponse> getDailyWorkoutRecords({
    required String date,
    int? clientId,
  });

  Future<Map<String, dynamic>> getDailyDietList({
    required String date,
    int? clientId,
  });

  Future<ClassHistoriesResponse> getDailyClassRecords({
    required String classDate,
    int? clientId,
  });
}

