// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'managed_members_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManagedMembersState {
  UserEntity? get selectedCoach => throw _privateConstructorUsedError;
  List<ClientListEntity> get managedMembers =>
      throw _privateConstructorUsedError;
  ClientListEntity? get selectedClient => throw _privateConstructorUsedError;
  ClientProfileEntity? get selectedClientProfile =>
      throw _privateConstructorUsedError;
  ClientMonthlyCalendarEntity? get selectedClientCalendar =>
      throw _privateConstructorUsedError;
  bool get isMembersLoading => throw _privateConstructorUsedError;
  bool get isProfileLoading => throw _privateConstructorUsedError;
  bool get isCalendarLoading => throw _privateConstructorUsedError;
  String get membersErrorMessage => throw _privateConstructorUsedError;
  String get calendarErrorMessage => throw _privateConstructorUsedError;
  DateTime get selectedMonth => throw _privateConstructorUsedError;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagedMembersStateCopyWith<ManagedMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedMembersStateCopyWith<$Res> {
  factory $ManagedMembersStateCopyWith(
          ManagedMembersState value, $Res Function(ManagedMembersState) then) =
      _$ManagedMembersStateCopyWithImpl<$Res, ManagedMembersState>;
  @useResult
  $Res call(
      {UserEntity? selectedCoach,
      List<ClientListEntity> managedMembers,
      ClientListEntity? selectedClient,
      ClientProfileEntity? selectedClientProfile,
      ClientMonthlyCalendarEntity? selectedClientCalendar,
      bool isMembersLoading,
      bool isProfileLoading,
      bool isCalendarLoading,
      String membersErrorMessage,
      String calendarErrorMessage,
      DateTime selectedMonth});

  $UserEntityCopyWith<$Res>? get selectedCoach;
  $ClientListEntityCopyWith<$Res>? get selectedClient;
  $ClientProfileEntityCopyWith<$Res>? get selectedClientProfile;
  $ClientMonthlyCalendarEntityCopyWith<$Res>? get selectedClientCalendar;
}

