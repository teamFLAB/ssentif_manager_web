import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';

part 'trainer_repurchase_info_dto.freezed.dart';
part 'trainer_repurchase_info_dto.g.dart';

@freezed
class TrainerRepurchaseInfoDto with _$TrainerRepurchaseInfoDto {
  const factory TrainerRepurchaseInfoDto({
    required UserProfileModel trainer,
    @Default(0) int reissuedCount,
  }) = _TrainerRepurchaseInfoDto;

  factory TrainerRepurchaseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TrainerRepurchaseInfoDtoFromJson(json);
}

