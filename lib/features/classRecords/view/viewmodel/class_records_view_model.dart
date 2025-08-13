import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/routine/domain/usecase/get_class_records_usecase.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../../../routine/domain/entity/routine_history_entity.dart';
import '../state/class_records_state.dart';
import '../intent/class_records_intent.dart';
import '../effect/class_records_effect.dart';

class ClassRecordsViewModel extends StateNotifier<ClassRecordsState> {
  final List<UserEntity> coaches;
  final GetClassRecordsUseCase getClassRecordsUseCase;
  Function(ClassRecordsEffect)? onEffect;

  ClassRecordsViewModel(
      {required this.coaches, required this.getClassRecordsUseCase})
      : super(ClassRecordsState(
          selectedMonth: DateTime.now(),
          selectedCoaches: coaches,
        )) {
    _updateClassRecords();
  }

  void setEffectHandler(Function(ClassRecordsEffect) handler) {
    onEffect = handler;
  }

  void handleIntent(ClassRecordsIntent intent) {
    intent.when(
      initialize: _initialize,
      clickThisMonth: () {
        final today = DateTime.now();
        _updateSelectedMonth(DateTime(today.year, today.month, 1));
        _updateClassRecords();
      },
      clickPreviousMonth: () {
        final currentMonth = state.selectedMonth;
        final previousMonth =
            DateTime(currentMonth.year, currentMonth.month - 1, 1);
        _updateSelectedMonth(previousMonth);
        _updateClassRecords();
      },
      clickNextMonth: () {
        final currentMonth = state.selectedMonth;
        final nextMonth =
            DateTime(currentMonth.year, currentMonth.month + 1, 1);
        _updateSelectedMonth(nextMonth);
        _updateClassRecords();
      },
      toggleCoachSelection: (user) {
        final currentSelectedCoaches =
            List<UserEntity>.from(state.selectedCoaches);
        if (currentSelectedCoaches
            .any((coach) => coach.userId == user.userId)) {
          // 이미 선택된 코치라면 제거
          currentSelectedCoaches
              .removeWhere((coach) => coach.userId == user.userId);
        } else {
          // 선택되지 않은 코치라면 추가
          currentSelectedCoaches.add(user);
        }
        state = state.copyWith(selectedCoaches: currentSelectedCoaches);
        _updateClassRecords();
      },
      showRoutineDetailDialog: (record) {
        onEffect
            ?.call(ClassRecordsEffect.showRoutineDetailDialog(record: record));
      },
    );
  }

  void _initialize() {
    state = state.copyWith(isLoading: false, selectedMonth: DateTime.now());
  }

  void _updateSelectedMonth(DateTime month) {
    state = state.copyWith(selectedMonth: month);
  }

  void _updateClassRecords({bool isLoadMore = false}) async {
    if(state.selectedCoaches.isEmpty) {
      state = state.copyWith(
        classRecords: [],
        lastScheduleId: null,
        hasNext: false,
        isLoading: false,
        isLoadingMore: false,
        errorMessage: '',
      );
      return;
    }

    if (isLoadMore) {
      state = state.copyWith(isLoadingMore: true);
    } else {
      state = state.copyWith(isLoading: true);
    }

    var result = await getClassRecordsUseCase.call(
        trainerIds: state.selectedCoaches.map((e) => e.userId).toList(),
        lastScheduleId: isLoadMore ? state.lastScheduleId : null,
        yearMonth: state.selectedMonth.formatYM(),
        count: 50
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data != null) {
          final newRecords = isLoadMore
              ? [...state.classRecords, ...data.classInfoDetailOfDateList]
              : data.classInfoDetailOfDateList;

          state = state.copyWith(
            classRecords: newRecords,
            lastScheduleId: data.lastScheduleId,
            hasNext: data.hasNext,
            isLoading: false,
            isLoadingMore: false,
            errorMessage: '',
          );
        }
      },
      onError: (errCode, errMsg) {
        state = state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          errorMessage: errMsg,
        );
      },
    );
  }

  void loadMoreRecords() {
    if (state.hasNext && !state.isLoadingMore && !state.isLoading) {
      _updateClassRecords(isLoadMore: true);
    }
  }
}

final classRecordsViewModelProvider = StateNotifierProvider.autoDispose
    .family<ClassRecordsViewModel, ClassRecordsState, List<UserEntity>>(
        (ref, coaches) {
  final getClassRecordsUseCase = ref.read(getClassRecordsUseCaseProvider);
  return ClassRecordsViewModel(
      coaches: coaches, getClassRecordsUseCase: getClassRecordsUseCase);
});
