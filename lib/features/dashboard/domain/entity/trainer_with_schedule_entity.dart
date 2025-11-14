import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'trainer_with_schedule_entity.freezed.dart';

@freezed
class TrainerWithScheduleEntity with _$TrainerWithScheduleEntity {
  const factory TrainerWithScheduleEntity({
    required UserEntity trainer,
    @Default([]) List<ScheduleDetailEntity> schedules,
  }) = _TrainerWithScheduleEntity;
}

