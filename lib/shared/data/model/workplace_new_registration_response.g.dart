// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_new_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkplaceNewRegistrationResponseImpl
    _$$WorkplaceNewRegistrationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WorkplaceNewRegistrationResponseImpl(
          trainers: (json['trainers'] as List<dynamic>?)
                  ?.map((e) => TrainerNewRegistrationInfoDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$WorkplaceNewRegistrationResponseImplToJson(
        _$WorkplaceNewRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'trainers': instance.trainers,
      'totalCount': instance.totalCount,
    };
