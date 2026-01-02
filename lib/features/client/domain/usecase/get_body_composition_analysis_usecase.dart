import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/body_composition_analysis_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/body_change_repository.dart';

class GetBodyCompositionAnalysisUseCase {
  final BodyChangeRepository repository;

  GetBodyCompositionAnalysisUseCase({required this.repository});

  Future<ApiStatusEntity<BodyCompositionAnalysisListEntity>> call({
    int? clientId,
    int? count,
  }) {
    return repository.getBodyCompositionAnalysis(clientId, count);
  }
}

final getBodyCompositionAnalysisUseCaseProvider =
    Provider<GetBodyCompositionAnalysisUseCase>((ref) {
  final repository = ref.read(bodyChangeRepositoryProvider);
  return GetBodyCompositionAnalysisUseCase(repository: repository);
});

