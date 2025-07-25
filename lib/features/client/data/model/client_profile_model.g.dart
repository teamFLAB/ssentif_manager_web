// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientProfileModelImpl _$$ClientProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientProfileModelImpl(
      searchUserInfoDto: json['searchUserInfoDto'] == null
          ? const UserInfoModel()
          : UserInfoModel.fromJson(
              json['searchUserInfoDto'] as Map<String, dynamic>),
      matchingInfoSimpleDto: json['matchingInfoSimpleDto'] == null
          ? const MatchingInfoDto()
          : MatchingInfoDto.fromJson(
              json['matchingInfoSimpleDto'] as Map<String, dynamic>),
      classInfoDto: json['classInfoDto'] == null
          ? const ClassInfoDto()
          : ClassInfoDto.fromJson(json['classInfoDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientProfileModelImplToJson(
        _$ClientProfileModelImpl instance) =>
    <String, dynamic>{
      'searchUserInfoDto': instance.searchUserInfoDto,
      'matchingInfoSimpleDto': instance.matchingInfoSimpleDto,
      'classInfoDto': instance.classInfoDto,
    };

_$MatchingInfoDtoImpl _$$MatchingInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchingInfoDtoImpl(
      leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? 0,
      matchingMemo: json['matchingMemo'] as String? ?? "",
    );

Map<String, dynamic> _$$MatchingInfoDtoImplToJson(
        _$MatchingInfoDtoImpl instance) =>
    <String, dynamic>{
      'leftNumberOfTime': instance.leftNumberOfTime,
      'matchingMemo': instance.matchingMemo,
    };

_$ClassInfoDtoImpl _$$ClassInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$ClassInfoDtoImpl(
      totalClassCounts: (json['totalClassCounts'] as num?)?.toInt() ?? 0,
      totalDaysCounts: (json['totalDaysCounts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ClassInfoDtoImplToJson(_$ClassInfoDtoImpl instance) =>
    <String, dynamic>{
      'totalClassCounts': instance.totalClassCounts,
      'totalDaysCounts': instance.totalDaysCounts,
    };
