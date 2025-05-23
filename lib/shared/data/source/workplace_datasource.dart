

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/shared/data/source/workplace_datasource_impl.dart';

import '../model/work_place_model.dart';

final workplaceDataSourceProvider = Provider((ref) {
  final apiService = ref.read(apiServiceProvider);
  return WorkplaceDataSourceImpl(apiService: apiService);
});

abstract class WorkplaceDataSource {
  Future<ResponseWorkPlaceList> searchWorkPlaces({required String keyword});
}