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
  int? get selectedUserId => throw _privateConstructorUsedError;

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
      {List<UserEntity> coaches, int selectedTabIdx, int? selectedUserId});
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
    Object? selectedUserId = freezed,
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
      selectedUserId: freezed == selectedUserId
          ? _value.selectedUserId
          : selectedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      {List<UserEntity> coaches, int selectedTabIdx, int? selectedUserId});
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
    Object? selectedUserId = freezed,
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
      selectedUserId: freezed == selectedUserId
          ? _value.selectedUserId
          : selectedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CoachesStateImpl implements _CoachesState {
  const _$CoachesStateImpl(
      {final List<UserEntity> coaches = const [],
      this.selectedTabIdx = 0,
      this.selectedUserId})
      : _coaches = coaches;

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
  final int? selectedUserId;

  @override
  String toString() {
    return 'CoachesState(coaches: $coaches, selectedTabIdx: $selectedTabIdx, selectedUserId: $selectedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachesStateImpl &&
            const DeepCollectionEquality().equals(other._coaches, _coaches) &&
            (identical(other.selectedTabIdx, selectedTabIdx) ||
                other.selectedTabIdx == selectedTabIdx) &&
            (identical(other.selectedUserId, selectedUserId) ||
                other.selectedUserId == selectedUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coaches),
      selectedTabIdx,
      selectedUserId);

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
      final int? selectedUserId}) = _$CoachesStateImpl;

  @override
  List<UserEntity> get coaches;
  @override
  int get selectedTabIdx;
  @override
  int? get selectedUserId;

  /// Create a copy of CoachesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachesStateImplCopyWith<_$CoachesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
