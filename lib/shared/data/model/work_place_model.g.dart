// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceModelImpl _$$WorkPlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkPlaceModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      address: json['address'] as String? ?? "",
      addressDetail: json['addressDetail'] as String? ?? "",
    );

Map<String, dynamic> _$$WorkPlaceModelImplToJson(
        _$WorkPlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
    };

_$ResponseWorkPlaceListImpl _$$ResponseWorkPlaceListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseWorkPlaceListImpl(
      workplaceList: (json['workplaceList'] as List<dynamic>?)
              ?.map((e) => WorkPlaceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseWorkPlaceListImplToJson(
        _$ResponseWorkPlaceListImpl instance) =>
    <String, dynamic>{
      'workplaceList': instance.workplaceList,
    };
