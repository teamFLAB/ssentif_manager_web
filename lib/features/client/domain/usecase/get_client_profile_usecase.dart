import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/client_repository.dart';

class GetClientProfileUseCase {
  final ClientRepository repository;

  GetClientProfileUseCase({required this.repository});

  Future<ApiStatusEntity<ClientProfileEntity>> call({
    required int trainerId,
    required int clientId,
  }) {
    return repository.getClientProfile(trainerId: trainerId, clientId: clientId);
  }
}

final getClientProfileUseCaseProvider =
    Provider<GetClientProfileUseCase>((ref) {
  final repository = ref.read(clientRepositoryProvider);
  return GetClientProfileUseCase(repository: repository);
});
