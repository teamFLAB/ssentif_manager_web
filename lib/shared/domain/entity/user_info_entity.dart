

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enumtype/gender_type.dart';
import '../../enumtype/mathcing_status_type.dart';

part 'user_info_entity.freezed.dart';

@freezed
class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    @Default(-1) int userId,
    @Default("") String imageUrl,
    @Default("") String userName,
    @Default("") String phoneNumber,
    @Default(GenderType.male) String gender,
    @Default("") String age,
    @Default(MatchingStatusType.none) MatchingStatusType matchingStatus,
    @Default([]) List<String> exercisePurposes,
    @Default("") String status,
  }) = _UserInfoEntity;
}