/// @nodoc
class _$ManagedMembersStateCopyWithImpl<$Res, $Val extends ManagedMembersState>
    implements $ManagedMembersStateCopyWith<$Res> {
  _$ManagedMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCoach = freezed,
    Object? managedMembers = null,
    Object? selectedClient = freezed,
    Object? selectedClientProfile = freezed,
    Object? selectedClientCalendar = freezed,
    Object? isMembersLoading = null,
    Object? isProfileLoading = null,
    Object? isCalendarLoading = null,
    Object? membersErrorMessage = null,
    Object? calendarErrorMessage = null,
    Object? selectedMonth = null,
  }) {
    return _then(_value.copyWith(
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      managedMembers: null == managedMembers
          ? _value.managedMembers
          : managedMembers // ignore: cast_nullable_to_non_nullable
              as List<ClientListEntity>,
      selectedClient: freezed == selectedClient
          ? _value.selectedClient
          : selectedClient // ignore: cast_nullable_to_non_nullable
              as ClientListEntity?,
      selectedClientProfile: freezed == selectedClientProfile
          ? _value.selectedClientProfile
          : selectedClientProfile // ignore: cast_nullable_to_non_nullable
              as ClientProfileEntity?,
      selectedClientCalendar: freezed == selectedClientCalendar
          ? _value.selectedClientCalendar
          : selectedClientCalendar // ignore: cast_nullable_to_non_nullable
              as ClientMonthlyCalendarEntity?,
      isMembersLoading: null == isMembersLoading
          ? _value.isMembersLoading
          : isMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProfileLoading: null == isProfileLoading
          ? _value.isProfileLoading
          : isProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalendarLoading: null == isCalendarLoading
          ? _value.isCalendarLoading
          : isCalendarLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      membersErrorMessage: null == membersErrorMessage
          ? _value.membersErrorMessage
          : membersErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      calendarErrorMessage: null == calendarErrorMessage
          ? _value.calendarErrorMessage
          : calendarErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get selectedCoach {
    if (_value.selectedCoach == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.selectedCoach!, (value) {
      return _then(_value.copyWith(selectedCoach: value) as $Val);
    });
  }

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientListEntityCopyWith<$Res>? get selectedClient {
    if (_value.selectedClient == null) {
      return null;
    }

    return $ClientListEntityCopyWith<$Res>(_value.selectedClient!, (value) {
      return _then(_value.copyWith(selectedClient: value) as $Val);
    });
  }

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientProfileEntityCopyWith<$Res>? get selectedClientProfile {
    if (_value.selectedClientProfile == null) {
      return null;
    }

    return $ClientProfileEntityCopyWith<$Res>(_value.selectedClientProfile!,
        (value) {
      return _then(_value.copyWith(selectedClientProfile: value) as $Val);
    });
  }

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientMonthlyCalendarEntityCopyWith<$Res>? get selectedClientCalendar {
    if (_value.selectedClientCalendar == null) {
      return null;
    }

    return $ClientMonthlyCalendarEntityCopyWith<$Res>(
        _value.selectedClientCalendar!, (value) {
      return _then(_value.copyWith(selectedClientCalendar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManagedMembersStateImplCopyWith<$Res>
    implements $ManagedMembersStateCopyWith<$Res> {
  factory _$$ManagedMembersStateImplCopyWith(_$ManagedMembersStateImpl value,
          $Res Function(_$ManagedMembersStateImpl) then) =
      __$$ManagedMembersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserEntity? selectedCoach,
      List<ClientListEntity> managedMembers,
      ClientListEntity? selectedClient,
      ClientProfileEntity? selectedClientProfile,
      ClientMonthlyCalendarEntity? selectedClientCalendar,
      bool isMembersLoading,
      bool isProfileLoading,
      bool isCalendarLoading,
      String membersErrorMessage,
      String calendarErrorMessage,
      DateTime selectedMonth});

  @override
  $UserEntityCopyWith<$Res>? get selectedCoach;
  @override
  $ClientListEntityCopyWith<$Res>? get selectedClient;
  @override
  $ClientProfileEntityCopyWith<$Res>? get selectedClientProfile;
  @override
  $ClientMonthlyCalendarEntityCopyWith<$Res>? get selectedClientCalendar;
}

/// @nodoc
class __$$ManagedMembersStateImplCopyWithImpl<$Res>
    extends _$ManagedMembersStateCopyWithImpl<$Res, _$ManagedMembersStateImpl>
    implements _$$ManagedMembersStateImplCopyWith<$Res> {
  __$$ManagedMembersStateImplCopyWithImpl(_$ManagedMembersStateImpl _value,
      $Res Function(_$ManagedMembersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCoach = freezed,
    Object? managedMembers = null,
    Object? selectedClient = freezed,
    Object? selectedClientProfile = freezed,
    Object? selectedClientCalendar = freezed,
    Object? isMembersLoading = null,
    Object? isProfileLoading = null,
    Object? isCalendarLoading = null,
    Object? membersErrorMessage = null,
    Object? calendarErrorMessage = null,
    Object? selectedMonth = null,
  }) {
    return _then(_$ManagedMembersStateImpl(
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      managedMembers: null == managedMembers
          ? _value._managedMembers
          : managedMembers // ignore: cast_nullable_to_non_nullable
              as List<ClientListEntity>,
      selectedClient: freezed == selectedClient
          ? _value.selectedClient
          : selectedClient // ignore: cast_nullable_to_non_nullable
              as ClientListEntity?,
      selectedClientProfile: freezed == selectedClientProfile
          ? _value.selectedClientProfile
          : selectedClientProfile // ignore: cast_nullable_to_non_nullable
              as ClientProfileEntity?,
      selectedClientCalendar: freezed == selectedClientCalendar
          ? _value.selectedClientCalendar
          : selectedClientCalendar // ignore: cast_nullable_to_non_nullable
              as ClientMonthlyCalendarEntity?,
      isMembersLoading: null == isMembersLoading
          ? _value.isMembersLoading
          : isMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProfileLoading: null == isProfileLoading
          ? _value.isProfileLoading
          : isProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalendarLoading: null == isCalendarLoading
          ? _value.isCalendarLoading
          : isCalendarLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      membersErrorMessage: null == membersErrorMessage
          ? _value.membersErrorMessage
          : membersErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      calendarErrorMessage: null == calendarErrorMessage
          ? _value.calendarErrorMessage
          : calendarErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ManagedMembersStateImpl implements _ManagedMembersState {
  const _$ManagedMembersStateImpl(
      {this.selectedCoach,
      final List<ClientListEntity> managedMembers = const [],
      this.selectedClient,
      this.selectedClientProfile,
      this.selectedClientCalendar,
      this.isMembersLoading = false,
      this.isProfileLoading = false,
      this.isCalendarLoading = false,
      this.membersErrorMessage = "",
      this.calendarErrorMessage = "",
      required this.selectedMonth})
      : _managedMembers = managedMembers;

  @override
  final UserEntity? selectedCoach;
  final List<ClientListEntity> _managedMembers;
  @override
  @JsonKey()
  List<ClientListEntity> get managedMembers {
    if (_managedMembers is EqualUnmodifiableListView) return _managedMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managedMembers);
  }

  @override
  final ClientListEntity? selectedClient;
  @override
  final ClientProfileEntity? selectedClientProfile;
  @override
  final ClientMonthlyCalendarEntity? selectedClientCalendar;
  @override
  @JsonKey()
  final bool isMembersLoading;
  @override
  @JsonKey()
  final bool isProfileLoading;
  @override
  @JsonKey()
  final bool isCalendarLoading;
  @override
  @JsonKey()
  final String membersErrorMessage;
  @override
  @JsonKey()
  final String calendarErrorMessage;
  @override
  final DateTime selectedMonth;

  @override
  String toString() {
    return 'ManagedMembersState(selectedCoach: $selectedCoach, managedMembers: $managedMembers, selectedClient: $selectedClient, selectedClientProfile: $selectedClientProfile, selectedClientCalendar: $selectedClientCalendar, isMembersLoading: $isMembersLoading, isProfileLoading: $isProfileLoading, isCalendarLoading: $isCalendarLoading, membersErrorMessage: $membersErrorMessage, calendarErrorMessage: $calendarErrorMessage, selectedMonth: $selectedMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagedMembersStateImpl &&
            (identical(other.selectedCoach, selectedCoach) ||
                other.selectedCoach == selectedCoach) &&
            const DeepCollectionEquality()
                .equals(other._managedMembers, _managedMembers) &&
            (identical(other.selectedClient, selectedClient) ||
                other.selectedClient == selectedClient) &&
            (identical(other.selectedClientProfile, selectedClientProfile) ||
                other.selectedClientProfile == selectedClientProfile) &&
            (identical(other.selectedClientCalendar, selectedClientCalendar) ||
                other.selectedClientCalendar == selectedClientCalendar) &&
            (identical(other.isMembersLoading, isMembersLoading) ||
                other.isMembersLoading == isMembersLoading) &&
            (identical(other.isProfileLoading, isProfileLoading) ||
                other.isProfileLoading == isProfileLoading) &&
            (identical(other.isCalendarLoading, isCalendarLoading) ||
                other.isCalendarLoading == isCalendarLoading) &&
            (identical(other.membersErrorMessage, membersErrorMessage) ||
                other.membersErrorMessage == membersErrorMessage) &&
            (identical(other.calendarErrorMessage, calendarErrorMessage) ||
                other.calendarErrorMessage == calendarErrorMessage) &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCoach,
      const DeepCollectionEquality().hash(_managedMembers),
      selectedClient,
      selectedClientProfile,
      selectedClientCalendar,
      isMembersLoading,
      isProfileLoading,
      isCalendarLoading,
      membersErrorMessage,
      calendarErrorMessage,
      selectedMonth);

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagedMembersStateImplCopyWith<_$ManagedMembersStateImpl> get copyWith =>
      __$$ManagedMembersStateImplCopyWithImpl<_$ManagedMembersStateImpl>(
          this, _$identity);
}

abstract class _ManagedMembersState implements ManagedMembersState {
  const factory _ManagedMembersState(
      {final UserEntity? selectedCoach,
      final List<ClientListEntity> managedMembers,
      final ClientListEntity? selectedClient,
      final ClientProfileEntity? selectedClientProfile,
      final ClientMonthlyCalendarEntity? selectedClientCalendar,
      final bool isMembersLoading,
      final bool isProfileLoading,
      final bool isCalendarLoading,
      final String membersErrorMessage,
      final String calendarErrorMessage,
      required final DateTime selectedMonth}) = _$ManagedMembersStateImpl;

  @override
  UserEntity? get selectedCoach;
  @override
  List<ClientListEntity> get managedMembers;
  @override
  ClientListEntity? get selectedClient;
  @override
  ClientProfileEntity? get selectedClientProfile;
  @override
  ClientMonthlyCalendarEntity? get selectedClientCalendar;
  @override
  bool get isMembersLoading;
  @override
  bool get isProfileLoading;
  @override
  bool get isCalendarLoading;
  @override
  String get membersErrorMessage;
  @override
  String get calendarErrorMessage;
  @override
  DateTime get selectedMonth;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagedMembersStateImplCopyWith<_$ManagedMembersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
