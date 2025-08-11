import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'managed_members_state.freezed.dart';

@freezed
class ManagedMembersState with _$ManagedMembersState {
  const factory ManagedMembersState({
    UserEntity? selectedCoach,
    @Default([]) List<ClientListEntity> managedMembers,
    ClientListEntity? selectedClient,
    ClientProfileEntity? selectedClientProfile,
    ClientMonthlyCalendarEntity? selectedClientCalendar,
    @Default(false) bool isMembersLoading,
    @Default(false) bool isProfileLoading,
    @Default(false) bool isCalendarLoading,
    @Default("") String membersErrorMessage,
    @Default("") String calendarErrorMessage,
    required DateTime selectedMonth,
  }) = _ManagedMembersState;
}
