import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/client_repository.dart';

class GetInClassMembersUseCase {
  final ClientRepository repository;

  GetInClassMembersUseCase({required this.repository});

  Future<ApiStatusEntity<List<ClientListEntity>>> call({
    required int trainerId
  }) {
    return repository.getInClassMembers(trainerId: trainerId);
  }
}

final getInClassMembersUseCaseProvider =
    Provider<GetInClassMembersUseCase>((ref) {
  final repository = ref.read(clientRepositoryProvider);
  return GetInClassMembersUseCase(repository: repository);
});
