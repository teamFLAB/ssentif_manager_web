

import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../shared/enumtype/client_calendar_event_type.dart';

part 'calendar_event_entity.freezed.dart';

@freezed
class CalendarEventEntity with _$CalendarEventEntity {
  const factory CalendarEventEntity({
    @Default(-1) int eventId,
    @Default("") String name,
    required DateTime startDateTime,
    required DateTime endDateTime,
    @Default(ClientCalendarEventType.classEvent) ClientCalendarEventType eventType,
    @Default(AppColors.transparent) Color backgroundColor
  }) = _CalendarEventEntity;
}