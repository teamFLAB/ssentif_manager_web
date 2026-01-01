// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_repurchase_with_previous_month_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkplaceRepurchaseWithPreviousMonthResponseImpl
    _$$WorkplaceRepurchaseWithPreviousMonthResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WorkplaceRepurchaseWithPreviousMonthResponseImpl(
          currentMonth: json['currentMonth'] == null
              ? const WorkplaceRepurchaseResponse()
              : WorkplaceRepurchaseResponse.fromJson(
                  json['currentMonth'] as Map<String, dynamic>),
          previousMonth: json['previousMonth'] == null
              ? const WorkplaceRepurchaseResponse()
              : WorkplaceRepurchaseResponse.fromJson(
                  json['previousMonth'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$WorkplaceRepurchaseWithPreviousMonthResponseImplToJson(
        _$WorkplaceRepurchaseWithPreviousMonthResponseImpl instance) =>
    <String, dynamic>{
      'currentMonth': instance.currentMonth,
      'previousMonth': instance.previousMonth,
    };
