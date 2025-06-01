// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      imgUrl: json['imgUrl'] as String? ?? "",
      email: json['email'] as String? ?? "",
      name: json['name'] as String? ?? "",
      birthDate: json['birthDate'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      workplaceName: json['workplaceName'] as String? ?? "",
      workplaceAddress: json['workplaceAddress'] as String? ?? "",
      workplaceAddressDetail: json['workplaceAddressDetail'] as String? ?? "",
      workType: json['workType'] as String? ?? "",
      sex: json['sex'] as String? ?? "",
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'email': instance.email,
      'name': instance.name,
      'birthDate': instance.birthDate,
      'phoneNumber': instance.phoneNumber,
      'workplaceName': instance.workplaceName,
      'workplaceAddress': instance.workplaceAddress,
      'workplaceAddressDetail': instance.workplaceAddressDetail,
      'workType': instance.workType,
      'sex': instance.sex,
    };
