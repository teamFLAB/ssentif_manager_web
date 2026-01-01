// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_repurchase_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkplaceRepurchaseResponseImpl _$$WorkplaceRepurchaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkplaceRepurchaseResponseImpl(
      trainers: (json['trainers'] as List<dynamic>?)
              ?.map((e) =>
                  TrainerRepurchaseInfoDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WorkplaceRepurchaseResponseImplToJson(
        _$WorkplaceRepurchaseResponseImpl instance) =>
    <String, dynamic>{
      'trainers': instance.trainers,
      'totalCount': instance.totalCount,
    };
