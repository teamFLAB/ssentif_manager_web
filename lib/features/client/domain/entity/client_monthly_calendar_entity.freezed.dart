// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_monthly_calendar_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientMonthlyCalendarEntity {
  int get workoutCounts => throw _privateConstructorUsedError;
  int get classReservationCompleteCounts => throw _privateConstructorUsedError;
  int get classCompleteCounts => throw _privateConstructorUsedError;
  int get classReservationWaitCounts => throw _privateConstructorUsedError;
  int get dietCounts => throw _privateConstructorUsedError;
  List<CalendarEventEntity> get events => throw _privateConstructorUsedError;

  /// Create a copy of ClientMonthlyCalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientMonthlyCalendarEntityCopyWith<ClientMonthlyCalendarEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientMonthlyCalendarEntityCopyWith<$Res> {
  factory $ClientMonthlyCalendarEntityCopyWith(
          ClientMonthlyCalendarEntity value,
          $Res Function(ClientMonthlyCalendarEntity) then) =
      _$ClientMonthlyCalendarEntityCopyWithImpl<$Res,
          ClientMonthlyCalendarEntity>;
  @useResult
  $Res call(
      {int workoutCounts,
      int classReservationCompleteCounts,
      int classCompleteCounts,
      int classReservationWaitCounts,
      int dietCounts,
      List<CalendarEventEntity> events});
}

/// @nodoc
class _$ClientMonthlyCalendarEntityCopyWithImpl<$Res,
        $Val extends ClientMonthlyCalendarEntity>
    implements $ClientMonthlyCalendarEntityCopyWith<$Res> {
  _$ClientMonthlyCalendarEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientMonthlyCalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutCounts = null,
    Object? classReservationCompleteCounts = null,
    Object? classCompleteCounts = null,
    Object? classReservationWaitCounts = null,
    Object? dietCounts = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      workoutCounts: null == workoutCounts
          ? _value.workoutCounts
          : workoutCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classReservationCompleteCounts: null == classReservationCompleteCounts
          ? _value.classReservationCompleteCounts
          : classReservationCompleteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classCompleteCounts: null == classCompleteCounts
          ? _value.classCompleteCounts
          : classCompleteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classReservationWaitCounts: null == classReservationWaitCounts
          ? _value.classReservationWaitCounts
          : classReservationWaitCounts // ignore: cast_nullable_to_non_nullable
              as int,
      dietCounts: null == dietCounts
          ? _value.dietCounts
          : dietCounts // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientMonthlyCalendarEntityImplCopyWith<$Res>
    implements $ClientMonthlyCalendarEntityCopyWith<$Res> {
  factory _$$ClientMonthlyCalendarEntityImplCopyWith(
          _$ClientMonthlyCalendarEntityImpl value,
          $Res Function(_$ClientMonthlyCalendarEntityImpl) then) =
      __$$ClientMonthlyCalendarEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int workoutCounts,
      int classReservationCompleteCounts,
      int classCompleteCounts,
      int classReservationWaitCounts,
      int dietCounts,
      List<CalendarEventEntity> events});
}

/// @nodoc
class __$$ClientMonthlyCalendarEntityImplCopyWithImpl<$Res>
    extends _$ClientMonthlyCalendarEntityCopyWithImpl<$Res,
        _$ClientMonthlyCalendarEntityImpl>
    implements _$$ClientMonthlyCalendarEntityImplCopyWith<$Res> {
  __$$ClientMonthlyCalendarEntityImplCopyWithImpl(
      _$ClientMonthlyCalendarEntityImpl _value,
      $Res Function(_$ClientMonthlyCalendarEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientMonthlyCalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutCounts = null,
    Object? classReservationCompleteCounts = null,
    Object? classCompleteCounts = null,
    Object? classReservationWaitCounts = null,
    Object? dietCounts = null,
    Object? events = null,
  }) {
    return _then(_$ClientMonthlyCalendarEntityImpl(
      workoutCounts: null == workoutCounts
          ? _value.workoutCounts
          : workoutCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classReservationCompleteCounts: null == classReservationCompleteCounts
          ? _value.classReservationCompleteCounts
          : classReservationCompleteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classCompleteCounts: null == classCompleteCounts
          ? _value.classCompleteCounts
          : classCompleteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      classReservationWaitCounts: null == classReservationWaitCounts
          ? _value.classReservationWaitCounts
          : classReservationWaitCounts // ignore: cast_nullable_to_non_nullable
              as int,
      dietCounts: null == dietCounts
          ? _value.dietCounts
          : dietCounts // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventEntity>,
    ));
  }
}

