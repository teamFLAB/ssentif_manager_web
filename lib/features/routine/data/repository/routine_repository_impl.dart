import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import '../../domain/repository/routine_repository.dart';
import '../../domain/entity/routine_histories_with_page_info_entity.dart';
import '../mapper/routine_histories_mapper.dart';
import '../source/routine_datasource.dart';

class RoutineRepositoryImpl implements RoutineRepository {
  final RoutineDataSource dataSource;

  RoutineRepositoryImpl({required this.dataSource});

  @override
  Future<ApiStatusEntity<RoutineHistoriesWithPageInfoEntity>> getClassRecords({
    required List<int> trainerIds,
    int? lastScheduleId,
    required int count,
    required String yearMonth,
  }) async {
    try {
      final response = await dataSource.getClassRecords(
        trainerIds: trainerIds.join(","),
        lastScheduleId: lastScheduleId,
        count: count,
        yearMonth: yearMonth,
      );

      final entity = RoutineHistoriesMapper.toEntity(response);

      return ApiStatusEntity(
        statusType: StatusType.SUCCESS,
        data: entity,
      );
    } catch (e) {
      return ApiStatusEntity(
        statusType: StatusType.SERVER_ERROR,
        errMsg: e.toString(),
        data: null,
      );
    }
  }
}
