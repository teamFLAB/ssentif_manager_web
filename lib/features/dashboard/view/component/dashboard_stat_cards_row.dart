import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/dashboard_stat_card.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';

class DashboardStatCardsRow extends ConsumerWidget {
  const DashboardStatCardsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardViewModelProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          DashboardStatCard(
            statType: DashboardStatType.totalClassCount,
            value: state.statValues[DashboardStatType.totalClassCount] ?? '0',
            mom: state.statMoms[DashboardStatType.totalClassCount] ?? 0.0,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.recordWritingRate,
            value: state.statValues[DashboardStatType.recordWritingRate] ?? '0',
            mom: state.statMoms[DashboardStatType.recordWritingRate] ?? 0.0,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.reenrollmentRate,
            value: state.statValues[DashboardStatType.reenrollmentRate] ?? '0',
            mom: state.statMoms[DashboardStatType.reenrollmentRate] ?? 0.0,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.customerSatisfaction,
            value: state.statValues[DashboardStatType.customerSatisfaction] ?? '0',
            mom: state.statMoms[DashboardStatType.customerSatisfaction] ?? 0.0,
          ),
        ],
      ),
    );
  }
}

