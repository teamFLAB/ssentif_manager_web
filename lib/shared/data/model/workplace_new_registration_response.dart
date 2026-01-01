import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/trainer_new_registration_info_dto.dart';

part 'workplace_new_registration_response.freezed.dart';
part 'workplace_new_registration_response.g.dart';

@freezed
class WorkplaceNewRegistrationResponse with _$WorkplaceNewRegistrationResponse {
  const factory WorkplaceNewRegistrationResponse({
    @Default([]) List<TrainerNewRegistrationInfoDto> trainers,
    @Default(0) int totalCount,
  }) = _WorkplaceNewRegistrationResponse;

  factory WorkplaceNewRegistrationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$WorkplaceNewRegistrationResponseFromJson(json);
}


