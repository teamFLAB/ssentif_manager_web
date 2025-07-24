import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';

part 'managed_members_intent.freezed.dart';

@freezed
sealed class ManagedMembersIntent with _$ManagedMembersIntent {
  const factory ManagedMembersIntent.searchMembers({required String keyword}) =
      _SearchMembers;
  const factory ManagedMembersIntent.toggleMatchedClients(
      {required bool onlyMatched}) = _ToggleMatchedClients;
  const factory ManagedMembersIntent.clickMemberProfile(
      {required ClientListEntity member}) = _ClickMemberProfile;
}
