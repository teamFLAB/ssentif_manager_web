import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/body_composition_analysis_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/body_change_datasource_impl.dart';

final bodyChangeDataSourceProvider = Provider<BodyChangeDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return BodyChangeDataSourceImpl(apiService: apiService);
});

abstract class BodyChangeDataSource {
  Future<ResponseBodyCompositionAnalysis> getBodyCompositionAnalysis(int? clientId, int? count);
}

