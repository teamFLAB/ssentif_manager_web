import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/body_composition_analysis_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/body_change_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/body_composition_analysis_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/body_change_repository.dart';

class BodyChangeRepositoryImpl extends BodyChangeRepository {
  final BodyChangeDataSource bodyChangeDataSource;
  final BodyCompositionAnalysisMapper bodyCompositionAnalysisMapper;

  BodyChangeRepositoryImpl({
    required this.bodyChangeDataSource,
    required this.bodyCompositionAnalysisMapper,
  });

  @override
  Future<ApiStatusEntity<BodyCompositionAnalysisListEntity>> getBodyCompositionAnalysis(int? clientId, int? count) async {
    try {
      var response = await bodyChangeDataSource.getBodyCompositionAnalysis(clientId, count);
      var entity = bodyCompositionAnalysisMapper.map(response);
      return ApiStatusEntity(data: entity);
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}

