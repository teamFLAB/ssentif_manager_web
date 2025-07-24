
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/enumtype/gender_type.dart';
import '../../../../shared/enumtype/mathcing_status_type.dart';

part 'client_list_entity.freezed.dart';
part 'client_list_entity.g.dart';

@freezed
class ClientListEntity with _$ClientListEntity {
  factory ClientListEntity({
    @Default(-1) int clientId,
    @Default("") String profileImage,
    @Default("") String userName,
    @Default(0) int age,
    @Default(GenderType.male) String gender,
    @Default(MatchingStatusType.created) MatchingStatusType statusType,
    @Default("") String phoneNumber,
    @Default(0) int leftCountOfVoucher
  }) = _ClientListEntity;

  factory ClientListEntity.fromJson(Map<String,dynamic> json) => _$ClientListEntityFromJson(json);
}