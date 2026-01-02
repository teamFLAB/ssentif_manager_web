import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/body_composition_analysis_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/repository/body_change_repository_impl.dart';
import 'package:ssentif_manager_web/features/client/data/source/body_change_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/body_composition_analysis_entity.dart';

abstract class BodyChangeRepository {
  Future<ApiStatusEntity<BodyCompositionAnalysisListEntity>> getBodyCompositionAnalysis(int? clientId, int? count);
}

final bodyChangeRepositoryProvider = Provider<BodyChangeRepository>((ref) {
  final bodyChangeDataSource = ref.read(bodyChangeDataSourceProvider);
  final bodyCompositionAnalysisMapper = ref.read(bodyCompositionAnalysisMapperProvider);
  return BodyChangeRepositoryImpl(
    bodyChangeDataSource: bodyChangeDataSource,
    bodyCompositionAnalysisMapper: bodyCompositionAnalysisMapper,
  );
});

