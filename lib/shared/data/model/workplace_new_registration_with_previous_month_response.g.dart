// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_new_registration_with_previous_month_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkplaceNewRegistrationWithPreviousMonthResponseImpl
    _$$WorkplaceNewRegistrationWithPreviousMonthResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WorkplaceNewRegistrationWithPreviousMonthResponseImpl(
          currentMonth: json['currentMonth'] == null
              ? const WorkplaceNewRegistrationResponse()
              : WorkplaceNewRegistrationResponse.fromJson(
                  json['currentMonth'] as Map<String, dynamic>),
          previousMonth: json['previousMonth'] == null
              ? const WorkplaceNewRegistrationResponse()
              : WorkplaceNewRegistrationResponse.fromJson(
                  json['previousMonth'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$WorkplaceNewRegistrationWithPreviousMonthResponseImplToJson(
            _$WorkplaceNewRegistrationWithPreviousMonthResponseImpl instance) =>
        <String, dynamic>{
          'currentMonth': instance.currentMonth,
          'previousMonth': instance.previousMonth,
        };
