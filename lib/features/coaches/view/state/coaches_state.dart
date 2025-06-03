import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'coaches_state.freezed.dart';

@freezed
class CoachesState with _$CoachesState {
  const factory CoachesState({
    @Default([]) List<UserEntity> coaches,
    @Default(0) int selectedTabIdx,
    int? selectedUserId
  }) = _CoachesState;
}
