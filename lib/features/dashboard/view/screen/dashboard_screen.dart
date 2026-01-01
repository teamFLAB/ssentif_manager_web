import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/core/widgets/month_selector_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/dashboard_stat_cards_row.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/dashboard_stat_type_selector_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/coach_ranking_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/monthly_indicator_chart_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/member_review_list_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';

import '../../../../core/navigation/app_router.dart';
import 'dart:html' as html;

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  DashboardStatType _selectedStatType = DashboardStatType.newlyRegistration;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardViewModelProvider);
    final viewModel = ref.read(dashboardViewModelProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 고정된 상단 영역
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
                  _showLogoutDialog(onLogout: () {
                    viewModel.logoutAndNavToLogin(() {
                      context.showSnackBar("로그아웃 되었습니다.");
                      context.go(AppRoutePath.login.path, extra: {"replaceAll": true});
                      html.window.history.replaceState(null, '', AppRoutePath.login.path);
                    });
                  });
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '센터 대시보드',
                      style: SsentifTextStyles.bold22.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'PT 성과 데이터를 분석하여 센터 운영 현황을 객관적으로 진단합니다.',
                      style: SsentifTextStyles.regular16.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MonthSelectorWidget(
                selectedMonth: state.selectedMonth,
                onThisMonth: () => viewModel.clickThisMonth(),
                onPreviousMonth: () => viewModel.clickPreviousMonth(),
                onNextMonth: () => viewModel.clickNextMonth(),
              ),
              const SizedBox(height: 20),
              const DashboardStatCardsRow(),
              const SizedBox(height: 20),
              DashboardStatTypeSelectorWidget(
                selectedStatType: _selectedStatType,
                onStatTypeChanged: (statType) {
                  setState(() {
                    _selectedStatType = statType;
                  });
                },
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CoachRankingWidget(
                        selectedStatType: _selectedStatType,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 9,
                      child: MonthlyIndicatorChartWidget(
                        selectedStatType: _selectedStatType,
                        monthlyScheduleCounts: state.monthlyScheduleCounts,
                        monthlyRoutineRatios: state.monthlyRoutineRatios,
                        monthlyRepurchaseCounts: state.monthlyRepurchaseCounts,
                        monthlyScheduleReviewAverages:
                            state.monthlyScheduleReviewAverages,
                        monthlyNewRegistrationCounts:
                            state.monthlyNewRegistrationCounts,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MemberReviewListWidget(
                currentMonthReviews: state.currentMonthReviews,
              ),
              const SizedBox(height: 20),
            ],
          ),
        )),
      ],
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

