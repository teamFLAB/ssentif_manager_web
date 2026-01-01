import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/schedule/data/model/schedule_detail_model.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';

part 'trainer_with_schedule_model.freezed.dart';
part 'trainer_with_schedule_model.g.dart';

@freezed
class TrainerWithScheduleModel with _$TrainerWithScheduleModel {
  const factory TrainerWithScheduleModel({
    required UserProfileModel trainer,
    required List<ScheduleDetailHasRoutineModel>? schedules,
  }) = _TrainerWithScheduleModel;

  factory TrainerWithScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerWithScheduleModelFromJson(json);
}

