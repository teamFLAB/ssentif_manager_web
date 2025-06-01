import '../../../../core/network/api_status_entity.dart';
import '../entity/calendar_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/schedule/data/mapper/schedule_mapper.dart';
import 'package:ssentif_manager_web/features/schedule/data/repository/schedule_repository_impl.dart';

abstract class ScheduleRepository {
  Future<ApiStatusEntity<CalendarEntity>> getSchedules(
      {required int trainerId,
        required String trainerName,
        required String startDate,
        required String endDate});
}

final scheduleRepositoryProvider = Provider<ScheduleRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  final mapper = ref.read(scheduleMapper);
  return ScheduleRepositoryImpl(apiService: apiService, scheduleMapper: mapper);
});
