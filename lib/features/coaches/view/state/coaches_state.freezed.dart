// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coaches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachesState {
  List<UserEntity> get coaches => throw _privateConstructorUsedError;
  int get selectedTabIdx => throw _privateConstructorUsedError;
  UserEntity? get selectedUser => throw _privateConstructorUsedError;
  DateTime? get scheduleStartDate => throw _privateConstructorUsedError;
  List<CalendarScheduleEntity> get schedulesOfSelectedCoach =>
      throw _privateConstructorUsedError;
  DateTime? get calendarDate => throw _privateConstructorUsedError;

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachesStateCopyWith<CoachesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachesStateCopyWith<$Res> {
  factory $CoachesStateCopyWith(
          CoachesState value, $Res Function(CoachesState) then) =
      _$CoachesStateCopyWithImpl<$Res, CoachesState>;
  @useResult
  $Res call(
      {List<UserEntity> coaches,
      int selectedTabIdx,
      UserEntity? selectedUser,
      DateTime? scheduleStartDate,
      List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      DateTime? calendarDate});

  $UserEntityCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class _$CoachesStateCopyWithImpl<$Res, $Val extends CoachesState>
    implements $CoachesStateCopyWith<$Res> {
  _$CoachesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coaches = null,
    Object? selectedTabIdx = null,
    Object? selectedUser = freezed,
    Object? scheduleStartDate = freezed,
    Object? schedulesOfSelectedCoach = null,
    Object? calendarDate = freezed,
  }) {
    return _then(_value.copyWith(
      coaches: null == coaches
          ? _value.coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      selectedTabIdx: null == selectedTabIdx
          ? _value.selectedTabIdx
          : selectedTabIdx // ignore: cast_nullable_to_non_nullable
              as int,
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
      calendarDate: freezed == calendarDate
          ? _value.calendarDate
          : calendarDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of CoachesState
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
}

/// @nodoc
abstract class _$$CoachesStateImplCopyWith<$Res>
    implements $CoachesStateCopyWith<$Res> {
  factory _$$CoachesStateImplCopyWith(
          _$CoachesStateImpl value, $Res Function(_$CoachesStateImpl) then) =
      __$$CoachesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserEntity> coaches,
      int selectedTabIdx,
      UserEntity? selectedUser,
      DateTime? scheduleStartDate,
      List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      DateTime? calendarDate});

  @override
  $UserEntityCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class __$$CoachesStateImplCopyWithImpl<$Res>
    extends _$CoachesStateCopyWithImpl<$Res, _$CoachesStateImpl>
    implements _$$CoachesStateImplCopyWith<$Res> {
  __$$CoachesStateImplCopyWithImpl(
      _$CoachesStateImpl _value, $Res Function(_$CoachesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coaches = null,
    Object? selectedTabIdx = null,
    Object? selectedUser = freezed,
    Object? scheduleStartDate = freezed,
    Object? schedulesOfSelectedCoach = null,
    Object? calendarDate = freezed,
  }) {
    return _then(_$CoachesStateImpl(
      coaches: null == coaches
          ? _value._coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      selectedTabIdx: null == selectedTabIdx
          ? _value.selectedTabIdx
          : selectedTabIdx // ignore: cast_nullable_to_non_nullable
              as int,
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
      calendarDate: freezed == calendarDate
          ? _value.calendarDate
          : calendarDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CoachesStateImpl implements _CoachesState {
  const _$CoachesStateImpl(
      {final List<UserEntity> coaches = const [],
      this.selectedTabIdx = 0,
      this.selectedUser,
      this.scheduleStartDate,
      final List<CalendarScheduleEntity> schedulesOfSelectedCoach = const [],
      this.calendarDate = null})
      : _coaches = coaches,
        _schedulesOfSelectedCoach = schedulesOfSelectedCoach;

  final List<UserEntity> _coaches;
  @override
  @JsonKey()
  List<UserEntity> get coaches {
    if (_coaches is EqualUnmodifiableListView) return _coaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coaches);
  }

  @override
  @JsonKey()
  final int selectedTabIdx;
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
  @JsonKey()
  final DateTime? calendarDate;

  @override
  String toString() {
    return 'CoachesState(coaches: $coaches, selectedTabIdx: $selectedTabIdx, selectedUser: $selectedUser, scheduleStartDate: $scheduleStartDate, schedulesOfSelectedCoach: $schedulesOfSelectedCoach, calendarDate: $calendarDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachesStateImpl &&
            const DeepCollectionEquality().equals(other._coaches, _coaches) &&
            (identical(other.selectedTabIdx, selectedTabIdx) ||
                other.selectedTabIdx == selectedTabIdx) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser) &&
            (identical(other.scheduleStartDate, scheduleStartDate) ||
                other.scheduleStartDate == scheduleStartDate) &&
            const DeepCollectionEquality().equals(
                other._schedulesOfSelectedCoach, _schedulesOfSelectedCoach) &&
            (identical(other.calendarDate, calendarDate) ||
                other.calendarDate == calendarDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coaches),
      selectedTabIdx,
      selectedUser,
      scheduleStartDate,
      const DeepCollectionEquality().hash(_schedulesOfSelectedCoach),
      calendarDate);

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachesStateImplCopyWith<_$CoachesStateImpl> get copyWith =>
      __$$CoachesStateImplCopyWithImpl<_$CoachesStateImpl>(this, _$identity);
}

abstract class _CoachesState implements CoachesState {
  const factory _CoachesState(
      {final List<UserEntity> coaches,
      final int selectedTabIdx,
      final UserEntity? selectedUser,
      final DateTime? scheduleStartDate,
      final List<CalendarScheduleEntity> schedulesOfSelectedCoach,
      final DateTime? calendarDate}) = _$CoachesStateImpl;

  @override
  List<UserEntity> get coaches;
  @override
  int get selectedTabIdx;
  @override
  UserEntity? get selectedUser;
  @override
  DateTime? get scheduleStartDate;
  @override
  List<CalendarScheduleEntity> get schedulesOfSelectedCoach;
  @override
  DateTime? get calendarDate;

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachesStateImplCopyWith<_$CoachesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
