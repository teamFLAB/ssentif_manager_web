import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_diet_detail_by_id_usecase.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';
import '../state/diet_detail_state.dart';

final dietDetailViewModelProvider = StateNotifierProvider.autoDispose.family<
    DietDetailViewModel, DietDetailState, DietDetailParams>((ref, params) {
  final getDietDetailByIdUseCase =
      ref.read(getDietDetailByIdUseCaseProvider);
  return DietDetailViewModel(
    getDietDetailByIdUseCase: getDietDetailByIdUseCase,
    params: params,
  );
});

class DietDetailParams {
  final int clientId;
  final List<int> dietIds;
  final int initialDietId;

  DietDetailParams({
    required this.clientId,
    required this.dietIds,
    required this.initialDietId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DietDetailParams &&
          runtimeType == other.runtimeType &&
          clientId == other.clientId &&
          dietIds.length == other.dietIds.length &&
          initialDietId == other.initialDietId;

  @override
  int get hashCode =>
      clientId.hashCode ^ dietIds.length.hashCode ^ initialDietId.hashCode;
}

class DietDetailViewModel extends StateNotifier<DietDetailState> {
  final GetDietDetailByIdUseCase getDietDetailByIdUseCase;
  final DietDetailParams params;

  DietDetailViewModel({
    required this.getDietDetailByIdUseCase,
    required this.params,
  }) : super(DietDetailState(
          clientId: params.clientId,
          dietIds: params.dietIds,
          selectedDietId: params.initialDietId,
        )) {
    _loadDietDetail(params.initialDietId);
  }

  Future<void> _loadDietDetail(int dietId) async {
    final result = await getDietDetailByIdUseCase.call(
      dietId: dietId,
      clientId: params.clientId,
    );

    result.handleStatus(
      onSuccess: (data) {
        if (data == null) return;
        final updatedList = List<DietEntity>.from(state.dietList);
        final existingIndex =
            updatedList.indexWhere((d) => d.dietId == dietId);
        if (existingIndex >= 0) {
          updatedList[existingIndex] = data;
        } else {
          updatedList.add(data);
        }

        state = state.copyWith(
          selectedDiet: data,
          dietList: updatedList,
        );
      },
      onError: (errCode, errMsg) {
        // 에러 처리
      },
    );
  }

  void selectNextDiet() {
    final dietIds = state.dietIds;
    final currentIndex = dietIds.indexOf(state.selectedDietId);
    if (currentIndex < dietIds.length - 1) {
      final nextId = dietIds[currentIndex + 1];
      if (_isDietLoaded(nextId)) {
        state = state.copyWith(
          selectedDietId: nextId,
          selectedDiet: _findDiet(nextId),
        );
      } else {
        state = state.copyWith(selectedDietId: nextId);
        _loadDietDetail(nextId);
      }
    }
  }

  void selectPreviousDiet() {
    final dietIds = state.dietIds;
    final currentIndex = dietIds.indexOf(state.selectedDietId);
    if (currentIndex > 0) {
      final previousId = dietIds[currentIndex - 1];
      if (_isDietLoaded(previousId)) {
        state = state.copyWith(
          selectedDietId: previousId,
          selectedDiet: _findDiet(previousId),
        );
      } else {
        state = state.copyWith(selectedDietId: previousId);
        _loadDietDetail(previousId);
      }
    }
  }

  bool _isDietLoaded(int dietId) {
    return state.dietList.any((d) => d.dietId == dietId);
  }

  DietEntity _findDiet(int dietId) {
    return state.dietList.firstWhere((d) => d.dietId == dietId);
  }

  void updateFeedbackTotalTag(FeedbackTagType type) {
    final selectedDiet = state.selectedDiet;
    if (selectedDiet == null) return;
    final feedback = selectedDiet.dietFeedback;
    state = state.copyWith(
      selectedDiet: selectedDiet.copyWith(
        dietFeedback: feedback?.copyWith(totalTag: type) ??
            DietFeedbackEntity(totalTag: type),
      ),
    );
  }

  void updateTextFeedback(String textFeedback) {
    final selectedDiet = state.selectedDiet;
    if (selectedDiet == null) return;
    final feedback = selectedDiet.dietFeedback;
    state = state.copyWith(
      selectedDiet: selectedDiet.copyWith(
        dietFeedback: feedback?.copyWith(feedback: textFeedback) ??
            DietFeedbackEntity(feedback: textFeedback),
      ),
    );
  }
}

