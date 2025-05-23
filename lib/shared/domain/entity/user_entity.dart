

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enumtype/gender_type.dart';
import '../../enumtype/mathcing_status_type.dart';
import '../../enumtype/work_position.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default(-1) int userId,
    @Default("") String imageUrl,
    @Default("") String userName,
    @Default("") String phoneNumber,
    @Default("") String birthDate,
    @Default(GenderType.male) String gender,
    @Default("") String age,
    @Default("") String email,
    @Default(MatchingStatusType.none) MatchingStatusType matchingStatus,
    @Default([]) List<String> exercisePurposes,
    @Default("") String workPlaceName,
    @Default("") String workPlaceAddress,
    @Default("") String workPlaceAddressDetail,
    WorkPosition? workPosition
  }) = _UserEntity;
}
