import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/diet_repository.dart';

class GetDietDetailByIdUseCase {
  final DietRepository repository;

  GetDietDetailByIdUseCase({required this.repository});

  Future<ApiStatusEntity<DietEntity>> call({
    required int dietId,
    int? clientId,
  }) {
    return repository.getDietDetailById(dietId, clientId);
  }
}

final getDietDetailByIdUseCaseProvider =
    Provider<GetDietDetailByIdUseCase>((ref) {
  final repository = ref.read(dietRepositoryProvider);
  return GetDietDetailByIdUseCase(repository: repository);
});

