import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_in_class_members_usecase.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/state/managed_members_state.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

final managedMembersViewModelProvider = StateNotifierProvider.autoDispose
    .family<ManagedMembersViewModel, ManagedMembersState,
        ({UserEntity? selectedCoach})>((ref, params) {
  final getInClassMembersUseCase = ref.read(getInClassMembersUseCaseProvider);
  return ManagedMembersViewModel(
    getInClassMembersUseCase: getInClassMembersUseCase,
    selectedCoach: params.selectedCoach,
  );
});

class ManagedMembersViewModel extends StateNotifier<ManagedMembersState> {
  final GetInClassMembersUseCase getInClassMembersUseCase;
  final UserEntity? selectedCoach;

  ManagedMembersViewModel({
    required this.getInClassMembersUseCase,
    this.selectedCoach,
  }) : super(ManagedMembersState(selectedCoach: selectedCoach)) {
    _loadMembers();
  }

  void handleIntent(ManagedMembersIntent intent) {
    intent.when(
      searchMembers: (String keyword) {
        _searchMembers(keyword);
      },
      toggleMatchedClients: (bool onlyMatched) {
        _toggleMatchedClients(onlyMatched);
      },
      clickMemberProfile: (ClientListEntity member) {
        _clickMemberProfile(member);
      },
    );
  }

  void _searchMembers(String keyword) {
    state = state.copyWith(searchKeyword: keyword);
    _loadMembers();
  }

  void _toggleMatchedClients(bool onlyMatched) {
    state = state.copyWith(onlyMatchedClients: onlyMatched);
    _loadMembers();
  }

  void _clickMemberProfile(ClientListEntity member) {
    // TODO: 회원 프로필 상세 페이지로 이동 로직 구현
    print('Clicked member profile: ${member.userName}');
  }

  Future<void> _loadMembers() async {
    print("statetet = ${selectedCoach?.userId}");
    state = state.copyWith(isLoading: true, errorMessage: "");

    try {
      // selectedCoach가 있을 때만 API 호출
      if (selectedCoach != null) {
        final result = await getInClassMembersUseCase(trainerId: selectedCoach?.userId ?? -1);

        result.handleStatus(
          onSuccess: (data) {
            state = state.copyWith(
              managedMembers: data ?? [],
              isLoading: false,
            );
          },
          onError: (errCode, errMsg) {
            state = state.copyWith(
              isLoading: false,
              errorMessage: errMsg,
            );
          },
        );
      } else {
        // selectedCoach가 없으면 빈 리스트로 설정
        state = state.copyWith(
          managedMembers: [],
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: "데이터를 불러오는 중 오류가 발생했습니다.",
      );
    }
  }
}
