import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_client_profile_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_in_class_members_usecase.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/state/managed_members_state.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class ManagedMembersViewModel extends StateNotifier<ManagedMembersState> {
  final GetInClassMembersUseCase getInClassMembersUseCase;
  final GetClientProfileUseCase getClientProfileUseCase;

  ManagedMembersViewModel({
    required UserEntity? selectedCoach,
    required this.getInClassMembersUseCase,
    required this.getClientProfileUseCase,
  }) : super(ManagedMembersState(selectedCoach: selectedCoach)) {
    if (selectedCoach != null) {
      _loadMembers();
    }
  }

  void handleIntent(ManagedMembersIntent intent) {
    intent.when(
      loadMembers: () {
        _loadMembers();
      },
      selectClient: (client) {
        _selectClient(client);
      },
      loadClientProfile: (clientId) {
        _loadClientProfile(clientId);
      },
    );
  }

  void updateSelectedCoach(UserEntity? coach) {
    state = state.copyWith(selectedCoach: coach);
    if (coach != null) {
      _loadMembers();
    }
  }

  void _loadMembers() async {
    state = state.copyWith(isMembersLoading: true, membersErrorMessage: "");
    try {
      if (state.selectedCoach != null) {
        final result = await getInClassMembersUseCase(
            trainerId: state.selectedCoach?.userId ?? -1);
        result.handleStatus(
          onSuccess: (data) {
            state = state.copyWith(
              managedMembers: data ?? [],
              isMembersLoading: false,
            );
          },
          onError: (errCode, errMsg) {
            state = state.copyWith(
              isMembersLoading: false,
              membersErrorMessage: errMsg,
            );
          },
        );
      } else {
        state = state.copyWith(
          managedMembers: [],
          isMembersLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isMembersLoading: false,
        membersErrorMessage: "데이터를 불러오는 중 오류가 발생했습니다.",
      );
    }
  }

  void _selectClient(ClientListEntity client) {
    if (state.selectedClient?.clientId == client.clientId) {
      return;
    }
    state = state.copyWith(
      selectedClient: client,
      selectedClientProfile: null,
      isProfileLoading: false,
    );
    handleIntent(
        ManagedMembersIntent.loadClientProfile(
            clientId: client.clientId
        )
    );
  }

  Future<void> _loadClientProfile(int clientId) async {
    if (state.isProfileLoading) {
      return;
    }
    state = state.copyWith(isProfileLoading: true);
    try {
      final result = await getClientProfileUseCase(trainerId: state.selectedCoach?.userId ?? -1, clientId: clientId);
      result.handleStatus(
        onSuccess: (data) {
          print("data == >${data}");
          state = state.copyWith(
            selectedClientProfile: data,
            isProfileLoading: false,
          );
        },
        onError: (errCode, errMsg) {
          state = state.copyWith(
            selectedClientProfile: null,
            isProfileLoading: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        selectedClientProfile: null,
        isProfileLoading: false,
      );
    }
  }
}

final managedMembersViewModelProvider = StateNotifierProvider.family<
    ManagedMembersViewModel,
    ManagedMembersState,
    UserEntity?>((ref, selectedCoach) {
  final getInClassMembersUseCase = ref.read(getInClassMembersUseCaseProvider);
  final getClientProfileUseCase = ref.read(getClientProfileUseCaseProvider);
  return ManagedMembersViewModel(
    selectedCoach: selectedCoach,
    getInClassMembersUseCase: getInClassMembersUseCase,
    getClientProfileUseCase: getClientProfileUseCase,
  );
});
