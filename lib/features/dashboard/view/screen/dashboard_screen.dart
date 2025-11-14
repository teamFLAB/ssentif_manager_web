import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/widgets/month_selector_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/dashboard_stat_cards_row.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/coach_ranking_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/monthly_indicator_chart_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      '센터 운영을 데이터 지표를 통해 정확하게 해보세요.',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: const CoachRankingWidget(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 9,
                      child: const MonthlyIndicatorChartWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
