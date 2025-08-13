import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/navigation/app_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/schedule/view/effect/schedule_effect.dart';
import 'package:ssentif_manager_web/features/schedule/view/intent/schedule_intent.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import '../viewmodel/schedule_view_model.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../component/schedule_date_cell.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import '../component/date_selection_view.dart';
import 'package:ssentif_manager_web/shared/enumtype/calendar_type.dart';
import '../component/selected_date_timeline.dart';
import '../component/schedule_stat_box.dart';
import '../component/coach_item.dart';
import '../component/daily_timeline.dart';
import '../component/schedule_dialog.dart';
import '../component/daily_schedules_dialog.dart';
import 'dart:html' as html;

class ScheduleScreen extends ConsumerStatefulWidget {
  final List<UserEntity> coaches;

  const ScheduleScreen({super.key, required this.coaches});

  @override
  ConsumerState<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends ConsumerState<ScheduleScreen> {
  final CalendarController _calendarController = CalendarController();
  final ScrollController _scrollController = ScrollController();
  bool _hasScrolledToCurrentTime = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calendarController.selectedDate = DateTime.now();

      final viewModelProvider = scheduleViewModelProvider(widget.coaches);
      // ref.listen(viewModelProvider, (previous, next) {
      //   if (_calendarController.displayDate != next.calendarDate) {
      //     _calendarController.displayDate = next.calendarDate;
      //   }
      // });
    });
  }

  void _scrollToCurrentTime() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        300.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _scrollToCurrentTime();
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final viewModelProvider = scheduleViewModelProvider(widget.coaches);
        final viewModel = ref.read(viewModelProvider.notifier);
        final state = ref.watch(viewModelProvider);
        final selectedDate = state.selectedDate;
        final selectedMonth = state.calendarDate;
        handleEffect(ref, onLogout: () {
          viewModel.handleIntent(ScheduleIntent.clickLogoutDoubleCheck());
        });

        // 한 번만 현재 시간으로 스크롤
        if (!_hasScrolledToCurrentTime) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToCurrentTime();
            _hasScrolledToCurrentTime = true;
          });
        }

        // scheduleDetail이 있으면 다이얼로그 노출
        if (state.scheduleDetail != null) {
          Future.delayed(Duration.zero, () async {
            await showDialog(
              context: context,
              builder: (context) => ScheduleDialog(
                context: context,
                scheduleDetail: state.scheduleDetail!,
                navToRoutine: () {},
                checkClassAttend: () {},
                deleteSchedule: () {},
                rollbackClassAttend: () {},
                acceptRequest: () {},
                rejectRequest: () {},
                isTrainer: true,
                modifyClassSchedule: () {},
                modifyEtcSchedule: () {},
                navToClientDetail: (id) {},
              ),
            );
            // 다이얼로그 닫힌 후 상태 초기화
            viewModel.handleIntent(ScheduleIntent.onRefreshScheduleList());
          });
        }

        return Container(
          color: AppColors.backgroundColor,
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        viewModel.handleIntent(ScheduleIntent.clickLogout());
                      },
                      child: Text(
                        "로그아웃",
                        style: SsentifTextStyles.medium14
                            .copyWith(color: AppColors.gray1),
                      ),
                    ),
                    const SizedBox(width: 20)
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: DateSelectionView(
                          selectedDate: selectedDate,
                          calendarDate:
                              state.selectedCalendarType == CalendarType.daily
                                  ? state.getDailyFormatCalendar()
                                  : state.getMonthlyFormatCalendar(),
                          onClickPrev: () {
                            if (state.selectedCalendarType ==
                                CalendarType.daily) {
                              viewModel.handleIntent(
                                  const ScheduleIntent.clickPreviousDay());
                            } else {
                              viewModel.handleIntent(
                                  const ScheduleIntent.clickPreviousMonth());
                            }
                          },
                          onClickNext: () {
                            if (state.selectedCalendarType ==
                                CalendarType.daily) {
                              viewModel.handleIntent(
                                  const ScheduleIntent.clickNextDay());
                            } else {
                              viewModel.handleIntent(
                                  const ScheduleIntent.clickNextMonth());
                            }
                          },
                          onClickToday: () {
                            viewModel.handleIntent(
                                const ScheduleIntent.clickTodayDate());
                          },
                          selectedCalendarType: state.selectedCalendarType,
                          onSelectCalendarType: (type) {
                            viewModel.handleIntent(
                              ScheduleIntent.onSelectCalendarType(type: type),
                            );
                          },
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                ScheduleStatBox(
                                    title: '전체 수업',
                                    value: state.totalClassCount.toString()),
                                const SizedBox(width: 15),
                                ScheduleStatBox(
                                    title: '출석 완료',
                                    value: state.attendanceCount.toString()),
                                const SizedBox(width: 15),
                                ScheduleStatBox(
                                    title: '예약 완료',
                                    value: state.reservationCount.toString()),
                                const SizedBox(width: 15),
                                ScheduleStatBox(
                                    title: '예약 요청',
                                    value: state.reservationRequestCount
                                        .toString()),
                                const SizedBox(width: 15),
                                ScheduleStatBox(
                                    title: '기타 일정',
                                    value: state.etcCount.toString()),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: AppColors.gray9,
                            ),
                          ),
                          Visibility(
                              visible: state.selectedCalendarType ==
                                  CalendarType.daily,
                              child: SizedBox(height: 24)),
                          Visibility(
                            visible: state.selectedCalendarType ==
                                CalendarType.daily,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  for (int i = 0;
                                      i < state.coaches.length;
                                      i++) ...[
                                    CoachItem(
                                      coach: state.coaches[i],
                                      selected: state.selectedCoaches.any((c) =>
                                          c.userId == state.coaches[i].userId),
                                      onTap: () {
                                        viewModel.handleIntent(
                                          ScheduleIntent.onToggleCoach(
                                              coach: state.coaches[i]),
                                        );
                                      },
                                    ),
                                    if (i != state.coaches.length - 1)
                                      const SizedBox(width: 12),
                                  ]
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.only(
                                left: 30,
                                right: state.selectedCalendarType ==
                                        CalendarType.daily
                                    ? 0
                                    : 30),
                            alignment: Alignment.centerLeft,
                            child: state.selectedCalendarType ==
                                    CalendarType.daily
                                ? DailyTimeline(
                                    selectedCoaches: state.selectedCoaches,
                                    selectedDateSchedules:
                                        state.selectedDateSchedules,
                                    onScheduleTap: (scheduleId) {
                                      viewModel.handleIntent(
                                        ScheduleIntent.clickScheduleItem(
                                            scheduleId: scheduleId),
                                      );
                                    },
                                  )
                                : Container(
                                    height: 800, // 더 큰 높이로 설정하여 셀이 더 커지도록 함
                                    child: SfCalendar(
                                      controller: _calendarController,
                                      view: CalendarView.month,
                                      initialDisplayDate: selectedMonth,
                                      cellBorderColor: AppColors.grayE4,
                                      onTap: (calendarTapDetails) {
                                        final date = calendarTapDetails.date;
                                        if (date != null) {
                                          viewModel.handleIntent(
                                              ScheduleIntent.selectDate(
                                                  date: date));
                                        }
                                      },
                                      headerHeight: 0,
                                      viewHeaderHeight: 30,
                                      viewHeaderStyle: ViewHeaderStyle(
                                          dayTextStyle: ScDreamStyles.medium12(
                                              AppColors.gray2)),
                                      todayHighlightColor: AppColors.gray2,
                                      backgroundColor: Colors.white,
                                      monthCellBuilder: (context, details) {
                                        final date = details.date;
                                        final schedules = state
                                            .schedulesByDateAndStatus.entries
                                            .where((s) {
                                          return s.key.year == date.year &&
                                              s.key.month == date.month &&
                                              s.key.day == date.day;
                                        }).toList();

                                        return ScheduleDateCell(
                                          cellDate: date,
                                          selectedDate: selectedMonth,
                                          schedules:
                                              schedules.firstOrNull?.value ??
                                                  {},
                                        );
                                      },
                                      monthViewSettings: MonthViewSettings(
                                        dayFormat: 'EE',
                                      ),
                                      selectionDecoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.primary,
                                          width: 2,
                                        ),
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void handleEffect(WidgetRef ref, {required Function() onLogout}) {
    ref.listen(scheduleEffectProvider, (previous, next) {
      if (next == null) return;
      ref.read(scheduleEffectProvider.notifier).state = null;

      next.when(
          navigateToScheduleDetail: (int scheduleId) {},
          showErrorDialog: (String errMsg) {},
          updateCalendarView: (DateTime dateTime, DateTime selectedDate) {
            _calendarController.displayDate = dateTime;
            _calendarController.selectedDate = selectedDate;
          },
          updateSelectedDateCell: (DateTime dateTime) {},
          showDateScheduleDialog: (DateTime selectedDate) {
            _showDateScheduleDialog(selectedDate);
          },
          showLogoutDialog: () {
            _showLogoutDialog(onLogout: () {
              onLogout();
            });
          },
          navToLogin: () {
            context.showSnackBar("로그아웃 되었습니다.");
            context.go(AppRoutePath.login.path, extra: {"replaceAll": true});
            html.window.history.replaceState(null, '', AppRoutePath.login.path);
          });
    });
  }

  void _showDateScheduleDialog(DateTime selectedDate) {
    final state = ref.read(scheduleViewModelProvider(widget.coaches));
    final schedulesForDate = state.schedulesByDateAndStatus[selectedDate] ?? {};

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => DailySchedulesDialog(
          selectedDate: selectedDate,
          schedulesForDate: schedulesForDate,
          selectedDateSchedules: state.selectedDateSchedules),
    );
  }

  void _showLogoutDialog({required Function() onLogout}) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AppColors.white,
        title: Text(
          '로그아웃 하시겠습니다?',
          style: SsentifTextStyles.bold16.copyWith(
            color: AppColors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: AppColors.gray4,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '취소',
                        style: SsentifTextStyles.medium14.copyWith(
                          color: AppColors.gray555,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    onLogout();
                  },
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '로그아웃',
                        style: SsentifTextStyles.medium14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      ),
    );
  }
}
