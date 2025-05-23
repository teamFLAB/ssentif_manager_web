
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/base_mapper.dart';
import '../../domain/entity/work_place_entity.dart';
import '../model/work_place_model.dart';

final workPlaceMapperProvider = Provider((ref) {
  return WorkPlaceMapper();
});

class WorkPlaceMapper extends BaseMapper<WorkPlaceModel, WorkPlaceEntity> {
  @override
  WorkPlaceEntity map(WorkPlaceModel data) {
    return WorkPlaceEntity(
        id: data.id,
        name: data.name,
        address: data.address,
        addressDetail: data.addressDetail
    );
  }
}