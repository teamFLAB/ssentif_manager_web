// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLoginImpl _$$ResponseLoginImplFromJson(Map<String, dynamic> json) =>
    _$ResponseLoginImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      role: json['role'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$$ResponseLoginImplToJson(_$ResponseLoginImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'role': instance.role,
      'userId': instance.userId,
      'userName': instance.userName,
    };
