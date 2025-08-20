import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/client/view/component/matched_client_item.dart';
import 'package:ssentif_manager_web/features/client/view/component/created_client_item.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';

class ClientListWidget extends StatelessWidget {
  final List<ClientListEntity> managedMembers;
  final ClientListEntity? selectedClient;
  final bool isLoading;
  final String errorMessage;
  final Function(ClientListEntity) onClientSelected;

  const ClientListWidget({
    super.key,
    required this.managedMembers,
    required this.selectedClient,
    required this.isLoading,
    required this.errorMessage,
    required this.onClientSelected,
  });

  @override
  Widget build(BuildContext context) {
    // 매칭된 회원과 생성된 회원 분리
    final matchedMembers = managedMembers
        .where((member) => member.statusType == MatchingStatusType.matched)
        .toList();
    final createdMembers = managedMembers
        .where((member) => member.statusType == MatchingStatusType.created)
        .toList();

    return SizedBox(
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 매칭된 회원 섹션
            Visibility(
              visible: matchedMembers.isNotEmpty,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '매칭회원 ${matchedMembers.length}명',
                    style: SsentifTextStyles.medium14.copyWith(
                      color: AppColors.gray1,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...matchedMembers
                      .map((member) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: MatchedClientItem(
                              client: member,
                              isSelected: selectedClient == member,
                              onClickClientProfile: (clientId) {
                                // 회원 선택
                                onClientSelected(member);
                              },
                            ),
                          ))
                      .toList(),
                  const SizedBox(height: 25)
                ],
              ),
            ),
            // 생성된 회원 섹션
            Visibility(
              visible: createdMembers.isNotEmpty,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '생성회원 ${createdMembers.length}명',
                    style: SsentifTextStyles.medium14.copyWith(
                      color: AppColors.gray1,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...createdMembers
                      .map((member) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: CreatedClientItem(
                              client: member,
                              isSelected: selectedClient == member,
                              onClickMatch: () {
                                // TODO: 매칭 로직 구현
                              },
                              onClickClientProfile: (clientId) {
                                // 회원 선택
                                onClientSelected(member);
                              },
                            ),
                          ))
                      .toList(),
                ],
              ),
            ),
            // 로딩 상태 표시
            if (isLoading)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
