// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientListModelImpl _$$ClientListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientListModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      img: json['img'] as String? ?? "",
      name: json['name'] as String? ?? "",
      age: (json['age'] as num?)?.toInt() ?? 0,
      sex: json['sex'] as String? ?? "",
      status: json['status'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ClientListModelImplToJson(
        _$ClientListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'age': instance.age,
      'sex': instance.sex,
      'status': instance.status,
      'phoneNumber': instance.phoneNumber,
      'leftNumberOfTime': instance.leftNumberOfTime,
    };
