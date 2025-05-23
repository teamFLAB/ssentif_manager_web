// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateSavedEmail,
    required TResult Function() navigateToMain,
    required TResult Function(String message) showError,
    required TResult Function(String message) showMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateSavedEmail,
    TResult? Function()? navigateToMain,
    TResult? Function(String message)? showError,
    TResult? Function(String message)? showMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateSavedEmail,
    TResult Function()? navigateToMain,
    TResult Function(String message)? showError,
    TResult Function(String message)? showMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSavedEmail value) updateSavedEmail,
    required TResult Function(_NavigateToMain value) navigateToMain,
    required TResult Function(_ShowError value) showError,
    required TResult Function(_ShowMessage value) showMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult? Function(_NavigateToMain value)? navigateToMain,
    TResult? Function(_ShowError value)? showError,
    TResult? Function(_ShowMessage value)? showMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult Function(_NavigateToMain value)? navigateToMain,
    TResult Function(_ShowError value)? showError,
    TResult Function(_ShowMessage value)? showMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEffectCopyWith<$Res> {
  factory $LoginEffectCopyWith(
          LoginEffect value, $Res Function(LoginEffect) then) =
      _$LoginEffectCopyWithImpl<$Res, LoginEffect>;
}

/// @nodoc
class _$LoginEffectCopyWithImpl<$Res, $Val extends LoginEffect>
    implements $LoginEffectCopyWith<$Res> {
  _$LoginEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateSavedEmailImplCopyWith<$Res> {
  factory _$$UpdateSavedEmailImplCopyWith(_$UpdateSavedEmailImpl value,
          $Res Function(_$UpdateSavedEmailImpl) then) =
      __$$UpdateSavedEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateSavedEmailImplCopyWithImpl<$Res>
    extends _$LoginEffectCopyWithImpl<$Res, _$UpdateSavedEmailImpl>
    implements _$$UpdateSavedEmailImplCopyWith<$Res> {
  __$$UpdateSavedEmailImplCopyWithImpl(_$UpdateSavedEmailImpl _value,
      $Res Function(_$UpdateSavedEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateSavedEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSavedEmailImpl implements _UpdateSavedEmail {
  const _$UpdateSavedEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEffect.updateSavedEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSavedEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSavedEmailImplCopyWith<_$UpdateSavedEmailImpl> get copyWith =>
      __$$UpdateSavedEmailImplCopyWithImpl<_$UpdateSavedEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateSavedEmail,
    required TResult Function() navigateToMain,
    required TResult Function(String message) showError,
    required TResult Function(String message) showMessage,
  }) {
    return updateSavedEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateSavedEmail,
    TResult? Function()? navigateToMain,
    TResult? Function(String message)? showError,
    TResult? Function(String message)? showMessage,
  }) {
    return updateSavedEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateSavedEmail,
    TResult Function()? navigateToMain,
    TResult Function(String message)? showError,
    TResult Function(String message)? showMessage,
    required TResult orElse(),
  }) {
    if (updateSavedEmail != null) {
      return updateSavedEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSavedEmail value) updateSavedEmail,
    required TResult Function(_NavigateToMain value) navigateToMain,
    required TResult Function(_ShowError value) showError,
    required TResult Function(_ShowMessage value) showMessage,
  }) {
    return updateSavedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult? Function(_NavigateToMain value)? navigateToMain,
    TResult? Function(_ShowError value)? showError,
    TResult? Function(_ShowMessage value)? showMessage,
  }) {
    return updateSavedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult Function(_NavigateToMain value)? navigateToMain,
    TResult Function(_ShowError value)? showError,
    TResult Function(_ShowMessage value)? showMessage,
    required TResult orElse(),
  }) {
    if (updateSavedEmail != null) {
      return updateSavedEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateSavedEmail implements LoginEffect {
  const factory _UpdateSavedEmail(final String email) = _$UpdateSavedEmailImpl;

  String get email;

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSavedEmailImplCopyWith<_$UpdateSavedEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToMainImplCopyWith<$Res> {
  factory _$$NavigateToMainImplCopyWith(_$NavigateToMainImpl value,
          $Res Function(_$NavigateToMainImpl) then) =
      __$$NavigateToMainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToMainImplCopyWithImpl<$Res>
    extends _$LoginEffectCopyWithImpl<$Res, _$NavigateToMainImpl>
    implements _$$NavigateToMainImplCopyWith<$Res> {
  __$$NavigateToMainImplCopyWithImpl(
      _$NavigateToMainImpl _value, $Res Function(_$NavigateToMainImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToMainImpl implements _NavigateToMain {
  const _$NavigateToMainImpl();

  @override
  String toString() {
    return 'LoginEffect.navigateToMain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToMainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateSavedEmail,
    required TResult Function() navigateToMain,
    required TResult Function(String message) showError,
    required TResult Function(String message) showMessage,
  }) {
    return navigateToMain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateSavedEmail,
    TResult? Function()? navigateToMain,
    TResult? Function(String message)? showError,
    TResult? Function(String message)? showMessage,
  }) {
    return navigateToMain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateSavedEmail,
    TResult Function()? navigateToMain,
    TResult Function(String message)? showError,
    TResult Function(String message)? showMessage,
    required TResult orElse(),
  }) {
    if (navigateToMain != null) {
      return navigateToMain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSavedEmail value) updateSavedEmail,
    required TResult Function(_NavigateToMain value) navigateToMain,
    required TResult Function(_ShowError value) showError,
    required TResult Function(_ShowMessage value) showMessage,
  }) {
    return navigateToMain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult? Function(_NavigateToMain value)? navigateToMain,
    TResult? Function(_ShowError value)? showError,
    TResult? Function(_ShowMessage value)? showMessage,
  }) {
    return navigateToMain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult Function(_NavigateToMain value)? navigateToMain,
    TResult Function(_ShowError value)? showError,
    TResult Function(_ShowMessage value)? showMessage,
    required TResult orElse(),
  }) {
    if (navigateToMain != null) {
      return navigateToMain(this);
    }
    return orElse();
  }
}

abstract class _NavigateToMain implements LoginEffect {
  const factory _NavigateToMain() = _$NavigateToMainImpl;
}

/// @nodoc
abstract class _$$ShowErrorImplCopyWith<$Res> {
  factory _$$ShowErrorImplCopyWith(
          _$ShowErrorImpl value, $Res Function(_$ShowErrorImpl) then) =
      __$$ShowErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowErrorImplCopyWithImpl<$Res>
    extends _$LoginEffectCopyWithImpl<$Res, _$ShowErrorImpl>
    implements _$$ShowErrorImplCopyWith<$Res> {
  __$$ShowErrorImplCopyWithImpl(
      _$ShowErrorImpl _value, $Res Function(_$ShowErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorImpl implements _ShowError {
  const _$ShowErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginEffect.showError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      __$$ShowErrorImplCopyWithImpl<_$ShowErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateSavedEmail,
    required TResult Function() navigateToMain,
    required TResult Function(String message) showError,
    required TResult Function(String message) showMessage,
  }) {
    return showError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateSavedEmail,
    TResult? Function()? navigateToMain,
    TResult? Function(String message)? showError,
    TResult? Function(String message)? showMessage,
  }) {
    return showError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateSavedEmail,
    TResult Function()? navigateToMain,
    TResult Function(String message)? showError,
    TResult Function(String message)? showMessage,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSavedEmail value) updateSavedEmail,
    required TResult Function(_NavigateToMain value) navigateToMain,
    required TResult Function(_ShowError value) showError,
    required TResult Function(_ShowMessage value) showMessage,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult? Function(_NavigateToMain value)? navigateToMain,
    TResult? Function(_ShowError value)? showError,
    TResult? Function(_ShowMessage value)? showMessage,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult Function(_NavigateToMain value)? navigateToMain,
    TResult Function(_ShowError value)? showError,
    TResult Function(_ShowMessage value)? showMessage,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _ShowError implements LoginEffect {
  const factory _ShowError(final String message) = _$ShowErrorImpl;

  String get message;

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMessageImplCopyWith<$Res> {
  factory _$$ShowMessageImplCopyWith(
          _$ShowMessageImpl value, $Res Function(_$ShowMessageImpl) then) =
      __$$ShowMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowMessageImplCopyWithImpl<$Res>
    extends _$LoginEffectCopyWithImpl<$Res, _$ShowMessageImpl>
    implements _$$ShowMessageImplCopyWith<$Res> {
  __$$ShowMessageImplCopyWithImpl(
      _$ShowMessageImpl _value, $Res Function(_$ShowMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowMessageImpl implements _ShowMessage {
  const _$ShowMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginEffect.showMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMessageImplCopyWith<_$ShowMessageImpl> get copyWith =>
      __$$ShowMessageImplCopyWithImpl<_$ShowMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateSavedEmail,
    required TResult Function() navigateToMain,
    required TResult Function(String message) showError,
    required TResult Function(String message) showMessage,
  }) {
    return showMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateSavedEmail,
    TResult? Function()? navigateToMain,
    TResult? Function(String message)? showError,
    TResult? Function(String message)? showMessage,
  }) {
    return showMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateSavedEmail,
    TResult Function()? navigateToMain,
    TResult Function(String message)? showError,
    TResult Function(String message)? showMessage,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSavedEmail value) updateSavedEmail,
    required TResult Function(_NavigateToMain value) navigateToMain,
    required TResult Function(_ShowError value) showError,
    required TResult Function(_ShowMessage value) showMessage,
  }) {
    return showMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult? Function(_NavigateToMain value)? navigateToMain,
    TResult? Function(_ShowError value)? showError,
    TResult? Function(_ShowMessage value)? showMessage,
  }) {
    return showMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSavedEmail value)? updateSavedEmail,
    TResult Function(_NavigateToMain value)? navigateToMain,
    TResult Function(_ShowError value)? showError,
    TResult Function(_ShowMessage value)? showMessage,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(this);
    }
    return orElse();
  }
}

abstract class _ShowMessage implements LoginEffect {
  const factory _ShowMessage(final String message) = _$ShowMessageImpl;

  String get message;

  /// Create a copy of LoginEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowMessageImplCopyWith<_$ShowMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
