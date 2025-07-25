import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/user_info_model.dart';

part 'client_profile_model.freezed.dart';
part 'client_profile_model.g.dart';

@freezed
class ClientProfileModel with _$ClientProfileModel {
  factory ClientProfileModel({
    @Default(UserInfoModel()) UserInfoModel searchUserInfoDto,
    @Default(MatchingInfoDto()) MatchingInfoDto matchingInfoSimpleDto,
    @Default(ClassInfoDto()) ClassInfoDto classInfoDto,
  }) = _ClientProfileModel;

  factory ClientProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileModelFromJson(json);
}

@freezed
class MatchingInfoDto with _$MatchingInfoDto {
  const factory MatchingInfoDto({
    @Default(0) int leftNumberOfTime,
    @Default("") String matchingMemo,
  }) = _MatchingInfoDto;

  factory MatchingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$MatchingInfoDtoFromJson(json);
}

@freezed
class ClassInfoDto with _$ClassInfoDto {
  const factory ClassInfoDto({
    @Default(0) int totalClassCounts,
    @Default(0) int totalDaysCounts,
  }) = _ClassInfoDto;

  factory ClassInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoDtoFromJson(json);
}
