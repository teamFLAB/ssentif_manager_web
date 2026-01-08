import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/features/client/view/component/client_list_widget.dart';
import 'package:ssentif_manager_web/features/client/view/component/client_detail_widget.dart';
import 'package:ssentif_manager_web/features/coaches/view/effect/managed_members_effect.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/managed_members_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'dart:html' as html;

import '../../../../core/navigation/app_router.dart';

class ManagedMembersScreen extends ConsumerWidget {
  final UserEntity? selectedCoach;

  const ManagedMembersScreen({
    super.key,
    required this.selectedCoach,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.watch(managedMembersViewModelProvider(selectedCoach).notifier);
    final state = ref.watch(managedMembersViewModelProvider(selectedCoach));
    handleEffect(ref, context);

    return Container(
      color: AppColors.backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 좌측 영역: 회원 목록 (탭바 아래에서 시작, 스크롤 가능)
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 0, left: 30, right: 30),
              child: ClientListWidget(
                managedMembers: state.managedMembers,
                isLoading: state.isMembersLoading,
                selectedClient: state.selectedClient,
                errorMessage: state.membersErrorMessage,
                onClientSelected: (client) {
                  viewModel.handleIntent(
                      ManagedMembersIntent.selectClient(client: client));
                },
              ),
            ),
          ),
          // 20px 간격
          const SizedBox(width: 20),

          // 중앙: gray4 border
          Container(
            width: 1,
            color: AppColors.gray4,
          ),

          // 20px 간격
          const SizedBox(width: 20),

          // 우측: 회원 상세 정보 위젯 (상단부터 시작)
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ClientDetailWidget(
                  clientInfo: state.selectedClient,
                  clientProfile: state.selectedClientProfile,
                  clientCalendar: state.selectedClientCalendar,
                  selectedMonth: state.selectedMonth,
                  onClickThisMonth: () {
                    viewModel
                        .handleIntent(ManagedMembersIntent.clickThisMonth());
                  },
                  onClickPreviousMonth: () {
                    viewModel.handleIntent(
                        ManagedMembersIntent.clickPreviousMonth());
                  },
                  onClickNextMonth: () {
                    viewModel
                        .handleIntent(ManagedMembersIntent.clickNextMonth());
                  }),
            ),
          ),
        ],
      ),
    );
  }

  void handleEffect(WidgetRef ref, BuildContext context) {
    ref.listen(managedMembersEffectProvider, (previous, next) {
      if (next == null) return;
      ref.read(managedMembersEffectProvider.notifier).state = null;

      next.when(navToLogin: () {
        context.showSnackBar("로그아웃 되었습니다.");
        context.go(AppRoutePath.login.path, extra: {"replaceAll": true});
        html.window.history.replaceState(null, '', AppRoutePath.login.path);
      });
    });
  }
}
