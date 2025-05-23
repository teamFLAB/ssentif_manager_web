import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_intent.freezed.dart';

@freezed
class LoginIntent with _$LoginIntent {
  const factory LoginIntent.login() = _Login;
  const factory LoginIntent.updateEmail(String email) = _UpdateEmail;
  const factory LoginIntent.updatePassword(String password) = _UpdatePassword;
  const factory LoginIntent.checkRememberEmail() = _CheckRememberEmail;

}