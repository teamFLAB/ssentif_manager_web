import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_info_entity.dart';

part 'client_profile_entity.freezed.dart';

@freezed
class ClientProfileEntity with _$ClientProfileEntity {
  factory ClientProfileEntity({
    @Default(UserInfoEntity()) UserInfoEntity searchUserInfoDto,
    @Default(MatchingInfoEntity()) MatchingInfoEntity matchingInfoSimpleDto,
    @Default(ClassInfoEntity()) ClassInfoEntity classInfoDto,
  }) = _ClientProfileEntity;
}

@freezed
class MatchingInfoEntity with _$MatchingInfoEntity {
  const factory MatchingInfoEntity({
    @Default(0) int leftNumberOfTime,
    @Default("") String matchingMemo,
  }) = _MatchingInfoEntity;
}

@freezed
class ClassInfoEntity with _$ClassInfoEntity {
  const factory ClassInfoEntity({
    @Default(0) int totalClassCounts,
    @Default(0) int totalDaysCounts,
  }) = _ClassInfoEntity;
}
