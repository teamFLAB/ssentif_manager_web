

import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/schedule/data/mapper/schedule_mapper.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/repository/schedule_repository.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  final ApiService apiService;
  final ScheduleMapper scheduleMapper;

  ScheduleRepositoryImpl({
    required this.apiService,
    required this.scheduleMapper
  });

  @override
  Future<ApiStatusEntity<CalendarEntity>> getSchedules({
    required int trainerId,
    required String trainerName,
    required String startDate,
    required String endDate
  }) async {
    try {
      var response = await apiService.getSchedules(
          startDate: startDate,
          endDate: endDate,
          trainerId: trainerId
      );

      var scheduleInfo = scheduleMapper.map(response);

      var trainerNameUpdatedSchedules= scheduleInfo.schedules.map((schedule) {
        return schedule.copyWith(trainerName: trainerName);
      }).toList();

      return ApiStatusEntity(
          data: scheduleInfo.copyWith(
              schedules: trainerNameUpdatedSchedules
          )
      );
    } catch(e) {
      return e.toErrorEntity();
    }

  }
}