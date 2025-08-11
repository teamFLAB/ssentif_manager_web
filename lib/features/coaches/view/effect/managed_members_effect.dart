
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'managed_members_effect.freezed.dart';


final managedMembersEffectProvider =
StateProvider.autoDispose<ManagedMembersEffect?>((ref) => null);

@freezed
class ManagedMembersEffect with _$ManagedMembersEffect {
  const factory ManagedMembersEffect.navToLogin() = _NavToLogin;
}
