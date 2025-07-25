import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/features/client/view/component/client_list_widget.dart';
import 'package:ssentif_manager_web/features/client/view/component/client_detail_widget.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/state/managed_members_state.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/managed_members_view_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

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

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 좌측: 회원 목록 위젯
                  ClientListWidget(
                    managedMembers: state.managedMembers,
                    isLoading: state.isMembersLoading,
                    errorMessage: state.membersErrorMessage,
                    onClientSelected: (client) {
                      viewModel.handleIntent(
                          ManagedMembersIntent.selectClient(client: client));
                    },
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

                  // 우측: 회원 상세 정보 위젯
                  Expanded(
                    child: ClientDetailWidget(
                      clientInfo: state.selectedClient,
                      clientProfile: state.selectedClientProfile,
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
