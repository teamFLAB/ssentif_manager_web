// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() checkRememberEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? checkRememberEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? checkRememberEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_CheckRememberEmail value) checkRememberEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_CheckRememberEmail value)? checkRememberEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_CheckRememberEmail value)? checkRememberEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginIntentCopyWith<$Res> {
  factory $LoginIntentCopyWith(
          LoginIntent value, $Res Function(LoginIntent) then) =
      _$LoginIntentCopyWithImpl<$Res, LoginIntent>;
}

/// @nodoc
class _$LoginIntentCopyWithImpl<$Res, $Val extends LoginIntent>
    implements $LoginIntentCopyWith<$Res> {
  _$LoginIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginIntentCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginIntent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() checkRememberEmail,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? checkRememberEmail,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_CheckRememberEmail value) checkRememberEmail,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_CheckRememberEmail value)? checkRememberEmail,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_CheckRememberEmail value)? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginIntent {
  const factory _Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$UpdateEmailImplCopyWith<$Res> {
  factory _$$UpdateEmailImplCopyWith(
          _$UpdateEmailImpl value, $Res Function(_$UpdateEmailImpl) then) =
      __$$UpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateEmailImplCopyWithImpl<$Res>
    extends _$LoginIntentCopyWithImpl<$Res, _$UpdateEmailImpl>
    implements _$$UpdateEmailImplCopyWith<$Res> {
  __$$UpdateEmailImplCopyWithImpl(
      _$UpdateEmailImpl _value, $Res Function(_$UpdateEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmailImpl implements _UpdateEmail {
  const _$UpdateEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginIntent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      __$$UpdateEmailImplCopyWithImpl<_$UpdateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() checkRememberEmail,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? checkRememberEmail,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_CheckRememberEmail value) checkRememberEmail,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_CheckRememberEmail value)? checkRememberEmail,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_CheckRememberEmail value)? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements LoginIntent {
  const factory _UpdateEmail(final String email) = _$UpdateEmailImpl;

  String get email;

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$LoginIntentCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginIntent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() checkRememberEmail,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? checkRememberEmail,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_CheckRememberEmail value) checkRememberEmail,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_CheckRememberEmail value)? checkRememberEmail,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_CheckRememberEmail value)? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements LoginIntent {
  const factory _UpdatePassword(final String password) = _$UpdatePasswordImpl;

  String get password;

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckRememberEmailImplCopyWith<$Res> {
  factory _$$CheckRememberEmailImplCopyWith(_$CheckRememberEmailImpl value,
          $Res Function(_$CheckRememberEmailImpl) then) =
      __$$CheckRememberEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckRememberEmailImplCopyWithImpl<$Res>
    extends _$LoginIntentCopyWithImpl<$Res, _$CheckRememberEmailImpl>
    implements _$$CheckRememberEmailImplCopyWith<$Res> {
  __$$CheckRememberEmailImplCopyWithImpl(_$CheckRememberEmailImpl _value,
      $Res Function(_$CheckRememberEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckRememberEmailImpl implements _CheckRememberEmail {
  const _$CheckRememberEmailImpl();

  @override
  String toString() {
    return 'LoginIntent.checkRememberEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckRememberEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() checkRememberEmail,
  }) {
    return checkRememberEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? checkRememberEmail,
  }) {
    return checkRememberEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (checkRememberEmail != null) {
      return checkRememberEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_CheckRememberEmail value) checkRememberEmail,
  }) {
    return checkRememberEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_CheckRememberEmail value)? checkRememberEmail,
  }) {
    return checkRememberEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_CheckRememberEmail value)? checkRememberEmail,
    required TResult orElse(),
  }) {
    if (checkRememberEmail != null) {
      return checkRememberEmail(this);
    }
    return orElse();
  }
}

abstract class _CheckRememberEmail implements LoginIntent {
  const factory _CheckRememberEmail() = _$CheckRememberEmailImpl;
}
