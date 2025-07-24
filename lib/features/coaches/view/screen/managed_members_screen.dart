import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/client/view/component/matched_client_item.dart';
import 'package:ssentif_manager_web/features/client/view/component/created_client_item.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/managed_members_view_model.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class ManagedMembersScreen extends ConsumerStatefulWidget {
  final UserEntity? selectedCoach;

  const ManagedMembersScreen({
    super.key,
    this.selectedCoach,
  });

  @override
  ConsumerState<ManagedMembersScreen> createState() =>
      _ManagedMembersScreenState();
}

class _ManagedMembersScreenState extends ConsumerState<ManagedMembersScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModelProvider =
        managedMembersViewModelProvider((selectedCoach: widget.selectedCoach));
    final state = ref.watch(viewModelProvider);
    final viewModel = ref.read(viewModelProvider.notifier);

    // 매칭된 회원과 생성된 회원 분리
    final matchedMembers = state.managedMembers
        .where((member) => member.statusType == MatchingStatusType.matched)
        .toList();
    final createdMembers = state.managedMembers
        .where((member) => member.statusType == MatchingStatusType.created)
        .toList();

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          // 상단 헤더
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 좌측: 스크롤뷰 (고정 너비 400px)
                  SizedBox(
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 매칭된 회원 섹션
                        Visibility(
                          visible: matchedMembers.isNotEmpty,
                          child: Text(
                            '매칭회원 ${matchedMembers.length}명',
                            style: SsentifTextStyles.medium14.copyWith(
                              color: AppColors.gray1,
                            ),
                          ),
                        ),
                        Visibility(
                            visible: matchedMembers.isNotEmpty,
                            child: const SizedBox(height: 12)
                        ),
                        ...matchedMembers
                            .map((member) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: MatchedClientItem(
                            client: member,
                            onClickClientProfile: (clientId) {
                              viewModel.handleIntent(
                                ManagedMembersIntent.clickMemberProfile(
                                    member: member),
                              );
                            },
                          ),
                        )).toList(),
                        Visibility(
                            visible: matchedMembers.isNotEmpty,
                            child: const SizedBox(height: 40)
                        ),

                        // 생성된 회원 섹션
                        Visibility(
                          visible: createdMembers.isNotEmpty,
                          child: Text(
                            '생성회원 ${createdMembers.length}명',
                            style: SsentifTextStyles.medium14.copyWith(
                              color: AppColors.gray1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ...createdMembers
                            .map((member) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: CreatedClientItem(
                            client: member,
                            onClickMatch: () {
                              // TODO: 매칭 로직 구현
                            },
                            onClickClientProfile: (clientId) {
                              viewModel.handleIntent(
                                ManagedMembersIntent.clickMemberProfile(
                                    member: member),
                              );
                            },
                          ),
                        ))
                            .toList(),

                        // 로딩 상태 표시
                        if (state.isLoading)
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: CircularProgressIndicator(),
                            ),
                          ),

                        // 에러 메시지 표시
                        if (state.errorMessage.isNotEmpty)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                state.errorMessage,
                                style: SsentifTextStyles.regular14.copyWith(
                                  color: AppColors.subColorRed,
                                ),
                              ),
                            ),
                          ),
                      ],
                    )
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

                  // 우측: 흰색 Container (나머지 공간 차지)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '선택된 회원의 코칭현황',
                          style: SsentifTextStyles.medium14.copyWith(
                            color: AppColors.gray1,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // TODO: 우측 영역 내용 추가
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
