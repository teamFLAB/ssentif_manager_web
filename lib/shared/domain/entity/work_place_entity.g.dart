// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceEntityImpl _$$WorkPlaceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkPlaceEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      address: json['address'] as String? ?? "",
      addressDetail: json['addressDetail'] as String? ?? "",
    );

Map<String, dynamic> _$$WorkPlaceEntityImplToJson(
        _$WorkPlaceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
    };
