import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/schedule_stat_box.dart';
import 'package:ssentif_manager_web/core/widgets/monthly_calendar.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/monthly_statistics_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/state/monthly_statistics_state.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/monthly_statistics_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class MonthlyStatisticsScreen extends ConsumerWidget {
  final UserEntity? selectedCoach;
  final DateTime selectedMonth;

  const MonthlyStatisticsScreen({
    super.key,
    required this.selectedCoach,
    required this.selectedMonth,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerParams = (
      selectedCoach: selectedCoach,
      selectedMonth: selectedMonth,
    );
    final viewModel =
        ref.read(monthlyStatisticsViewModelProvider(providerParams).notifier);
    final state = ref.watch(monthlyStatisticsViewModelProvider(providerParams));

    var margin30 = DeviceSizeUtils().getResponsiveDouble(30, 5, context);
    var margin15 = DeviceSizeUtils().getResponsiveDouble(15, 2, context);
    var margin20 = DeviceSizeUtils().getResponsiveDouble(20, 3, context);

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          // 상단 헤더 영역
          Container(
            padding: EdgeInsets.only(right: margin30, left: margin30, bottom: margin15),
            child: Row(
              children: [
                // 월 표시 텍스트
                Text(
                  DateFormat('yyyy년 MM월').format(state.selectedMonth),
                  style: SsentifTextStyles.medium24(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(width: 16),
                // 이번달 버튼
                GestureDetector(
                  onTap: () {
                    viewModel
                        .handleIntent(MonthlyStatisticsIntent.clickThisMonth());
                  },
                  child: Container(
                    height: 22,
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
                      style: SsentifTextStyles.medium12(context).copyWith(
                        color: AppColors.gray555,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // 이전 버튼
                GestureDetector(
                  onTap: () {
                    viewModel.handleIntent(
                        MonthlyStatisticsIntent.clickPreviousMonth());
                  },
                  child: Assets.images.icPreviousButton.image(
                    width: 22,
                    height: 22,
                  ),
                ),
                const SizedBox(width: 10),
                // 다음 버튼
                GestureDetector(
                  onTap: () {
                    viewModel
                        .handleIntent(MonthlyStatisticsIntent.clickNextMonth());
                  },
                  child: Assets.images.icNextButton.image(
                    width: 22,
                    height: 22,
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
                    padding: EdgeInsets.only(right: margin20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: margin20),
                          child: Text(
                            '수업일정',
                            style: SsentifTextStyles.medium14(context).copyWith(
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        ..._buildStatBoxRows(state, context),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.gray4,
                    width: 1,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: margin20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // 날짜별 일정 확인 텍스트
                          Text(
                            '날짜별 일정 확인',
                            style: SsentifTextStyles.medium14(context).copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          SizedBox(height: margin20),
                          // 캘린더
                          MonthlyCalendar(
                            selectedMonth: selectedMonth,
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

  List<Widget> _buildStatBoxRows(MonthlyStatisticsState state, BuildContext context) {

    var width200 = DeviceSizeUtils().getResponsiveDouble(200, 15, context);
    var margin15 = DeviceSizeUtils().getResponsiveDouble(15, 2, context);

    final statBoxes = [
      ('전체 수업', state.totalClassCount.toString()),
      ('출석 완료', state.attendanceCount.toString()),
      ('예약 완료', state.reservationCount.toString()),
      ('예약 요청', state.reservationRequestCount.toString()),
      ('기타 일정', state.etcCount.toString()),
    ];

    final List<Widget> rows = [];

    // 2개씩 묶어서 행 생성
    for (int i = 0; i < statBoxes.length; i += 2) {
      final row = Row(
        children: [
          SizedBox(
            width: width200,
            child: ScheduleStatBox(
              title: statBoxes[i].$1,
              value: statBoxes[i].$2,
            ),
          ),
          if (i + 1 < statBoxes.length) ...[
            SizedBox(width: margin15),
            SizedBox(
              width: width200,
              child: ScheduleStatBox(
                title: statBoxes[i + 1].$1,
                value: statBoxes[i + 1].$2,
              ),
            ),
          ],
        ],
      );

      rows.add(row);
      if (i + 2 < statBoxes.length) {
        rows.add(SizedBox(height: margin15));
      }
    }

    return rows;
  }
}
