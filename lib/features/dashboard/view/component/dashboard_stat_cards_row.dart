import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/dashboard_stat_card.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';

class DashboardStatCardsRow extends ConsumerStatefulWidget {
  const DashboardStatCardsRow({super.key});

  @override
  ConsumerState<DashboardStatCardsRow> createState() =>
      _DashboardStatCardsRowState();
}

class _DashboardStatCardsRowState extends ConsumerState<DashboardStatCardsRow> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardViewModelProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Listener(
        onPointerSignal: (event) {
          if (event is PointerScrollEvent) {
            // 마우스 휠 이벤트 처리 - 브라우저 앞/뒤로 가기 방지
            if (event.scrollDelta.dx != 0 && _scrollController.hasClients) {
              _scrollController.position.moveTo(
                (_scrollController.position.pixels - event.scrollDelta.dx)
                    .clamp(0.0, _scrollController.position.maxScrollExtent),
              );
            }
          }
        },
        child: GestureDetector(
          onPanUpdate: (details) {
            // 마우스 드래그 스크롤 처리
            if (_scrollController.hasClients) {
              _scrollController.position.moveTo(
                (_scrollController.position.pixels - details.delta.dx)
                    .clamp(0.0, _scrollController.position.maxScrollExtent),
              );
            }
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
      ),
    );
  }
}
