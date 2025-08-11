import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_schedule_detail_usecase.dart';
import 'package:ssentif_manager_web/features/schedule/domain/usecase/get_trainer_schedules_usecase.dart';
import 'package:ssentif_manager_web/features/schedule/view/effect/schedule_effect.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/schedule_intent.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/calendar_type.dart';

import '../state/schedule_state.dart';

final scheduleViewModelProvider = StateNotifierProvider.family<
    ScheduleViewModel, ScheduleState, List<UserEntity>>((ref, coaches) {
  final getTrainerSchedulesUseCase =
      ref.read(getTrainerSchedulesUseCaseProvider);
  final getScheduleDetailUseCase = ref.read(getScheduleDetailUseCaseProvider);
  final scheduleEffect = ref.read(scheduleEffectProvider.notifier);

  final now = DateTime.now();
  coaches.sort((a, b) => a.userName.compareTo(b.userName));
  return ScheduleViewModel(
      getTrainerSchedulesUseCase: getTrainerSchedulesUseCase,
      scheduleEffect: scheduleEffect,
      getScheduleDetailUseCase: getScheduleDetailUseCase,
      initialState: ScheduleState(
        todayDate: now,
        selectedDate: now,
        workPlace: null,
        coaches: coaches,
        calendarDate: now,
        selectedCoaches: List<UserEntity>.from(coaches),
      ));
});

class ScheduleViewModel extends StateNotifier<ScheduleState> {
  final GetTrainerSchedulesUseCase getTrainerSchedulesUseCase;
  final GetScheduleDetailUseCase getScheduleDetailUseCase;
  final StateController<ScheduleEffect?> scheduleEffect;
  final ScheduleState initialState;

  ScheduleViewModel(
      {required this.getTrainerSchedulesUseCase,
      required this.getScheduleDetailUseCase,
      required this.initialState,
      required this.scheduleEffect})
      : super(initialState) {
    _getCachedInfo();
  }

  void handleIntent(ScheduleIntent scheduleIntent) {
    scheduleIntent.when(
        clickScheduleItem: (int scheduleId) {
          _getScheduleDetail(scheduleId);
        },
        onRefreshScheduleList: () {},
        clickPreviousMonth: () {
          var newMonth = _updateMonthlyCalendarDate(-1);
          var selectedDate = state.selectedDate;
          final newSelectedDate = DateTime(
              selectedDate.year, selectedDate.month - 1, selectedDate.day);
          _updateSelectedDate(newSelectedDate);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(
              dateTime: newMonth, selectedDate: newSelectedDate);
        },
        clickNextMonth: () {
          var newMonth = _updateMonthlyCalendarDate(1);
          var selectedDate = state.selectedDate;
          final newSelectedDate = DateTime(
              selectedDate.year, selectedDate.month + 1, selectedDate.day);
          _updateSelectedDate(newSelectedDate);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(
              dateTime: newMonth, selectedDate: newSelectedDate);
        },
        clickTodayDate: () {
          final now = DateTime.now();
          var newMonth = _updateCalendarDate();
          _updateSelectedDate(now);
          scheduleEffect.state = ScheduleEffect.updateCalendarView(
            dateTime: newMonth,
            selectedDate: now,
          );
        },
        selectDate: (DateTime date) {
          if (date.year != state.calendarDate.year ||
              date.month != state.calendarDate.month) {
            final newMonth = DateTime(date.year, date.month, 1);
            final monthDiff = (date.year - state.calendarDate.year) * 12 +
                (date.month - state.calendarDate.month).toInt();

            _updateMonthlyCalendarDate(monthDiff);
            _updateSelectedDate(date);
            scheduleEffect.state = ScheduleEffect.updateCalendarView(
                dateTime: newMonth, selectedDate: date);
          } else {
            _updateSelectedDate(date);
          }

          // CalendarType.monthly일 때 다이얼로그 노출
          if (state.selectedCalendarType == CalendarType.monthly) {
            scheduleEffect.state =
                ScheduleEffect.showDateScheduleDialog(selectedDate: date);
          }
        },
        onToggleCoach: (coach) {
          final current = List<UserEntity>.from(state.selectedCoaches);
          final exists = current.any((c) => c.userId == coach.userId);
          if (exists) {
            current.removeWhere((c) => c.userId == coach.userId);
          } else {
            current.add(coach);
          }
          current.sort((a, b) => a.userName.compareTo(b.userName));
          state = state.copyWith(selectedCoaches: current);
        },
        onSelectCalendarType: (type) {
          state = state.copyWith(selectedCalendarType: type);
          if (type == CalendarType.monthly) {
            getSchedulesByStatus(state.monthlySchedules);
          } else {
            var schedules = _filterBySelectedDate(
                state.monthlySchedules, state.calendarDate);
            state = state.copyWith(selectedDateSchedules: schedules);
            getSelectedDateSchedulesByStatus(schedules);
          }
        },
        clickPreviousDay: () {
          final prevDay = state.calendarDate.subtract(const Duration(days: 1));

          // 월이 변경되었는지 확인
          if (prevDay.month != state.calendarDate.month) {
            state = state.copyWith(calendarDate: prevDay);
            _loadSchedules(state.coaches);
          } else {
            var schedules =
                _filterBySelectedDate(state.monthlySchedules, prevDay);
            state = state.copyWith(
                calendarDate: prevDay, selectedDateSchedules: schedules);
            getSelectedDateSchedulesByStatus(schedules);
          }
        },
        clickNextDay: () {
          final nextDay = state.calendarDate.add(const Duration(days: 1));

          // 월이 변경되었는지 확인
          if (nextDay.month != state.calendarDate.month) {
            state = state.copyWith(calendarDate: nextDay);
            _loadSchedules(state.coaches);
          } else {
            var schedules =
                _filterBySelectedDate(state.monthlySchedules, nextDay);
            state = state.copyWith(
                calendarDate: nextDay, selectedDateSchedules: schedules);
            getSelectedDateSchedulesByStatus(schedules);
          }
        },
        clickLogout: () {
          scheduleEffect.state = ScheduleEffect.showLogoutDialog();
        },
        clickLogoutDoubleCheck: () {
          _logout();
        });
  }

