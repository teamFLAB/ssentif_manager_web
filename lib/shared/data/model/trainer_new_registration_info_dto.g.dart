// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_new_registration_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainerNewRegistrationInfoDtoImpl
    _$$TrainerNewRegistrationInfoDtoImplFromJson(Map<String, dynamic> json) =>
        _$TrainerNewRegistrationInfoDtoImpl(
          trainer: UserProfileModel.fromJson(
              json['trainer'] as Map<String, dynamic>),
          newRegistrationCount:
              (json['newRegistrationCount'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$TrainerNewRegistrationInfoDtoImplToJson(
        _$TrainerNewRegistrationInfoDtoImpl instance) =>
    <String, dynamic>{
      'trainer': instance.trainer,
      'newRegistrationCount': instance.newRegistrationCount,
    };
