// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_enrolled_clients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseEnrolledClientsImpl _$$ResponseEnrolledClientsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseEnrolledClientsImpl(
      matchingClientDtos: (json['matchingClientDtos'] as List<dynamic>?)
              ?.map((e) => ClientListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createClientDtos: (json['createClientDtos'] as List<dynamic>?)
              ?.map((e) => ClientListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseEnrolledClientsImplToJson(
        _$ResponseEnrolledClientsImpl instance) =>
    <String, dynamic>{
      'matchingClientDtos': instance.matchingClientDtos,
      'createClientDtos': instance.createClientDtos,
    };