  void _updateSelectedDate(DateTime date) {
    state = state.copyWith(
      selectedDate: date,
      selectedDateSchedules:
          _filterBySelectedDate(state.monthlySchedules, date),
    );
  }

  DateTime _updateMonthlyCalendarDate(int offset) {
    final current = state.calendarDate;
    final newMonth = DateTime(current.year, current.month + offset, 1);
    state = state.copyWith(calendarDate: newMonth);
    _loadSchedules(state.coaches);
    return newMonth;
  }

  DateTime _updateCalendarDate() {
    final current = state.calendarDate;
    final now = DateTime.now();

    // month 차이 계산
    final monthDiff =
        (now.year - current.year) * 12 + (now.month - current.month);
    final newMonth = DateTime(current.year, current.month + monthDiff, 1);
    state = state.copyWith(calendarDate: now);

    _loadSchedules(state.coaches);
    return newMonth;
  }

  void _getCachedInfo() {
    var workplaceInfo = StorageManager.getWorkPlaceInfo();

    if (workplaceInfo != null) {
      final now = DateTime.now();
      state = state.copyWith(
        workPlace: workplaceInfo,
        calendarDate: now,
      );
      _loadSchedules(state.coaches);
    }
  }

  void _getScheduleDetail(int scheduleId) async {
    (await getScheduleDetailUseCase(scheduleId: scheduleId)).handleStatus(
        onSuccess: (response) {
          if (response != null) {
            state = state.copyWith(scheduleDetail: response);
          } else {
            scheduleEffect.state = ScheduleEffect.showErrorDialog(
                message: "일정 상세 정보를 불러올 수 없습니다.");
          }
        },
        onError: (errCode, errMsg) {});
  }

  void _loadSchedules(List<UserEntity> coaches) async {
    final month = state.calendarDate;
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);

    List<CalendarScheduleEntity> allSchedules = [];

