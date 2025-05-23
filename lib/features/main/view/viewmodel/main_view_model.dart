import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/main_state.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

class MainViewModel extends StateNotifier<MainState> {
  MainViewModel() : super(const MainState());

  // 예시: 헬스장 이름 변경 메서드
  void setGymName(String name) {
    state = state.copyWith(gymName: name);
  }

  void setSection(NavigationSectionType section) {
    state = state.copyWith(selectedSection: section);
  }
}

final mainViewModelProvider = StateNotifierProvider<MainViewModel, MainState>(
  (ref) => MainViewModel(),
);
