

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/shared/data/repository/workplace_repository_impl.dart';
import 'package:ssentif_manager_web/shared/data/source/workplace_datasource.dart';

import '../../../core/network/api_status_entity.dart';
import '../../data/mapper/work_place_mapper.dart';
import '../entity/work_place_entity.dart';

final workplaceRepositoryProvider = Provider<WorkplaceRepository>((ref) {
  var workplaceDataSource = ref.read(workplaceDataSourceProvider);
  var workPlaceMapper = ref.read(workPlaceMapperProvider);
  return WorkplaceRepositoryImpl(
      workplaceDataSource: workplaceDataSource,
      workPlaceMapper: workPlaceMapper
  );
});

abstract class WorkplaceRepository {
  Future<ApiStatusEntity<List<WorkPlaceEntity>>> searchWorkPlaces({required String keyword});
}