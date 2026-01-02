import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/uploaded_diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/diet_repository.dart';

class GetMonthlyDietUseCase {
  final DietRepository repository;

  GetMonthlyDietUseCase({required this.repository});

  Future<ApiStatusEntity<List<UploadedDietEntity>>> call({
    required int year,
    required int month,
    int? clientId,
  }) {
    return repository.getMonthlyDietList(year, month, clientId);
  }
}

final getMonthlyDietUseCaseProvider =
    Provider<GetMonthlyDietUseCase>((ref) {
  final repository = ref.read(dietRepositoryProvider);
  return GetMonthlyDietUseCase(repository: repository);
});

