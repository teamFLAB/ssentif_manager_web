
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_login.freezed.dart';
part 'response_login.g.dart';

@freezed
class ResponseLogin with _$ResponseLogin {
  factory ResponseLogin({
    String? accessToken,
    String? refreshToken,
    String? role,
    int? userId,
    String? userName
  }) = _ResponseLogin;

  factory ResponseLogin.fromJson(Map<String, dynamic> json) => _$ResponseLoginFromJson(json);
}