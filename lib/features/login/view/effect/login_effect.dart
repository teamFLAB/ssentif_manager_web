import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_effect.freezed.dart';

final loginEffectProvider = StateProvider.autoDispose<LoginEffect?>((ref) => null);

@freezed
class LoginEffect with _$LoginEffect {
  const factory LoginEffect.updateSavedEmail(String email) = _UpdateSavedEmail;
  const factory LoginEffect.navigateToMain() = _NavigateToMain;
  const factory LoginEffect.showError(String message) = _ShowError;
  const factory LoginEffect.showMessage(String message) = _ShowMessage;
}