import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/coaches_intent.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_trainer_schedules_usecase.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../../../../core/utils/calendar_utils.dart';
import '../state/coaches_state.dart';

final coachesViewModelProvider = StateNotifierProvider.autoDispose
    .family<CoachesViewModel, CoachesState, List<UserEntity>>(
  (ref, coaches) {
    final getTrainerSchedulesUseCase = ref.read(getTrainerSchedulesUseCaseProvider);
    return  CoachesViewModel(
        coaches: coaches,
        getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
    );
  }
);

class CoachesViewModel extends StateNotifier<CoachesState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;

  CoachesViewModel({
    required List<UserEntity> coaches,
    required this.getTrainerSchedulesUseCase,
  }) : super(CoachesState(
      coaches: coaches,
      selectedUser: coaches.firstOrNull
  )) {}


  void handleIntent(CoachesIntent intent) {
    intent.when(
        clickCoachProfile: (UserEntity user) {
          _updateSelectedCoach(user);
        },
        selectTab: (int idx) {
          _updateSelectedTab(idx);
        }
    );
  }

  void _updateSelectedCoach(UserEntity user) {
    state = state.copyWith(selectedUser: user);
  }

  void _updateSelectedTab(int index) {
    state = state.copyWith(selectedTabIdx: index);
  }
}
