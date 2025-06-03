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
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) clickCoachProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? clickCoachProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? clickCoachProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickCoachProfile value) clickCoachProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickCoachProfile value)? clickCoachProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickCoachProfile value)? clickCoachProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachesIntentCopyWith<CoachesIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachesIntentCopyWith<$Res> {
  factory $CoachesIntentCopyWith(
          CoachesIntent value, $Res Function(CoachesIntent) then) =
      _$CoachesIntentCopyWithImpl<$Res, CoachesIntent>;
  @useResult
  $Res call({int userId});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClickCoachProfileImplCopyWith<$Res>
    implements $CoachesIntentCopyWith<$Res> {
  factory _$$ClickCoachProfileImplCopyWith(_$ClickCoachProfileImpl value,
          $Res Function(_$ClickCoachProfileImpl) then) =
      __$$ClickCoachProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
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
    Object? userId = null,
  }) {
    return _then(_$ClickCoachProfileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickCoachProfileImpl implements _ClickCoachProfile {
  const _$ClickCoachProfileImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'CoachesIntent.clickCoachProfile(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickCoachProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

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
    required TResult Function(int userId) clickCoachProfile,
  }) {
    return clickCoachProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? clickCoachProfile,
  }) {
    return clickCoachProfile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? clickCoachProfile,
    required TResult orElse(),
  }) {
    if (clickCoachProfile != null) {
      return clickCoachProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickCoachProfile value) clickCoachProfile,
  }) {
    return clickCoachProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickCoachProfile value)? clickCoachProfile,
  }) {
    return clickCoachProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickCoachProfile value)? clickCoachProfile,
    required TResult orElse(),
  }) {
    if (clickCoachProfile != null) {
      return clickCoachProfile(this);
    }
    return orElse();
  }
}

abstract class _ClickCoachProfile implements CoachesIntent {
  const factory _ClickCoachProfile({required final int userId}) =
      _$ClickCoachProfileImpl;

  @override
  int get userId;

  /// Create a copy of CoachesIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClickCoachProfileImplCopyWith<_$ClickCoachProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
