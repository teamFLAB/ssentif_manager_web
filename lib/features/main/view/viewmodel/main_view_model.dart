import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/shared/domain/usecase/get_coach_list_usecase.dart';
import '../state/main_state.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

final mainViewModelProvider = StateNotifierProvider.autoDispose<MainViewModel, MainState>((ref) {
  var getCoachListUseCase = ref.read(getCoachListUseCaseProvider);
  return MainViewModel(getCoachListUseCase: getCoachListUseCase);
});

class MainViewModel extends StateNotifier<MainState> {
  final GetCoachListUseCase getCoachListUseCase;
  MainViewModel({
    required this.getCoachListUseCase
  }): super(MainState(coaches: [])) {
    _loadCachedWorkPlaceInfo();
  }

  void _loadCachedWorkPlaceInfo() {
    var workplaceInfo = StorageManager.getWorkPlaceInfo();
    if(workplaceInfo != null) {
      _setGymName(workplaceInfo.name);
      _loadCoaches(workPlaceId: workplaceInfo.id);
    }
  }

  void _setGymName(String name) {
    state = state.copyWith(gymName: name);
  }

  void setSection(NavigationSectionType section) {
    state = state.copyWith(selectedSection: section);
  }

  void _loadCoaches({required int workPlaceId}) async {
    (await getCoachListUseCase(workPlaceId: workPlaceId)).handleStatus(
        onSuccess: (data) {
          if (data != null) {
            StorageManager.setCoachList(data);
            state = state.copyWith(coaches: data);
          }
        },
        onError: (errCode, errMsg) {

        }
    );
  }
}
