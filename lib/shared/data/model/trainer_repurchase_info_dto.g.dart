// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_repurchase_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerRepurchaseInfoDtoImpl _$$TrainerRepurchaseInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainerRepurchaseInfoDtoImpl(
      trainer:
          UserProfileModel.fromJson(json['trainer'] as Map<String, dynamic>),
      reissuedCount: (json['reissuedCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TrainerRepurchaseInfoDtoImplToJson(
        _$TrainerRepurchaseInfoDtoImpl instance) =>
    <String, dynamic>{
      'trainer': instance.trainer,
      'reissuedCount': instance.reissuedCount,
    };
