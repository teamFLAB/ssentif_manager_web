import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/shared/domain/usecase/get_user_info_usecase.dart';
import 'package:ssentif_manager_web/shared/domain/usecase/search_workplaces_usecase.dart';
import '../state/schedule_state.dart';


final scheduleViewModelProvider = StateNotifierProvider<ScheduleViewModel, ScheduleState>((ref) {

  return ScheduleViewModel();
});

class ScheduleViewModel extends StateNotifier<ScheduleState> {

  ScheduleViewModel() : super(ScheduleState(
          todayDate: DateTime.now(),
          selectedDate: DateTime.now(),
  )) {
    _getWorkPlace();
  }

  void setSelectedDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }

  void _getWorkPlace() {
    print("--> ${StorageManager.getWorkPlaceInfo()}");
  }


}


