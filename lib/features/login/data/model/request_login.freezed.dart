// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) {
  return _RequestLogin.fromJson(json);
}

/// @nodoc
mixin _$RequestLogin {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this RequestLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestLoginCopyWith<RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginCopyWith<$Res> {
  factory $RequestLoginCopyWith(
          RequestLogin value, $Res Function(RequestLogin) then) =
      _$RequestLoginCopyWithImpl<$Res, RequestLogin>;
  @useResult
  $Res call({String? email, String? password, String? fcmToken});
}

/// @nodoc
class _$RequestLoginCopyWithImpl<$Res, $Val extends RequestLogin>
    implements $RequestLoginCopyWith<$Res> {
  _$RequestLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestLoginImplCopyWith<$Res>
    implements $RequestLoginCopyWith<$Res> {
  factory _$$RequestLoginImplCopyWith(
          _$RequestLoginImpl value, $Res Function(_$RequestLoginImpl) then) =
      __$$RequestLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password, String? fcmToken});
}

/// @nodoc
class __$$RequestLoginImplCopyWithImpl<$Res>
    extends _$RequestLoginCopyWithImpl<$Res, _$RequestLoginImpl>
    implements _$$RequestLoginImplCopyWith<$Res> {
  __$$RequestLoginImplCopyWithImpl(
      _$RequestLoginImpl _value, $Res Function(_$RequestLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$RequestLoginImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestLoginImpl implements _RequestLogin {
  _$RequestLoginImpl({this.email, this.password, this.fcmToken});

  factory _$RequestLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLoginImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'RequestLogin(email: $email, password: $password, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, fcmToken);

  /// Create a copy of RequestLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLoginImplCopyWith<_$RequestLoginImpl> get copyWith =>
      __$$RequestLoginImplCopyWithImpl<_$RequestLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLoginImplToJson(
      this,
    );
  }
}

abstract class _RequestLogin implements RequestLogin {
  factory _RequestLogin(
      {final String? email,
      final String? password,
      final String? fcmToken}) = _$RequestLoginImpl;

  factory _RequestLogin.fromJson(Map<String, dynamic> json) =
      _$RequestLoginImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get fcmToken;

  /// Create a copy of RequestLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestLoginImplCopyWith<_$RequestLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
