// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientListEntityImpl _$$ClientListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientListEntityImpl(
      clientId: (json['clientId'] as num?)?.toInt() ?? -1,
      profileImage: json['profileImage'] as String? ?? "",
      userName: json['userName'] as String? ?? "",
      age: (json['age'] as num?)?.toInt() ?? 0,
      gender: json['gender'] as String? ?? GenderType.male,
      statusType: $enumDecodeNullable(
              _$MatchingStatusTypeEnumMap, json['statusType']) ??
          MatchingStatusType.created,
      phoneNumber: json['phoneNumber'] as String? ?? "",
      leftCountOfVoucher: (json['leftCountOfVoucher'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ClientListEntityImplToJson(
        _$ClientListEntityImpl instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'profileImage': instance.profileImage,
      'userName': instance.userName,
      'age': instance.age,
      'gender': instance.gender,
      'statusType': _$MatchingStatusTypeEnumMap[instance.statusType]!,
      'phoneNumber': instance.phoneNumber,
      'leftCountOfVoucher': instance.leftCountOfVoucher,
    };

const _$MatchingStatusTypeEnumMap = {
  MatchingStatusType.matched: 'matched',
  MatchingStatusType.created: 'created',
  MatchingStatusType.end: 'end',
  MatchingStatusType.none: 'none',
};
