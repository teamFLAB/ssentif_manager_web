import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/trainer_repurchase_info_dto.dart';

part 'workplace_repurchase_response.freezed.dart';
part 'workplace_repurchase_response.g.dart';

@freezed
class WorkplaceRepurchaseResponse with _$WorkplaceRepurchaseResponse {
  const factory WorkplaceRepurchaseResponse({
    @Default([]) List<TrainerRepurchaseInfoDto> trainers,
    @Default(0) int totalCount,
  }) = _WorkplaceRepurchaseResponse;

  factory WorkplaceRepurchaseResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkplaceRepurchaseResponseFromJson(json);
}

