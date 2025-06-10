// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coaches_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachesIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) clickCoachProfile,
    required TResult Function(int idx) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? clickCoachProfile,
    TResult? Function(int idx)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? clickCoachProfile,
    TResult Function(int idx)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickCoachProfile value) clickCoachProfile,
    required TResult Function(_SelectTab value) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult? Function(_SelectTab value)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult Function(_SelectTab value)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachesIntentCopyWith<$Res> {
  factory $CoachesIntentCopyWith(
          CoachesIntent value, $Res Function(CoachesIntent) then) =
      _$CoachesIntentCopyWithImpl<$Res, CoachesIntent>;
}

/// @nodoc
class _$CoachesIntentCopyWithImpl<$Res, $Val extends CoachesIntent>
    implements $CoachesIntentCopyWith<$Res> {
  _$CoachesIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClickCoachProfileImplCopyWith<$Res> {
  factory _$$ClickCoachProfileImplCopyWith(_$ClickCoachProfileImpl value,
          $Res Function(_$ClickCoachProfileImpl) then) =
      __$$ClickCoachProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$ClickCoachProfileImplCopyWithImpl<$Res>
    extends _$CoachesIntentCopyWithImpl<$Res, _$ClickCoachProfileImpl>
    implements _$$ClickCoachProfileImplCopyWith<$Res> {
  __$$ClickCoachProfileImplCopyWithImpl(_$ClickCoachProfileImpl _value,
      $Res Function(_$ClickCoachProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ClickCoachProfileImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ClickCoachProfileImpl implements _ClickCoachProfile {
  const _$ClickCoachProfileImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'CoachesIntent.clickCoachProfile(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickCoachProfileImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickCoachProfileImplCopyWith<_$ClickCoachProfileImpl> get copyWith =>
      __$$ClickCoachProfileImplCopyWithImpl<_$ClickCoachProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) clickCoachProfile,
    required TResult Function(int idx) selectTab,
  }) {
    return clickCoachProfile(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? clickCoachProfile,
    TResult? Function(int idx)? selectTab,
  }) {
    return clickCoachProfile?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? clickCoachProfile,
    TResult Function(int idx)? selectTab,
    required TResult orElse(),
  }) {
    if (clickCoachProfile != null) {
      return clickCoachProfile(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickCoachProfile value) clickCoachProfile,
    required TResult Function(_SelectTab value) selectTab,
  }) {
    return clickCoachProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult? Function(_SelectTab value)? selectTab,
  }) {
    return clickCoachProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult Function(_SelectTab value)? selectTab,
    required TResult orElse(),
  }) {
    if (clickCoachProfile != null) {
      return clickCoachProfile(this);
    }
    return orElse();
  }
}

abstract class _ClickCoachProfile implements CoachesIntent {
  const factory _ClickCoachProfile({required final UserEntity user}) =
      _$ClickCoachProfileImpl;

  UserEntity get user;

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClickCoachProfileImplCopyWith<_$ClickCoachProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTabImplCopyWith<$Res> {
  factory _$$SelectTabImplCopyWith(
          _$SelectTabImpl value, $Res Function(_$SelectTabImpl) then) =
      __$$SelectTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idx});
}

/// @nodoc
class __$$SelectTabImplCopyWithImpl<$Res>
    extends _$CoachesIntentCopyWithImpl<$Res, _$SelectTabImpl>
    implements _$$SelectTabImplCopyWith<$Res> {
  __$$SelectTabImplCopyWithImpl(
      _$SelectTabImpl _value, $Res Function(_$SelectTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_$SelectTabImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTabImpl implements _SelectTab {
  const _$SelectTabImpl({required this.idx});

  @override
  final int idx;

  @override
  String toString() {
    return 'CoachesIntent.selectTab(idx: $idx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTabImpl &&
            (identical(other.idx, idx) || other.idx == idx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx);

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTabImplCopyWith<_$SelectTabImpl> get copyWith =>
      __$$SelectTabImplCopyWithImpl<_$SelectTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) clickCoachProfile,
    required TResult Function(int idx) selectTab,
  }) {
    return selectTab(idx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? clickCoachProfile,
    TResult? Function(int idx)? selectTab,
  }) {
    return selectTab?.call(idx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? clickCoachProfile,
    TResult Function(int idx)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(idx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickCoachProfile value) clickCoachProfile,
    required TResult Function(_SelectTab value) selectTab,
  }) {
    return selectTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult? Function(_SelectTab value)? selectTab,
  }) {
    return selectTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickCoachProfile value)? clickCoachProfile,
    TResult Function(_SelectTab value)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(this);
    }
    return orElse();
  }
}

abstract class _SelectTab implements CoachesIntent {
  const factory _SelectTab({required final int idx}) = _$SelectTabImpl;

  int get idx;

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTabImplCopyWith<_$SelectTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
