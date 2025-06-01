// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEntity {
  ScheduleStatusEntity get scheduleStatus => throw _privateConstructorUsedError;
  List<CalendarScheduleEntity> get schedules =>
      throw _privateConstructorUsedError;

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarEntityCopyWith<CalendarEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEntityCopyWith<$Res> {
  factory $CalendarEntityCopyWith(
          CalendarEntity value, $Res Function(CalendarEntity) then) =
      _$CalendarEntityCopyWithImpl<$Res, CalendarEntity>;
  @useResult
  $Res call(
      {ScheduleStatusEntity scheduleStatus,
      List<CalendarScheduleEntity> schedules});

  $ScheduleStatusEntityCopyWith<$Res> get scheduleStatus;
}

/// @nodoc
class _$CalendarEntityCopyWithImpl<$Res, $Val extends CalendarEntity>
    implements $CalendarEntityCopyWith<$Res> {
  _$CalendarEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleStatus = null,
    Object? schedules = null,
  }) {
    return _then(_value.copyWith(
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as ScheduleStatusEntity,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleEntity>,
    ) as $Val);
  }

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleStatusEntityCopyWith<$Res> get scheduleStatus {
    return $ScheduleStatusEntityCopyWith<$Res>(_value.scheduleStatus, (value) {
      return _then(_value.copyWith(scheduleStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarEntityImplCopyWith<$Res>
    implements $CalendarEntityCopyWith<$Res> {
  factory _$$CalendarEntityImplCopyWith(_$CalendarEntityImpl value,
          $Res Function(_$CalendarEntityImpl) then) =
      __$$CalendarEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScheduleStatusEntity scheduleStatus,
      List<CalendarScheduleEntity> schedules});

  @override
  $ScheduleStatusEntityCopyWith<$Res> get scheduleStatus;
}

/// @nodoc
class __$$CalendarEntityImplCopyWithImpl<$Res>
    extends _$CalendarEntityCopyWithImpl<$Res, _$CalendarEntityImpl>
    implements _$$CalendarEntityImplCopyWith<$Res> {
  __$$CalendarEntityImplCopyWithImpl(
      _$CalendarEntityImpl _value, $Res Function(_$CalendarEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleStatus = null,
    Object? schedules = null,
  }) {
    return _then(_$CalendarEntityImpl(
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as ScheduleStatusEntity,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleEntity>,
    ));
  }
}

/// @nodoc

class _$CalendarEntityImpl implements _CalendarEntity {
  _$CalendarEntityImpl(
      {this.scheduleStatus = const ScheduleStatusEntity(),
      final List<CalendarScheduleEntity> schedules = const []})
      : _schedules = schedules;

  @override
  @JsonKey()
  final ScheduleStatusEntity scheduleStatus;
  final List<CalendarScheduleEntity> _schedules;
  @override
  @JsonKey()
  List<CalendarScheduleEntity> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'CalendarEntity(scheduleStatus: $scheduleStatus, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEntityImpl &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleStatus,
      const DeepCollectionEquality().hash(_schedules));

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEntityImplCopyWith<_$CalendarEntityImpl> get copyWith =>
      __$$CalendarEntityImplCopyWithImpl<_$CalendarEntityImpl>(
          this, _$identity);
}

abstract class _CalendarEntity implements CalendarEntity {
  factory _CalendarEntity(
      {final ScheduleStatusEntity scheduleStatus,
      final List<CalendarScheduleEntity> schedules}) = _$CalendarEntityImpl;

  @override
  ScheduleStatusEntity get scheduleStatus;
  @override
  List<CalendarScheduleEntity> get schedules;

  /// Create a copy of CalendarEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEntityImplCopyWith<_$CalendarEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleStatusEntity {
  int get classCompleteCount => throw _privateConstructorUsedError;
  int get reservationWaitCount => throw _privateConstructorUsedError;
  int get reservationCompleteCount => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleStatusEntityCopyWith<ScheduleStatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStatusEntityCopyWith<$Res> {
  factory $ScheduleStatusEntityCopyWith(ScheduleStatusEntity value,
          $Res Function(ScheduleStatusEntity) then) =
      _$ScheduleStatusEntityCopyWithImpl<$Res, ScheduleStatusEntity>;
  @useResult
  $Res call(
      {int classCompleteCount,
      int reservationWaitCount,
      int reservationCompleteCount});
}

/// @nodoc
class _$ScheduleStatusEntityCopyWithImpl<$Res,
        $Val extends ScheduleStatusEntity>
    implements $ScheduleStatusEntityCopyWith<$Res> {
  _$ScheduleStatusEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classCompleteCount = null,
    Object? reservationWaitCount = null,
    Object? reservationCompleteCount = null,
  }) {
    return _then(_value.copyWith(
      classCompleteCount: null == classCompleteCount
          ? _value.classCompleteCount
          : classCompleteCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationWaitCount: null == reservationWaitCount
          ? _value.reservationWaitCount
          : reservationWaitCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCompleteCount: null == reservationCompleteCount
          ? _value.reservationCompleteCount
          : reservationCompleteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleStatusEntityImplCopyWith<$Res>
    implements $ScheduleStatusEntityCopyWith<$Res> {
  factory _$$ScheduleStatusEntityImplCopyWith(_$ScheduleStatusEntityImpl value,
          $Res Function(_$ScheduleStatusEntityImpl) then) =
      __$$ScheduleStatusEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int classCompleteCount,
      int reservationWaitCount,
      int reservationCompleteCount});
}

/// @nodoc
class __$$ScheduleStatusEntityImplCopyWithImpl<$Res>
    extends _$ScheduleStatusEntityCopyWithImpl<$Res, _$ScheduleStatusEntityImpl>
    implements _$$ScheduleStatusEntityImplCopyWith<$Res> {
  __$$ScheduleStatusEntityImplCopyWithImpl(_$ScheduleStatusEntityImpl _value,
      $Res Function(_$ScheduleStatusEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classCompleteCount = null,
    Object? reservationWaitCount = null,
    Object? reservationCompleteCount = null,
  }) {
    return _then(_$ScheduleStatusEntityImpl(
      classCompleteCount: null == classCompleteCount
          ? _value.classCompleteCount
          : classCompleteCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationWaitCount: null == reservationWaitCount
          ? _value.reservationWaitCount
          : reservationWaitCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCompleteCount: null == reservationCompleteCount
          ? _value.reservationCompleteCount
          : reservationCompleteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleStatusEntityImpl implements _ScheduleStatusEntity {
  const _$ScheduleStatusEntityImpl(
      {this.classCompleteCount = 0,
      this.reservationWaitCount = 0,
      this.reservationCompleteCount = 0});

  @override
  @JsonKey()
  final int classCompleteCount;
  @override
  @JsonKey()
  final int reservationWaitCount;
  @override
  @JsonKey()
  final int reservationCompleteCount;

  @override
  String toString() {
    return 'ScheduleStatusEntity(classCompleteCount: $classCompleteCount, reservationWaitCount: $reservationWaitCount, reservationCompleteCount: $reservationCompleteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStatusEntityImpl &&
            (identical(other.classCompleteCount, classCompleteCount) ||
                other.classCompleteCount == classCompleteCount) &&
            (identical(other.reservationWaitCount, reservationWaitCount) ||
                other.reservationWaitCount == reservationWaitCount) &&
            (identical(
                    other.reservationCompleteCount, reservationCompleteCount) ||
                other.reservationCompleteCount == reservationCompleteCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classCompleteCount,
      reservationWaitCount, reservationCompleteCount);

  /// Create a copy of ScheduleStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStatusEntityImplCopyWith<_$ScheduleStatusEntityImpl>
      get copyWith =>
          __$$ScheduleStatusEntityImplCopyWithImpl<_$ScheduleStatusEntityImpl>(
              this, _$identity);
}

abstract class _ScheduleStatusEntity implements ScheduleStatusEntity {
  const factory _ScheduleStatusEntity(
      {final int classCompleteCount,
      final int reservationWaitCount,
      final int reservationCompleteCount}) = _$ScheduleStatusEntityImpl;

  @override
  int get classCompleteCount;
  @override
  int get reservationWaitCount;
  @override
  int get reservationCompleteCount;

  /// Create a copy of ScheduleStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStatusEntityImplCopyWith<_$ScheduleStatusEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
