import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';

part 'managed_members_intent.freezed.dart';

@freezed
sealed class ManagedMembersIntent with _$ManagedMembersIntent {
  const factory ManagedMembersIntent.loadMembers() = _LoadMembers;
  const factory ManagedMembersIntent.selectClient(
      {required ClientListEntity client}) = _SelectClient;
  const factory ManagedMembersIntent.loadClientProfile(
      {required int clientId}) = _LoadClientProfile;
  const factory ManagedMembersIntent.loadClientCalendar({
    required int year,
    required int month,
    required int clientId,
  }) = _LoadClientCalendar;
}
