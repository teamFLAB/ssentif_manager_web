
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/login/data/model/response_login.dart';

import '../../../../core/network/api_service.dart';
import '../../../../core/network/api_status_entity.dart';
import 'login_usecase_impl.dart';

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  var apiService = ref.read(apiServiceProvider);
  return LoginUseCaseImpl(apiService: apiService);
});

abstract class LoginUseCase {
  Future<ApiStatusEntity<ResponseLogin>> call({required String email, required String password});
}