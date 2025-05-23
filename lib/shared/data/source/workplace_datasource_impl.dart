

import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/shared/data/model/work_place_model.dart';
import 'package:ssentif_manager_web/shared/data/source/workplace_datasource.dart';

class WorkplaceDataSourceImpl extends WorkplaceDataSource {
  final ApiService apiService;

  WorkplaceDataSourceImpl({required this.apiService});

  @override
  Future<ResponseWorkPlaceList> searchWorkPlaces({required String keyword}) {
    return apiService.searchWorkPlaces(keyword: keyword);
  }
}