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
            statType: DashboardStatType.newlyRegistration,
            value: state.statValues.newlyRegistration,
            mom: state.statMoms.newlyRegistration,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.reenrollment,
            value: state.statValues.reenrollmentRate,
            mom: state.statMoms.reenrollmentRate,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.totalClassCount,
            value: state.statValues.totalClassCount,
            mom: state.statMoms.totalClassCount,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.recordWritingRate,
            value: state.statValues.recordWritingRate,
            mom: state.statMoms.recordWritingRate,
          ),
          const SizedBox(width: 12),
          DashboardStatCard(
            statType: DashboardStatType.customerSatisfaction,
            value: state.statValues.customerSatisfaction,
            mom: state.statMoms.customerSatisfaction,
          ),
        ],
      ),
    );
  }
}