/// @nodoc

class _$ClientMonthlyCalendarEntityImpl
    implements _ClientMonthlyCalendarEntity {
  const _$ClientMonthlyCalendarEntityImpl(
      {this.workoutCounts = 0,
      this.classReservationCompleteCounts = 0,
      this.classCompleteCounts = 0,
      this.classReservationWaitCounts = 0,
      this.dietCounts = 0,
      final List<CalendarEventEntity> events = const []})
      : _events = events;

  @override
  @JsonKey()
  final int workoutCounts;
  @override
  @JsonKey()
  final int classReservationCompleteCounts;
  @override
  @JsonKey()
  final int classCompleteCounts;
  @override
  @JsonKey()
  final int classReservationWaitCounts;
  @override
  @JsonKey()
  final int dietCounts;
  final List<CalendarEventEntity> _events;
  @override
  @JsonKey()
  List<CalendarEventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'ClientMonthlyCalendarEntity(workoutCounts: $workoutCounts, classReservationCompleteCounts: $classReservationCompleteCounts, classCompleteCounts: $classCompleteCounts, classReservationWaitCounts: $classReservationWaitCounts, dietCounts: $dietCounts, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientMonthlyCalendarEntityImpl &&
            (identical(other.workoutCounts, workoutCounts) ||
                other.workoutCounts == workoutCounts) &&
            (identical(other.classReservationCompleteCounts,
                    classReservationCompleteCounts) ||
                other.classReservationCompleteCounts ==
                    classReservationCompleteCounts) &&
            (identical(other.classCompleteCounts, classCompleteCounts) ||
                other.classCompleteCounts == classCompleteCounts) &&
            (identical(other.classReservationWaitCounts,
                    classReservationWaitCounts) ||
                other.classReservationWaitCounts ==
                    classReservationWaitCounts) &&
            (identical(other.dietCounts, dietCounts) ||
                other.dietCounts == dietCounts) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutCounts,
      classReservationCompleteCounts,
      classCompleteCounts,
      classReservationWaitCounts,
      dietCounts,
      const DeepCollectionEquality().hash(_events));

  /// Create a copy of ClientMonthlyCalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientMonthlyCalendarEntityImplCopyWith<_$ClientMonthlyCalendarEntityImpl>
      get copyWith => __$$ClientMonthlyCalendarEntityImplCopyWithImpl<
          _$ClientMonthlyCalendarEntityImpl>(this, _$identity);
}

abstract class _ClientMonthlyCalendarEntity
    implements ClientMonthlyCalendarEntity {
  const factory _ClientMonthlyCalendarEntity(
          {final int workoutCounts,
          final int classReservationCompleteCounts,
          final int classCompleteCounts,
          final int classReservationWaitCounts,
          final int dietCounts,
          final List<CalendarEventEntity> events}) =
      _$ClientMonthlyCalendarEntityImpl;

  @override
  int get workoutCounts;
  @override
  int get classReservationCompleteCounts;
  @override
  int get classCompleteCounts;
  @override
  int get classReservationWaitCounts;
  @override
  int get dietCounts;
  @override
  List<CalendarEventEntity> get events;

  /// Create a copy of ClientMonthlyCalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientMonthlyCalendarEntityImplCopyWith<_$ClientMonthlyCalendarEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
