import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';

part 'trainer_new_registration_info_dto.freezed.dart';
part 'trainer_new_registration_info_dto.g.dart';

@freezed
class TrainerNewRegistrationInfoDto with _$TrainerNewRegistrationInfoDto {
  const factory TrainerNewRegistrationInfoDto({
    required UserProfileModel trainer,
    @Default(0) int newRegistrationCount,
  }) = _TrainerNewRegistrationInfoDto;

  factory TrainerNewRegistrationInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TrainerNewRegistrationInfoDtoFromJson(json);
}


