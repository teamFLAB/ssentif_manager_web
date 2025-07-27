import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_client_profile_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_in_class_members_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_client_monthly_events_usecase.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/features/coaches/view/state/managed_members_state.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class ManagedMembersViewModel extends StateNotifier<ManagedMembersState> {
  final GetInClassMembersUseCase getInClassMembersUseCase;
  final GetClientProfileUseCase getClientProfileUseCase;
  final GetClientMonthlyEventsUseCase getClientMonthlyEventsUseCase;

  ManagedMembersViewModel({
    required UserEntity? selectedCoach,
    required this.getInClassMembersUseCase,
    required this.getClientProfileUseCase,
    required this.getClientMonthlyEventsUseCase,
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
      loadClientCalendar: (year, month, clientId) {
        _loadClientCalendar(year, month, clientId);
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

            if(data?.firstOrNull?.clientId != null) {
              _selectClient(data!.first);
            }
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
    print("sdafasfasfasfasf ${state.selectedClient?.clientId}");
    print("sdafasfasfasfasf ${client.clientId}");

    if (state.selectedClient?.clientId != null && state.selectedClient?.clientId == client.clientId) {
      return;
    }
    state = state.copyWith(
      selectedClient: client,
      selectedClientProfile: null,
      selectedClientCalendar: null,
      isProfileLoading: false,
      isCalendarLoading: false,
    );
    print("1243154312412341234");

    // 프로필과 캘린더를 동시에 로드
    handleIntent(
        ManagedMembersIntent.loadClientProfile(clientId: client.clientId));

    // 현재 월의 캘린더 데이터 로드
    final now = DateTime.now();
    handleIntent(ManagedMembersIntent.loadClientCalendar(
      year: now.year,
      month: now.month,
      clientId: client.clientId,
    ));
  }

  Future<void> _loadClientProfile(int clientId) async {
    if (state.isProfileLoading) {
      return;
    }
    state = state.copyWith(isProfileLoading: true);
    try {
      final result = await getClientProfileUseCase(
          trainerId: state.selectedCoach?.userId ?? -1, clientId: clientId);
      result.handleStatus(
        onSuccess: (data) {
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

  Future<void> _loadClientCalendar(int year, int month, int clientId) async {
    if (state.isCalendarLoading) {
      return;
    }
    state = state.copyWith(isCalendarLoading: true, calendarErrorMessage: "");
    try {
      final result = await getClientMonthlyEventsUseCase(
        trainerId: state.selectedCoach?.userId ?? -1,
        year: year,
        month: month,
        clientId: clientId,
      );
      result.handleStatus(
        onSuccess: (data) {
          state = state.copyWith(
            selectedClientCalendar: data,
            isCalendarLoading: false,
          );
        },
        onError: (errCode, errMsg) {
          state = state.copyWith(
            selectedClientCalendar: null,
            isCalendarLoading: false,
            calendarErrorMessage: errMsg,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        selectedClientCalendar: null,
        isCalendarLoading: false,
        calendarErrorMessage: "캘린더 데이터를 불러오는 중 오류가 발생했습니다.",
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
  final getClientMonthlyEventsUseCase =
      ref.read(getClientMonthlyEventsUseCaseProvider);
  return ManagedMembersViewModel(
    selectedCoach: selectedCoach,
    getInClassMembersUseCase: getInClassMembersUseCase,
    getClientProfileUseCase: getClientProfileUseCase,
    getClientMonthlyEventsUseCase: getClientMonthlyEventsUseCase,
  );
});
