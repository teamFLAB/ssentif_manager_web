import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/body_composition_analysis_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/body_change_datasource.dart';

class BodyChangeDataSourceImpl extends BodyChangeDataSource {
  final ApiService apiService;

  BodyChangeDataSourceImpl({required this.apiService});

  @override
  Future<ResponseBodyCompositionAnalysis> getBodyCompositionAnalysis(int? clientId, int? count) {
    return apiService.getBodyCompositionAnalysis(clientId: clientId, count: count);
  }
}

