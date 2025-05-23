

import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/shared/data/mapper/work_place_mapper.dart';
import 'package:ssentif_manager_web/shared/data/source/workplace_datasource.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/shared/domain/respository/workplace_repository.dart';

class WorkplaceRepositoryImpl extends WorkplaceRepository {
  final WorkplaceDataSource workplaceDataSource;
  final WorkPlaceMapper workPlaceMapper;

  WorkplaceRepositoryImpl({
    required this.workplaceDataSource,
    required this.workPlaceMapper
  });

  @override
  Future<ApiStatusEntity<List<WorkPlaceEntity>>> searchWorkPlaces({required String keyword}) async {
    try {
      var response = await workplaceDataSource.searchWorkPlaces(keyword: keyword);
      var data = response.workplaceList.map((e) {
        return workPlaceMapper.map(e);
      }).toList();
      return ApiStatusEntity(data: data);
    } catch(e) {
      return e.toErrorEntity();
    }
  }

}