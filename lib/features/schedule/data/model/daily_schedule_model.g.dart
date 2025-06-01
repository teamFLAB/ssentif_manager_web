// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyScheduleModelImpl _$$DailyScheduleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyScheduleModelImpl(
      scheduleDate: json['scheduleDate'] as String? ?? "",
      scheduleInfoDtoList: (json['scheduleInfoDtoList'] as List<dynamic>?)
              ?.map((e) =>
                  CalendarScheduleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DailyScheduleModelImplToJson(
        _$DailyScheduleModelImpl instance) =>
    <String, dynamic>{
      'scheduleDate': instance.scheduleDate,
      'scheduleInfoDtoList': instance.scheduleInfoDtoList,
    };
