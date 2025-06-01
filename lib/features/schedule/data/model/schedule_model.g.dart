// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleModelImpl _$$ScheduleModelImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleModelImpl(
      schedulePresentCondition: json['schedulePresentCondition'] == null
          ? const ClassScheduleStatusModel()
          : ClassScheduleStatusModel.fromJson(
              json['schedulePresentCondition'] as Map<String, dynamic>),
      dateScheduleInfoDtoList: (json['dateScheduleInfoDtoList']
                  as List<dynamic>?)
              ?.map(
                  (e) => DailyScheduleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScheduleModelImplToJson(_$ScheduleModelImpl instance) =>
    <String, dynamic>{
      'schedulePresentCondition': instance.schedulePresentCondition,
      'dateScheduleInfoDtoList': instance.dateScheduleInfoDtoList,
    };

_$ClassScheduleStatusModelImpl _$$ClassScheduleStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassScheduleStatusModelImpl(
      classComplete: (json['classComplete'] as num?)?.toInt() ?? 0,
      reservationWait: (json['reservationWait'] as num?)?.toInt() ?? 0,
      reservationComplete: (json['reservationComplete'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ClassScheduleStatusModelImplToJson(
        _$ClassScheduleStatusModelImpl instance) =>
    <String, dynamic>{
      'classComplete': instance.classComplete,
      'reservationWait': instance.reservationWait,
      'reservationComplete': instance.reservationComplete,
    };
