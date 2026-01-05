import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/repository/daily_records_repository_impl.dart';
import 'package:ssentif_manager_web/features/client/data/source/daily_records_datasource.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';

abstract class DailyRecordsRepository {
  Future<ApiStatusEntity<List<RoutineHistoryModel>>> getDailyWorkoutRecords({
    required String date,
    int? clientId,
  });

  Future<ApiStatusEntity<Map<String, dynamic>?>> getDailyDietList({
    required String date,
    int? clientId,
  });

  Future<ApiStatusEntity<List<RoutineDtoWrapperModel>>> getDailyClassRecords({
    required String classDate,
    int? clientId,
  });
}

final dailyRecordsRepositoryProvider =
    Provider<DailyRecordsRepository>((ref) {
  final dataSource = ref.read(dailyRecordsDataSourceProvider);
  return DailyRecordsRepositoryImpl(dataSource: dataSource);
});

