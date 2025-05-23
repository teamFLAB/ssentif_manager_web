


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/shared/domain/respository/workplace_repository.dart';

final searchWorkplacesUseCaseProvider = Provider((ref) {
  final workplaceRepository = ref.read(workplaceRepositoryProvider);
  return SearchWorkplacesUseCase(workplaceRepository: workplaceRepository);
});

class SearchWorkplacesUseCase {
  final WorkplaceRepository workplaceRepository;

  SearchWorkplacesUseCase({required this.workplaceRepository});

  Future<ApiStatusEntity<List<WorkPlaceEntity>>> call({required String keyword}) {
    return workplaceRepository.searchWorkPlaces(keyword: keyword);
  }
}