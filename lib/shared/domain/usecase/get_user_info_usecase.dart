
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/respository/user_repository.dart';

final getUserInfoUseCaseProvider = Provider((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return GetUserInfoUseCase(userRepository: userRepository);
});

class GetUserInfoUseCase {
  final UserRepository userRepository;

  GetUserInfoUseCase({required this.userRepository});

  Future<ApiStatusEntity<UserEntity>> call() {
    return userRepository.getUserInfo();
  }
}