


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/weekly_schedule_intent.dart';
import 'package:ssentif_manager_web/features/schedule/view/state/weekly_schedule_state.dart';

import '../../../../core/utils/calendar_utils.dart';
import '../../../../shared/domain/entity/user_entity.dart';
import '../../domain/usecase/get_schedule_detail_usecase.dart';
import '../../domain/usecase/get_trainer_schedules_usecase.dart';

var weeklyScheduleViewModelProvider = StateNotifierProvider.autoDispose<WeeklyScheduleViewModel, WeeklyScheduleState>((ref) {
  final getTrainerSchedulesUseCase = ref.read(getTrainerSchedulesUseCaseProvider);
  final getScheduleDetailUseCase = ref.read(getScheduleDetailUseCaseProvider);
  return WeeklyScheduleViewModel(
      selectedCoach: UserEntity(),
      getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
      getScheduleDetailUseCase: getScheduleDetailUseCase
  );
});

class WeeklyScheduleViewModel extends StateNotifier<WeeklyScheduleState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;
  final GetScheduleDetailUseCase getScheduleDetailUseCase;

  WeeklyScheduleViewModel({
    required UserEntity? selectedCoach,
    required this.getTrainerSchedulesUseCase,
    required this.getScheduleDetailUseCase
  }) : super(WeeklyScheduleState(
      selectedUser: selectedCoach
  )) {
  }


  void handleIntent(WeeklyScheduleIntent intent) {
    intent.when(
        initialize: (UserEntity? selectedCoach) {
          state = state.copyWith(
              scheduleStartDate: DateTime.now(),
              selectedUser: selectedCoach
          );
          _updatedSelectedCoachSchedules();
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
        },
        onSelectDate: (DateTime selectedDate) {  },
        onClickScheduleItem: (int scheduleId) {
          _updateScheduleDetail(scheduleId);
        }
    );
  }

  void _updateSelectedCoach(UserEntity user) {
    state = state.copyWith(selectedUser: user);
    _updatedSelectedCoachSchedules();
  }

  void _updateScheduleStartDate(DateTime date) {
    state = state.copyWith(scheduleStartDate: date);
    _updatedSelectedCoachSchedules();
  }

  void _updatedSelectedCoachSchedules() async {
    if(state.selectedUser != null && state.selectedUser?.userId != -1) {
      var startDate = (state.scheduleStartDate ?? DateTime.now());
      var startDateStr = CalendarUtils.getMonday(startDate).formatYMD();
      var endDateStr = CalendarUtils.getSunday(startDate).formatYMD();

      (await getTrainerSchedulesUseCase(
          startDate: startDateStr,
          endDate: endDateStr,
          trainerName: state.selectedUser!.userName,
          trainerId: state.selectedUser!.userId
      )).handleStatus(
          onSuccess: (response) {
            if(response != null) {
              state = state.copyWith(
                  schedulesOfSelectedCoach: response.schedules
              );
            }

          },
          onError: (errCode, errMsg) {

          }
      );
    }
  }

  void _updateScheduleDetail(int scheduleId) async {
    (await getScheduleDetailUseCase(scheduleId: scheduleId)).handleStatus(
      onSuccess: (response) {
        state = state.copyWith(scheduleDetail: response);
      },
      onError: (errCode, effMsg) {

      }
    );
  }
}