    for (final coach in coaches) {
      final schedules = await getTrainerSchedulesUseCase(
          startDate: firstDay.formatYMD(),
          endDate: lastDay.formatYMD(),
          trainerId: coach.userId,
          trainerName: coach.userName
      );

      schedules.handleStatus(onSuccess: (data) {
        if (data != null) {
          allSchedules.addAll(data.schedules);
          data.schedules.forEach((e){
            print("========> ${e.trainerName} / ${e.scheduleName}");
          });

          state = state.copyWith(
            monthlySchedules: List.from(allSchedules),
            selectedDateSchedules: _filterBySelectedDate(
              List.from(allSchedules),
              state.selectedDate,
            ),
          );
        }
      }, onError: (errCode, errMsg) {
        _logout();
      }, onUnauthorized: () {
        _logout();
      });

      if (state.selectedCalendarType == CalendarType.monthly) {
        getSchedulesByStatus(allSchedules);
      } else {
        var filteredSchedules =
            _filterBySelectedDate(allSchedules, state.calendarDate);
        getSelectedDateSchedulesByStatus(filteredSchedules);
      }
      getSchedulesByDateAndStatus(allSchedules);
    }
  }

  List<CalendarScheduleEntity> _filterBySelectedDate(
      List<CalendarScheduleEntity> schedules, DateTime selectedDate) {

    return schedules
        .where((s) =>
            s.startTime != null &&
            s.startTime!.year == selectedDate.year &&
            s.startTime!.month == selectedDate.month &&
            s.startTime!.day == selectedDate.day)
        .toList();
  }

  /// scheduleStatusType별로 그룹핑하고 state의 통계 값들을 업데이트하는 메서드
  void getSchedulesByStatus(List<CalendarScheduleEntity> schedules) {
    if (state.selectedCalendarType != CalendarType.monthly) return;

    final Map<ScheduleStatusType, int> schedulesByStatus = {};

    // 모든 ScheduleStatusType에 대해 초기값 0 설정
    for (final statusType in ScheduleStatusType.values) {
      schedulesByStatus[statusType] = 0;
    }

    // 스케줄들을 statusType별로 카운트
    for (final schedule in schedules) {
      if (schedule.scheduleStatusType != null) {
        schedulesByStatus[schedule.scheduleStatusType!] =
            (schedulesByStatus[schedule.scheduleStatusType!] ?? 0) + 1;
      }
    }
    var attendanceCount =
        schedulesByStatus[ScheduleStatusType.classComplete] ?? 0;
    var reservationCount =
        schedulesByStatus[ScheduleStatusType.reservationComplete] ?? 0;

    // state의 통계 값들을 업데이트
    state = state.copyWith(
      totalClassCount: attendanceCount + reservationCount, // 전체 스케줄 개수
      attendanceCount: attendanceCount, // 수업 완료
      reservationCount: reservationCount, // 예약 완료
      reservationRequestCount:
          schedulesByStatus[ScheduleStatusType.reservationWait] ?? 0, // 예약 대기
      etcCount: schedulesByStatus[ScheduleStatusType.trainerEtcSchedule] ??
          0, // 기타 스케줄
    );
  }

  /// 각 날짜별로 ScheduleStatusType이 몇개씩 있는지 구하고 state에 업데이트하는 메서드
  void getSchedulesByDateAndStatus(List<CalendarScheduleEntity> schedules) {
    final Map<DateTime, Map<ScheduleStatusType, int>> schedulesByDateAndStatus =
        {};

    for (final schedule in schedules) {
      if (schedule.startTime != null) {
        // 날짜만 추출 (시간 제거)
        final date = DateTime(schedule.startTime!.year,
            schedule.startTime!.month, schedule.startTime!.day);

        // 해당 날짜가 없으면 초기화
        if (!schedulesByDateAndStatus.containsKey(date)) {
          schedulesByDateAndStatus[date] = {};
          // 모든 ScheduleStatusType에 대해 초기값 0 설정
          var classTypes = ScheduleStatusType.values.where((e) {
            return e != ScheduleStatusType.prescribeWait &&
                e != ScheduleStatusType.prescribeComplete;
          });

          for (final statusType in classTypes) {
            schedulesByDateAndStatus[date]![statusType] = 0;
          }
        }

        // scheduleStatusType이 있으면 카운트 증가
        if (schedule.scheduleStatusType != null) {
          schedulesByDateAndStatus[date]![schedule.scheduleStatusType!] =
              (schedulesByDateAndStatus[date]![schedule.scheduleStatusType!] ??
                      0) +
                  1;
        }
      }
    }

    // state에 날짜별 스케줄 상태 정보 업데이트
    state = state.copyWith(
      schedulesByDateAndStatus: schedulesByDateAndStatus,
    );
  }

  /// 선택된 날짜에 대해서만 ScheduleStatusType별로 그룹핑하고 state에 업데이트하는 메서드 (Daily 모드용)
  void getSelectedDateSchedulesByStatus(
      List<CalendarScheduleEntity> schedules) {
    if (state.selectedCalendarType != CalendarType.daily) return;

    final attendanceCount = schedules.where((e) {
      return e.scheduleStatusType == ScheduleStatusType.classComplete;
    }).length;

    final reservationCompleteCount = schedules.where((e) {
      return e.scheduleStatusType == ScheduleStatusType.reservationComplete;
    }).length;

    final reservationWaitCount = schedules.where((e) {
      return e.scheduleStatusType == ScheduleStatusType.reservationWait;
    }).length;

    final etcCount = schedules.where((e) {
      return e.scheduleStatusType == ScheduleStatusType.trainerEtcSchedule;
    }).length;

    state = state.copyWith(
        totalClassCount:
            attendanceCount + reservationCompleteCount, // 선택된 날짜의 전체 스케줄 개수
        attendanceCount: attendanceCount, // 선택된 날짜의 수업 완료
        reservationCount: reservationCompleteCount, // 선택된 날짜의 예약 완료
        reservationRequestCount: reservationWaitCount, // 선택된 날짜의 예약 대기
        etcCount: etcCount // 선택된 날짜의 기타 스케줄
        );
  }

  void _logout() {
    StorageManager.clearAll();
    StorageManager.clearAllCookies();
    scheduleEffect.state = ScheduleEffect.navToLogin();
  }

