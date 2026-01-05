import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/calendar_event_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_daily_class_records_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_daily_diet_list_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_daily_workout_records_usecase.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_schedule_detail_usecase.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';
import '../state/daily_records_state.dart';

final dailyRecordsViewModelProvider = StateNotifierProvider.family<
    DailyRecordsViewModel, DailyRecordsState, DailyRecordsParams>((ref, params) {
  final getDailyWorkoutRecordsUseCase =
      ref.read(getDailyWorkoutRecordsUseCaseProvider);
  final getDailyDietListUseCase = ref.read(getDailyDietListUseCaseProvider);
  final getDailyClassRecordsUseCase =
      ref.read(getDailyClassRecordsUseCaseProvider);
  final getScheduleDetailUseCase = ref.read(getScheduleDetailUseCaseProvider);

  return DailyRecordsViewModel(
    getDailyWorkoutRecordsUseCase: getDailyWorkoutRecordsUseCase,
    getDailyDietListUseCase: getDailyDietListUseCase,
    getDailyClassRecordsUseCase: getDailyClassRecordsUseCase,
    getScheduleDetailUseCase: getScheduleDetailUseCase,
    params: params,
  );
});

class DailyRecordsParams {
  final DateTime selectedDate;
  final int clientId;
  final List<CalendarEventEntity> events;

  DailyRecordsParams({
    required this.selectedDate,
    required this.clientId,
    required this.events,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyRecordsParams &&
          runtimeType == other.runtimeType &&
          selectedDate == other.selectedDate &&
          clientId == other.clientId &&
          events.length == other.events.length;

  @override
  int get hashCode =>
      selectedDate.hashCode ^
      clientId.hashCode ^
      events.length.hashCode;
}

class DailyRecordsViewModel extends StateNotifier<DailyRecordsState> {
  final GetDailyWorkoutRecordsUseCase getDailyWorkoutRecordsUseCase;
  final GetDailyDietListUseCase getDailyDietListUseCase;
  final GetDailyClassRecordsUseCase getDailyClassRecordsUseCase;
  final GetScheduleDetailUseCase getScheduleDetailUseCase;
  final DailyRecordsParams params;
  bool _isLoading = false;

  DailyRecordsViewModel({
    required this.getDailyWorkoutRecordsUseCase,
    required this.getDailyDietListUseCase,
    required this.getDailyClassRecordsUseCase,
    required this.getScheduleDetailUseCase,
    required this.params,
  }) : super(const DailyRecordsState()) {
    loadData();
  }

  Future<void> loadData() async {
    if (_isLoading) return; // 이미 로딩 중이면 중복 호출 방지
    
    _isLoading = true;
    state = state.copyWith(isLoading: true);

    final dateString = _formatDate(params.selectedDate);

    // 각 API 호출을 개별적으로 처리 (하나가 실패해도 나머지는 표시)
    await Future.wait([
      _loadWorkoutRecords(dateString),
      _loadDietList(dateString),
      _loadClassRecords(dateString),
    ]);

    // 수업 이벤트가 있으면 scheduleDetail 조회
    if (_hasClassEvent()) {
      await _loadScheduleDetail();
    }

    // 초기 선택: 수업, 개인운동, 식단 순서로 기록이 존재하는 첫 번째로 설정
    ClientCalendarEventType initialCategory = ClientCalendarEventType.classEvent;
    if (state.classRecords.isNotEmpty || _hasClassEvent()) {
      initialCategory = ClientCalendarEventType.classEvent;
    } else if (state.workoutRecords.isNotEmpty) {
      initialCategory = ClientCalendarEventType.workoutEvent;
    } else if (state.dietRecord != null) {
      initialCategory = ClientCalendarEventType.dietEvent;
    }

    _isLoading = false;
    state = state.copyWith(
      isLoading: false,
      selectedCategory: initialCategory,
    );
  }

  Future<void> _loadWorkoutRecords(String dateString) async {
    try {
      final result = await getDailyWorkoutRecordsUseCase.call(
        date: dateString,
        clientId: params.clientId,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        state = state.copyWith(workoutRecords: result.data!);
      } else {
        state = state.copyWith(workoutRecords: []);
      }
    } catch (e) {
      state = state.copyWith(workoutRecords: []);
    }
  }

  Future<void> _loadDietList(String dateString) async {
    try {
      final result = await getDailyDietListUseCase.call(
        date: dateString,
        clientId: params.clientId,
      );

      if (result.statusType == StatusType.SUCCESS) {
        state = state.copyWith(dietRecord: result.data);
      } else {
        state = state.copyWith(dietRecord: null);
      }
    } catch (e) {
      state = state.copyWith(dietRecord: null);
    }
  }

  Future<void> _loadClassRecords(String dateString) async {
    try {
      final result = await getDailyClassRecordsUseCase.call(
        classDate: dateString,
        clientId: params.clientId,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        state = state.copyWith(classRecords: result.data!);
      } else {
        state = state.copyWith(classRecords: []);
      }
    } catch (e) {
      state = state.copyWith(classRecords: []);
    }
  }

  Future<void> _loadScheduleDetail() async {
    try {
      final classEvent = params.events.firstWhere(
        (event) {
          return event.eventType == ClientCalendarEventType.classEvent ||
              event.eventType ==
                  ClientCalendarEventType.reservationCompleteEvent ||
              event.eventType == ClientCalendarEventType.classCompleteEvent ||
              event.eventType == ClientCalendarEventType.classRequestEvent;
        },
      );

      final result = await getScheduleDetailUseCase.call(
        scheduleId: classEvent.eventId,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        state = state.copyWith(scheduleDetail: result.data);
      }
    } catch (e) {
      // scheduleDetail 조회 실패 시 무시하고 계속 진행
      print('scheduleDetail 조회 실패: $e');
    }
  }

  bool _hasClassEvent() {
    return params.events.any((event) {
      return event.eventType == ClientCalendarEventType.classEvent ||
          event.eventType == ClientCalendarEventType.reservationCompleteEvent ||
          event.eventType == ClientCalendarEventType.classCompleteEvent ||
          event.eventType == ClientCalendarEventType.classRequestEvent;
    });
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  void updateSelectedCategory(ClientCalendarEventType category) {
    state = state.copyWith(selectedCategory: category);
  }
}

