
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/login/data/model/request_login.dart';
import 'package:ssentif_manager_web/features/login/data/model/response_login.dart';
import 'package:ssentif_manager_web/features/login/domain/usecase/login_usecase.dart';

import '../../../../core/network/api_status_entity.dart';

class LoginUseCaseImpl extends LoginUseCase {
  final ApiService apiService;

  LoginUseCaseImpl({
    required this.apiService
  });

  @override
  Future<ApiStatusEntity<ResponseLogin>> call({required String email, required String password}) async {
    try {
      var response = await apiService.login(
          requestLogin: RequestLogin(
              email: email,
              password: password
          )
      );
      return ApiStatusEntity(data: response);
    } catch(e) {
      return e.toErrorEntity();
    }


  }
}