// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeeklyScheduleState {
  UserEntity? get selectedUser => throw _privateConstructorUsedError;
  DateTime? get scheduleStartDate => throw _privateConstructorUsedError;
  List<CalendarScheduleEntity> get schedulesOfSelectedCoach =>
      throw _privateConstructorUsedError;
  ScheduleDetailEntity? get scheduleDetail =>
      throw _privateConstructorUsedError;

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyScheduleStateCopyWith<WeeklyScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyScheduleStateCopyWith<$Res> {
  factory $WeeklyScheduleStateCopyWith(
          WeeklyScheduleState value, $Res Function(WeeklyScheduleState) then) =
      _$WeeklyScheduleStateCopyWithImpl<$Res, WeeklyScheduleState>;
  @useResult
  $Res call(
      {UserEntity? selectedUser,
      DateTime? scheduleStartDate,
      List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      ScheduleDetailEntity? scheduleDetail});

  $UserEntityCopyWith<$Res>? get selectedUser;
  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail;
}

/// @nodoc
class _$WeeklyScheduleStateCopyWithImpl<$Res, $Val extends WeeklyScheduleState>
    implements $WeeklyScheduleStateCopyWith<$Res> {
  _$WeeklyScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUser = freezed,
    Object? scheduleStartDate = freezed,
    Object? schedulesOfSelectedCoach = null,
    Object? scheduleDetail = freezed,
  }) {
    return _then(_value.copyWith(
      selectedUser: freezed == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      scheduleStartDate: freezed == scheduleStartDate
          ? _value.scheduleStartDate
          : scheduleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulesOfSelectedCoach: null == schedulesOfSelectedCoach
          ? _value.schedulesOfSelectedCoach
          : schedulesOfSelectedCoach // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleEntity>,
      scheduleDetail: freezed == scheduleDetail
          ? _value.scheduleDetail
          : scheduleDetail // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailEntity?,
    ) as $Val);
  }

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get selectedUser {
    if (_value.selectedUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.selectedUser!, (value) {
      return _then(_value.copyWith(selectedUser: value) as $Val);
    });
  }

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail {
    if (_value.scheduleDetail == null) {
      return null;
    }

    return $ScheduleDetailEntityCopyWith<$Res>(_value.scheduleDetail!, (value) {
      return _then(_value.copyWith(scheduleDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyScheduleStateImplCopyWith<$Res>
    implements $WeeklyScheduleStateCopyWith<$Res> {
  factory _$$WeeklyScheduleStateImplCopyWith(_$WeeklyScheduleStateImpl value,
          $Res Function(_$WeeklyScheduleStateImpl) then) =
      __$$WeeklyScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserEntity? selectedUser,
      DateTime? scheduleStartDate,
      List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      ScheduleDetailEntity? scheduleDetail});

  @override
  $UserEntityCopyWith<$Res>? get selectedUser;
  @override
  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail;
}

/// @nodoc
class __$$WeeklyScheduleStateImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleStateCopyWithImpl<$Res, _$WeeklyScheduleStateImpl>
    implements _$$WeeklyScheduleStateImplCopyWith<$Res> {
  __$$WeeklyScheduleStateImplCopyWithImpl(_$WeeklyScheduleStateImpl _value,
      $Res Function(_$WeeklyScheduleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUser = freezed,
    Object? scheduleStartDate = freezed,
    Object? schedulesOfSelectedCoach = null,
    Object? scheduleDetail = freezed,
  }) {
    return _then(_$WeeklyScheduleStateImpl(
      selectedUser: freezed == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      scheduleStartDate: freezed == scheduleStartDate
          ? _value.scheduleStartDate
          : scheduleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulesOfSelectedCoach: null == schedulesOfSelectedCoach
          ? _value._schedulesOfSelectedCoach
          : schedulesOfSelectedCoach // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleEntity>,
      scheduleDetail: freezed == scheduleDetail
          ? _value.scheduleDetail
          : scheduleDetail // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailEntity?,
    ));
  }
}

/// @nodoc

class _$WeeklyScheduleStateImpl implements _WeeklyScheduleState {
  const _$WeeklyScheduleStateImpl(
      {this.selectedUser,
      this.scheduleStartDate,
      final List<CalendarScheduleEntity> schedulesOfSelectedCoach = const [],
      this.scheduleDetail})
      : _schedulesOfSelectedCoach = schedulesOfSelectedCoach;

  @override
  final UserEntity? selectedUser;
  @override
  final DateTime? scheduleStartDate;
  final List<CalendarScheduleEntity> _schedulesOfSelectedCoach;
  @override
  @JsonKey()
  List<CalendarScheduleEntity> get schedulesOfSelectedCoach {
    if (_schedulesOfSelectedCoach is EqualUnmodifiableListView)
      return _schedulesOfSelectedCoach;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedulesOfSelectedCoach);
  }

  @override
  final ScheduleDetailEntity? scheduleDetail;

  @override
  String toString() {
    return 'WeeklyScheduleState(selectedUser: $selectedUser, scheduleStartDate: $scheduleStartDate, schedulesOfSelectedCoach: $schedulesOfSelectedCoach, scheduleDetail: $scheduleDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyScheduleStateImpl &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser) &&
            (identical(other.scheduleStartDate, scheduleStartDate) ||
                other.scheduleStartDate == scheduleStartDate) &&
            const DeepCollectionEquality().equals(
                other._schedulesOfSelectedCoach, _schedulesOfSelectedCoach) &&
            (identical(other.scheduleDetail, scheduleDetail) ||
                other.scheduleDetail == scheduleDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedUser,
      scheduleStartDate,
      const DeepCollectionEquality().hash(_schedulesOfSelectedCoach),
      scheduleDetail);

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyScheduleStateImplCopyWith<_$WeeklyScheduleStateImpl> get copyWith =>
      __$$WeeklyScheduleStateImplCopyWithImpl<_$WeeklyScheduleStateImpl>(
          this, _$identity);
}

abstract class _WeeklyScheduleState implements WeeklyScheduleState {
  const factory _WeeklyScheduleState(
      {final UserEntity? selectedUser,
      final DateTime? scheduleStartDate,
      final List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      final ScheduleDetailEntity? scheduleDetail}) = _$WeeklyScheduleStateImpl;

  @override
  UserEntity? get selectedUser;
  @override
  DateTime? get scheduleStartDate;
  @override
  List<CalendarScheduleEntity> get schedulesOfSelectedCoach;
  @override
  ScheduleDetailEntity? get scheduleDetail;

  /// Create a copy of WeeklyScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyScheduleStateImplCopyWith<_$WeeklyScheduleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
