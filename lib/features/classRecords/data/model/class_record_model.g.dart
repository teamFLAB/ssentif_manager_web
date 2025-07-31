// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassRecordModelImpl _$$ClassRecordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassRecordModelImpl(
      id: json['id'] as String? ?? '',
      className: json['className'] as String? ?? '',
      trainerName: json['trainerName'] as String? ?? '',
      clientName: json['clientName'] as String? ?? '',
      date: json['date'] as String? ?? '',
      startTime: json['startTime'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$ClassRecordModelImplToJson(
        _$ClassRecordModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'className': instance.className,
      'trainerName': instance.trainerName,
      'clientName': instance.clientName,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'status': instance.status,
    };