// void _loadDummySchedules() {
//   final now = DateTime.now();
//   final dummySchedules = <CalendarScheduleEntity>[];
//   final statusTypes = [
//     ScheduleStatusType.classComplete,
//     ScheduleStatusType.reservationComplete,
//     ScheduleStatusType.reservationWait,
//     ScheduleStatusType.trainerEtcSchedule,
//   ];
//
//   for (int i = 0; i < state.coaches.length; i++) {
//     final coach = state.coaches[i];
//     final List<CalendarScheduleEntity> coachSchedules = [];
//     DateTime lastEndTime = now.copyWith(hour: 9, minute: 0); // 09:00 시작
//     int statusIdx = i % statusTypes.length;
//
//     // 첫 번째 스케줄 (09:00~09:50)
//     coachSchedules.add(CalendarScheduleEntity(
//       trainerName: coach.userName,
//       scheduleName: 'PT ${(i + 1)}',
//       startTime: lastEndTime,
//       endTime: lastEndTime.add(const Duration(minutes: 50)),
//       scheduleStatusType: statusTypes[statusIdx],
//     ));
//     lastEndTime = lastEndTime.add(const Duration(minutes: 50 + 10)); // 10분 휴식
//     statusIdx = (statusIdx + 1) % statusTypes.length;
//
//     // 두 번째 스케줄 (짝수 인덱스 코치만, 10:00~10:40)
//     if (i % 2 == 0) {
//       coachSchedules.add(CalendarScheduleEntity(
//         trainerName: coach.userName,
//         scheduleName: '상담',
//         startTime: lastEndTime,
//         endTime: lastEndTime.add(const Duration(minutes: 40)),
//         scheduleStatusType: statusTypes[statusIdx],
//       ));
//       lastEndTime = lastEndTime.add(const Duration(minutes: 40 + 10));
//       statusIdx = (statusIdx + 1) % statusTypes.length;
//     }
//
//     // 점심 PT(12:30~13:20)는 항상 고정, 이전 스케줄과 겹치지 않게
//     DateTime lunchStart = now.copyWith(hour: 12, minute: 30);
//     DateTime lunchEnd = now.copyWith(hour: 13, minute: 20);
//     if (lastEndTime.isBefore(lunchStart)) {
//       // 점심 PT 전까지 gap 있음: 점심 PT 추가
//       coachSchedules.add(CalendarScheduleEntity(
//         trainerName: coach.userName,
//         scheduleName: '점심 PT',
//         startTime: lunchStart,
//         endTime: lunchEnd,
//         scheduleStatusType: statusTypes[statusIdx],
//       ));
//       lastEndTime = lunchEnd.add(const Duration(minutes: 10));
//       statusIdx = (statusIdx + 1) % statusTypes.length;
//     } else {
//       // 이미 점심시간이 지났으면, 점심 PT는 생략
//     }
//
//     // 세 번째 스케줄 (점심 이후, 14:00~14:40)
//     if (lastEndTime.hour < 14) {
//       lastEndTime = now.copyWith(hour: 14, minute: 0);
//     }
//     coachSchedules.add(CalendarScheduleEntity(
//       trainerName: coach.userName,
//       scheduleName: '오후 PT',
//       startTime: lastEndTime,
//       endTime: lastEndTime.add(const Duration(minutes: 40)),
//       scheduleStatusType: statusTypes[statusIdx],
//     ));
//     // 전체 더미 스케줄에 추가
//     dummySchedules.addAll(coachSchedules);
//   }
//   print("test ==> ${dummySchedules}");
//   state = state.copyWith(selectedDateSchedules: dummySchedules);
// }
}
