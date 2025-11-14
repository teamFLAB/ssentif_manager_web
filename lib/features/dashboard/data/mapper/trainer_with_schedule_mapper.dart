import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_with_schedule_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/trainer_with_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/data/mapper/schedule_detail_mapper.dart';
import 'package:ssentif_manager_web/shared/data/mapper/user_profile_mapper.dart';

final trainerWithScheduleMapperProvider =
    Provider<TrainerWithScheduleMapper>((ref) {
  final userProfileMapper = ref.read(userProfileMapperProvider);
  final scheduleDetailMapper = ref.read(scheduleDetailMapperProvider);
  return TrainerWithScheduleMapper(
    userProfileMapper: userProfileMapper,
    scheduleDetailMapper: scheduleDetailMapper,
  );
});

class TrainerWithScheduleMapper
    extends BaseMapper<TrainerWithScheduleModel, TrainerWithScheduleEntity> {
  final UserProfileMapper userProfileMapper;
  final ScheduleDetailMapper scheduleDetailMapper;

  TrainerWithScheduleMapper({
    required this.userProfileMapper,
    required this.scheduleDetailMapper,
  });

  @override
  TrainerWithScheduleEntity map(TrainerWithScheduleModel data) {
    return TrainerWithScheduleEntity(
      trainer: userProfileMapper.map(data.trainer),
      schedules: data.schedules
          .map((schedule) => scheduleDetailMapper.map(schedule))
          .toList(),
    );
  }
}

