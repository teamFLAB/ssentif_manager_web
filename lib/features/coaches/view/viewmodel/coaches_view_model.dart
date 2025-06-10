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
  )) {
    _updatedSelectedCoachSchedules();
  }


  void handleIntent(CoachesIntent intent) {
    intent.when(
        clickCoachProfile: (UserEntity user) {
          _updateSelectedCoach(user);
        },
        selectTab: (int idx) {
          _updateSelectedTab(idx);
        },
        onChangePreviousWeek: () {
          var changedDate = CalendarUtils.addWeeks(
              state.scheduleStartDate ?? DateTime.now(),
              -1
          );
          _updateScheduleStartDate(changedDate);
        },
        onChangeNextWeek: () {
          var changedDate = CalendarUtils.addWeeks(
              state.scheduleStartDate ?? DateTime.now(),
              1
          );
          _updateScheduleStartDate(changedDate);
        }
    );
  }

  void _updateSelectedCoach(UserEntity user) {
    state = state.copyWith(selectedUser: user);
    _updatedSelectedCoachSchedules();
  }

  void _updateSelectedTab(int index) {
    state = state.copyWith(selectedTabIdx: index);
  }

  void _updateScheduleStartDate(DateTime date) {
    state = state.copyWith(scheduleStartDate: date);
    _updatedSelectedCoachSchedules();
  }

  void _updatedSelectedCoachSchedules() async {
    if(state.selectedUser != null) {
      var startDate = (state.scheduleStartDate ?? DateTime.now());
      var endDate = CalendarUtils.addDays(startDate, 6);
      var startDateStr = CalendarUtils.getMonday(startDate).formatYMD();
      var endDateStr = CalendarUtils.getMonday(endDate).formatYMD();

      (await getTrainerSchedulesUseCase(
          startDate: startDateStr,
          endDate: endDateStr,
          trainerName: state.selectedUser!.userName,
          trainerId: state.selectedUser!.userId
      )).handleStatus(
        onSuccess: (response) {

        },
        onError: (errCode, errMsg) {

        }
      );
    }
  }
}
