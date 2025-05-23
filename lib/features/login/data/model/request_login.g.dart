// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestLoginImpl _$$RequestLoginImplFromJson(Map<String, dynamic> json) =>
    _$RequestLoginImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$$RequestLoginImplToJson(_$RequestLoginImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
    };
