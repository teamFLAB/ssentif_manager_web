// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_repurchase_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyRepurchaseCountModelImpl _$$MonthlyRepurchaseCountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyRepurchaseCountModelImpl(
      date: json['date'] as String,
      repurchaseCount: (json['repurchaseCount'] as num).toInt(),
    );

Map<String, dynamic> _$$MonthlyRepurchaseCountModelImplToJson(
        _$MonthlyRepurchaseCountModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'repurchaseCount': instance.repurchaseCount,
    };
