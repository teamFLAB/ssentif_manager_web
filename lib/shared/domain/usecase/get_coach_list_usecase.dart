import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/respository/user_repository.dart';

import '../../../core/network/api_status_entity.dart';

var getCoachListUseCaseProvider = Provider((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return GetCoachListUseCase(
      userRepository: userRepository
  );
});

class GetCoachListUseCase {
  final UserRepository userRepository;
  GetCoachListUseCase({required this.userRepository});

  Future<ApiStatusEntity<List<UserEntity>>> call({required int workPlaceId}) async {
    return userRepository.getCoachList(workPlaceId: workPlaceId);
  }
}
