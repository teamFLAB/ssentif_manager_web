// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventEntityImpl _$$EventEntityImplFromJson(Map<String, dynamic> json) =>
    _$EventEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
    );

Map<String, dynamic> _$$EventEntityImplToJson(_$EventEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
    };

const _$EventTypeEnumMap = {
  EventType.attendance: 'attendance',
  EventType.reservationComplete: 'reservation',
  EventType.reservationRequest: 'reservationRequest',
  EventType.personalExercise: 'personalExercise',
  EventType.diet: 'diet',
};
