import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/coaches_intent.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../state/coaches_state.dart';

final coachesViewModelProvider = StateNotifierProvider.autoDispose
    .family<CoachesViewModel, CoachesState, List<UserEntity>>(
  (ref, coaches) => CoachesViewModel(coaches: coaches),
);

class CoachesViewModel extends StateNotifier<CoachesState> {
  CoachesViewModel({required List<UserEntity> coaches})
      : super(CoachesState(
      coaches: coaches,
      selectedUserId: coaches.firstOrNull?.userId
  ));


  void handleIntent(CoachesIntent intent) {
    intent.when(
        clickCoachProfile: (int userId) {
          _updateSelectedCoach(userId);
        },
        selectTab: (int idx) {
          _updateSelectedTab(idx);
        }
    );
  }

  void _updateSelectedCoach(int userId) {
    state = state.copyWith(selectedUserId: userId);
  }

  void _updateSelectedTab(int index) {
    state = state.copyWith(selectedTabIdx: index);
  }
}
