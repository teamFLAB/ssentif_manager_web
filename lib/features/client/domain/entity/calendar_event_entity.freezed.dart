// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEventEntity {
  int get eventId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;
  ClientCalendarEventType get eventType => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  /// Create a copy of CalendarEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarEventEntityCopyWith<CalendarEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventEntityCopyWith<$Res> {
  factory $CalendarEventEntityCopyWith(
          CalendarEventEntity value, $Res Function(CalendarEventEntity) then) =
      _$CalendarEventEntityCopyWithImpl<$Res, CalendarEventEntity>;
  @useResult
  $Res call(
      {int eventId,
      String name,
      DateTime startDateTime,
      DateTime endDateTime,
      ClientCalendarEventType eventType,
      Color backgroundColor});
}

/// @nodoc
class _$CalendarEventEntityCopyWithImpl<$Res, $Val extends CalendarEventEntity>
    implements $CalendarEventEntityCopyWith<$Res> {
  _$CalendarEventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? name = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? eventType = null,
    Object? backgroundColor = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as ClientCalendarEventType,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEventEntityImplCopyWith<$Res>
    implements $CalendarEventEntityCopyWith<$Res> {
  factory _$$CalendarEventEntityImplCopyWith(_$CalendarEventEntityImpl value,
          $Res Function(_$CalendarEventEntityImpl) then) =
      __$$CalendarEventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int eventId,
      String name,
      DateTime startDateTime,
      DateTime endDateTime,
      ClientCalendarEventType eventType,
      Color backgroundColor});
}

/// @nodoc
class __$$CalendarEventEntityImplCopyWithImpl<$Res>
    extends _$CalendarEventEntityCopyWithImpl<$Res, _$CalendarEventEntityImpl>
    implements _$$CalendarEventEntityImplCopyWith<$Res> {
  __$$CalendarEventEntityImplCopyWithImpl(_$CalendarEventEntityImpl _value,
      $Res Function(_$CalendarEventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? name = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? eventType = null,
    Object? backgroundColor = null,
  }) {
    return _then(_$CalendarEventEntityImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as ClientCalendarEventType,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$CalendarEventEntityImpl implements _CalendarEventEntity {
  const _$CalendarEventEntityImpl(
      {this.eventId = -1,
      this.name = "",
      required this.startDateTime,
      required this.endDateTime,
      this.eventType = ClientCalendarEventType.classEvent,
      this.backgroundColor = AppColors.transparent});

  @override
  @JsonKey()
  final int eventId;
  @override
  @JsonKey()
  final String name;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;
  @override
  @JsonKey()
  final ClientCalendarEventType eventType;
  @override
  @JsonKey()
  final Color backgroundColor;

  @override
  String toString() {
    return 'CalendarEventEntity(eventId: $eventId, name: $name, startDateTime: $startDateTime, endDateTime: $endDateTime, eventType: $eventType, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventEntityImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, name, startDateTime,
      endDateTime, eventType, backgroundColor);

  /// Create a copy of CalendarEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventEntityImplCopyWith<_$CalendarEventEntityImpl> get copyWith =>
      __$$CalendarEventEntityImplCopyWithImpl<_$CalendarEventEntityImpl>(
          this, _$identity);
}

abstract class _CalendarEventEntity implements CalendarEventEntity {
  const factory _CalendarEventEntity(
      {final int eventId,
      final String name,
      required final DateTime startDateTime,
      required final DateTime endDateTime,
      final ClientCalendarEventType eventType,
      final Color backgroundColor}) = _$CalendarEventEntityImpl;

  @override
  int get eventId;
  @override
  String get name;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  ClientCalendarEventType get eventType;
  @override
  Color get backgroundColor;

  /// Create a copy of CalendarEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventEntityImplCopyWith<_$CalendarEventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
