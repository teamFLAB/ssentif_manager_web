// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_new_registration_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyNewRegistrationCountModelImpl
    _$$MonthlyNewRegistrationCountModelImplFromJson(
            Map<String, dynamic> json) =>
        _$MonthlyNewRegistrationCountModelImpl(
          date: json['date'] as String,
          newRegistrationCount: (json['newRegistrationCount'] as num).toInt(),
        );

Map<String, dynamic> _$$MonthlyNewRegistrationCountModelImplToJson(
        _$MonthlyNewRegistrationCountModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'newRegistrationCount': instance.newRegistrationCount,
    };
