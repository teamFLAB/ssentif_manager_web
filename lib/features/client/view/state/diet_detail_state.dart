import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';

part 'diet_detail_state.freezed.dart';

@freezed
class DietDetailState with _$DietDetailState {
  const factory DietDetailState({
    @Default(-1) int selectedDietId,
    @Default(-1) int clientId,
    @Default([]) List<int> dietIds,
    @Default([]) List<DietEntity> dietList,
    DietEntity? selectedDiet,
    @Default(false) bool isTrainer,
  }) = _DietDetailState;
}

