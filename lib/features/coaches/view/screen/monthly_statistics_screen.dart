import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/schedule_stat_box.dart';
import 'package:ssentif_manager_web/core/widgets/monthly_calendar.dart';
import '../intent/monthly_statistics_intent.dart';
import '../viewmodel/monthly_statistics_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class MonthlyStatisticsScreen extends ConsumerStatefulWidget {
  final UserEntity? selectedCoach;
  final DateTime selectedMonth;
  final void Function(DateTime)? onMonthChanged;
  const MonthlyStatisticsScreen({
    super.key,
    this.selectedCoach,
    required this.selectedMonth,
    this.onMonthChanged,
  });

  @override
  ConsumerState<MonthlyStatisticsScreen> createState() =>
      _MonthlyStatisticsScreenState();
}

class _MonthlyStatisticsScreenState
    extends ConsumerState<MonthlyStatisticsScreen> {
  void _handleMonthIntent(MonthlyStatisticsIntent intent, DateTime newMonth) {
    final viewModelProvider = monthlyStatisticsViewModelProvider((
      selectedCoach: widget.selectedCoach,
      selectedMonth: widget.selectedMonth,
    ));
    final viewModel = ref.read(viewModelProvider.notifier);
    viewModel.handleIntent(intent);
    if (widget.onMonthChanged != null) {
      widget.onMonthChanged!(newMonth);
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModelProvider = monthlyStatisticsViewModelProvider((
      selectedCoach: widget.selectedCoach,
      selectedMonth: widget.selectedMonth,
    ));
    final viewModel = ref.read(viewModelProvider.notifier);
    final state = ref.watch(viewModelProvider);

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          // 상단 헤더 영역
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
            child: Row(
              children: [
                // 월 표시 텍스트
                Text(
                  DateFormat('yyyy년 MM월').format(state.selectedMonth),
                  style: SsentifTextStyles.bold24.copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(width: 16),
                // 이번달 버튼
                GestureDetector(
                  onTap: () {
                    _handleMonthIntent(
                      const MonthlyStatisticsIntent.clickThisMonth(),
                      DateTime.now(),
                    );
                  },
                  child: Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.gray4,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '이번달',
                      style: SsentifTextStyles.medium14.copyWith(
                        color: AppColors.gray555,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // 이전 버튼
                GestureDetector(
                  onTap: () {
                    final prevMonth = DateTime(state.selectedMonth.year,
                        state.selectedMonth.month - 1, 1);
                    _handleMonthIntent(
                      const MonthlyStatisticsIntent.clickPreviousMonth(),
                      prevMonth,
                    );
                  },
                  child: Assets.images.icPreviousButton.image(
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 10),
                // 다음 버튼
                GestureDetector(
                  onTap: () {
                    final nextMonth = DateTime(state.selectedMonth.year,
                        state.selectedMonth.month + 1, 1);
                    _handleMonthIntent(
                      const MonthlyStatisticsIntent.clickNextMonth(),
                      nextMonth,
                    );
                  },
                  child: Assets.images.icNextButton.image(
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          // 통계 박스 그리드
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 왼쪽 통계 박스들
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            '수업일정',
                            style: SsentifTextStyles.medium16.copyWith(
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        // 첫 번째 행
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ScheduleStatBox(
                                title: '전체 수업수',
                                value: state.totalClassCount.toString(),
                              ),
                            ),
                            const SizedBox(width: 15),
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ScheduleStatBox(
                                title: '출석 완료',
                                value: state.attendanceCount.toString(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        // 두 번째 행
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ScheduleStatBox(
                                title: '예약 완료',
                                value: state.reservationCount.toString(),
                              ),
                            ),
                            const SizedBox(width: 15),
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ScheduleStatBox(
                                title: '예약 요청',
                                value: state.reservationRequestCount.toString(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        // 세 번째 행 (기타 일정만)
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ScheduleStatBox(
                                title: '기타 일정',
                                value: state.etcCount.toString(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.gray4,
                    width: 1,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // 날짜별 일정 확인 텍스트
                          Text(
                            '날짜별 일정 확인',
                            style: SsentifTextStyles.medium16.copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // 캘린더
                          MonthlyCalendar(
                            selectedMonth: state.selectedMonth,
                            dailyScheduleCounts: state.dailyScheduleCounts,
                            onDayTap: (day) {
                              // TODO: 날짜 클릭 시 처리
                              print('Selected day: $day');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
