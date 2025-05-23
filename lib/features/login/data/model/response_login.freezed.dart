// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseLogin _$ResponseLoginFromJson(Map<String, dynamic> json) {
  return _ResponseLogin.fromJson(json);
}

/// @nodoc
mixin _$ResponseLogin {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  /// Serializes this ResponseLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseLoginCopyWith<ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginCopyWith<$Res> {
  factory $ResponseLoginCopyWith(
          ResponseLogin value, $Res Function(ResponseLogin) then) =
      _$ResponseLoginCopyWithImpl<$Res, ResponseLogin>;
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? role,
      int? userId,
      String? userName});
}

/// @nodoc
class _$ResponseLoginCopyWithImpl<$Res, $Val extends ResponseLogin>
    implements $ResponseLoginCopyWith<$Res> {
  _$ResponseLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? role = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseLoginImplCopyWith<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  factory _$$ResponseLoginImplCopyWith(
          _$ResponseLoginImpl value, $Res Function(_$ResponseLoginImpl) then) =
      __$$ResponseLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? refreshToken,
      String? role,
      int? userId,
      String? userName});
}

/// @nodoc
class __$$ResponseLoginImplCopyWithImpl<$Res>
    extends _$ResponseLoginCopyWithImpl<$Res, _$ResponseLoginImpl>
    implements _$$ResponseLoginImplCopyWith<$Res> {
  __$$ResponseLoginImplCopyWithImpl(
      _$ResponseLoginImpl _value, $Res Function(_$ResponseLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? role = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$ResponseLoginImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLoginImpl implements _ResponseLogin {
  _$ResponseLoginImpl(
      {this.accessToken,
      this.refreshToken,
      this.role,
      this.userId,
      this.userName});

  factory _$ResponseLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? role;
  @override
  final int? userId;
  @override
  final String? userName;

  @override
  String toString() {
    return 'ResponseLogin(accessToken: $accessToken, refreshToken: $refreshToken, role: $role, userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, refreshToken, role, userId, userName);

  /// Create a copy of ResponseLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      __$$ResponseLoginImplCopyWithImpl<_$ResponseLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseLoginImplToJson(
      this,
    );
  }
}

abstract class _ResponseLogin implements ResponseLogin {
  factory _ResponseLogin(
      {final String? accessToken,
      final String? refreshToken,
      final String? role,
      final int? userId,
      final String? userName}) = _$ResponseLoginImpl;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get role;
  @override
  int? get userId;
  @override
  String? get userName;

  /// Create a copy of ResponseLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
