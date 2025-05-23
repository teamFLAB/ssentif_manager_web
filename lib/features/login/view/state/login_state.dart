class LoginState {
  final String email;
  final String password;
  final bool isLoading;
  final bool onLoading;

  const LoginState({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.onLoading = false,
  });

  LoginState copyWith(
      {String? email, String? password, bool? isLoading, bool? onLoading}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      onLoading: onLoading ?? this.onLoading,
    );
  }
}
