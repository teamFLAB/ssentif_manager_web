// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoModelImpl _$$UserInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      img: json['img'] as String? ?? "",
      name: json['name'] as String? ?? "",
      age: (json['age'] as num?)?.toInt() ?? -1,
      sex: json['sex'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      exercisePurposes: (json['exercisePurposes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      classStatus: json['classStatus'] as String? ?? "",
      status: json['status'] as String? ?? "",
    );

Map<String, dynamic> _$$UserInfoModelImplToJson(_$UserInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'age': instance.age,
      'sex': instance.sex,
      'phoneNumber': instance.phoneNumber,
      'exercisePurposes': instance.exercisePurposes,
      'classStatus': instance.classStatus,
      'status': instance.status,
    };
