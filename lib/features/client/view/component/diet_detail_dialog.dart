import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/generated/l10n.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/widgets/image_expand_dialog.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';
import 'package:ssentif_manager_web/features/client/view/viewmodel/diet_detail_view_model.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_time_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/ingredients_type.dart';
import '../../../../gen/assets.gen.dart';

class DietDetailDialog extends ConsumerWidget {
  final int clientId;
  final List<int> dietIds;
  final int initialDietId;

  const DietDetailDialog({
    super.key,
    required this.clientId,
    required this.dietIds,
    required this.initialDietId,
  });

  static void show(
    BuildContext context, {
    required int clientId,
    required List<int> dietIds,
    required int initialDietId,
  }) {
    showDialog(
      context: context,
      builder: (context) => DietDetailDialog(
        clientId: clientId,
        dietIds: dietIds,
        initialDietId: initialDietId,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final params = DietDetailParams(
      clientId: clientId,
      dietIds: dietIds,
      initialDietId: initialDietId,
    );
    final state = ref.watch(dietDetailViewModelProvider(params));
    final viewModel = ref.read(dietDetailViewModelProvider(params).notifier);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: 1200,
        constraints: const BoxConstraints(maxHeight: 700),
        padding: const EdgeInsets.all(24),
        color: AppColors.backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 헤더
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '식단 상세',
                  style: SsentifTextStyles.medium20.copyWith(
                    color: AppColors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 좌우 분할 영역
            Expanded(
              child: state.selectedDiet == null
                  ? const Center(child: CircularProgressIndicator())
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 좌측: 이미지 영역
                        Expanded(
                          child: SingleChildScrollView(
                            child: _buildDietImageView(
                              context: context,
                              diet: state.selectedDiet!,
                              isFirst: state.dietIds.isNotEmpty &&
                                  state.dietIds.first == state.selectedDietId,
                              isLast: state.dietIds.isNotEmpty &&
                                  state.dietIds.last == state.selectedDietId,
                              onPrevious: () => viewModel.selectPreviousDiet(),
                              onNext: () => viewModel.selectNextDiet(),
                            ),
                          ),
                        ),
                        // Divider
                        Container(
                          width: 1,
                          color: AppColors.gray3,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        // 우측: 메모 및 피드백 영역
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildClientMemo(
                                    context, state.selectedDiet!.memo),
                                _buildTrainerFeedback(
                                  diet: state.selectedDiet!,
                                  context: context,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDietImageView({
    required BuildContext context,
    required DietEntity diet,
    required bool isFirst,
    required bool isLast,
    required VoidCallback onPrevious,
    required VoidCallback onNext,
  }) {
    if (diet.dietImages.isEmpty) {
      return Container(
        width: double.infinity,
        height: 400,
        color: AppColors.gray4,
        child: const Center(
          child: Icon(
            Icons.restaurant,
            size: 80,
            color: AppColors.gray2,
          ),
        ),
      );
    }

    if (diet.dietImages.length == 1) {
      return _buildSingleImageView(
        context: context,
        diet: diet,
        isFirst: isFirst,
        isLast: isLast,
        onPrevious: onPrevious,
        onNext: onNext,
      );
    }

    return _buildMultipleImageView(
      context: context,
      diet: diet,
      isFirst: isFirst,
      isLast: isLast,
      onPrevious: onPrevious,
      onNext: onNext,
    );
  }

  Widget _buildSingleImageView({
    required BuildContext context,
    required DietEntity diet,
    required bool isFirst,
    required bool isLast,
    required VoidCallback onPrevious,
    required VoidCallback onNext,
  }) {
    final imageUrl = diet.dietImages.first.remoteUrl;
    return GestureDetector(
      onTap: () {
        if (imageUrl.isNotEmpty) {
          ImageExpandDialog.show(context, imageUrl: imageUrl);
        }
      },
      child: SizedBox(
        width: double.infinity,
        height: 400,
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 400,
                  color: AppColors.gray4,
                  child: const Icon(
                    Icons.restaurant,
                    size: 80,
                    color: AppColors.gray2,
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColors.blackAlpha50, AppColors.transparent],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#${_getMealTimeText(context, diet.mealTimeType)} #${_getMealTypeText(context, diet.mealType)}",
                    style: SsentifTextStyles.medium16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "${diet.mealTakeDate} ${diet.mealTakeTime}",
                    style: SsentifTextStyles.medium18.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            if (diet.dietFeedback?.totalTag != null &&
                diet.dietFeedback!.totalTag != FeedbackTagType.none)
              Positioned(
                bottom: 20,
                right: 15,
                child: Image.asset(
                  diet.dietFeedback!.totalTag.getTagSelectedImage(),
                  width: 60,
                  height: 60,
                  fit: BoxFit.fitWidth,
                ),
              ),
            if (!isFirst)
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: onPrevious,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: AppColors.blackAlpha30,
                      child: const Icon(
                        Icons.chevron_left,
                        color: AppColors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            if (!isLast)
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: onNext,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: AppColors.blackAlpha30,
                      child: const Icon(
                        Icons.chevron_right,
                        color: AppColors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMultipleImageView({
    required BuildContext context,
    required DietEntity diet,
    required bool isFirst,
    required bool isLast,
    required VoidCallback onPrevious,
    required VoidCallback onNext,
  }) {
    // 좌측 영역 너비: (1200 - 48 - 1 - 32) / 2 = 약 560
    final leftAreaWidth = (1200 - 48 - 1 - 32) / 2;
    final imageWidth = leftAreaWidth / 2;

    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDietImageItem(
                  context: context,
                  imageUrl: diet.dietImages.elementAtOrNull(0)?.remoteUrl ?? '',
                  width: imageWidth,
                  height: imageWidth,
                ),
                _buildDietImageItem(
                  context: context,
                  imageUrl: diet.dietImages.elementAtOrNull(1)?.remoteUrl ?? '',
                  width: imageWidth,
                  height: imageWidth,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDietImageItem(
                  context: context,
                  imageUrl: diet.dietImages.elementAtOrNull(2)?.remoteUrl ?? '',
                  width: imageWidth,
                  height: imageWidth,
                ),
                _buildDietImageItem(
                  context: context,
                  imageUrl: diet.dietImages.elementAtOrNull(3)?.remoteUrl ?? '',
                  width: imageWidth,
                  height: imageWidth,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "#${_getMealTimeText(context, diet.mealTimeType)} #${_getMealTypeText(context, diet.mealType)}",
                style: SsentifTextStyles.medium16.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                "${diet.mealTakeDate} ${diet.mealTakeTime}",
                style: SsentifTextStyles.medium18.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        if (diet.dietFeedback?.totalTag != null &&
            diet.dietFeedback!.totalTag != FeedbackTagType.none)
          Positioned(
            bottom: 20,
            right: 15,
            child: Image.asset(
              diet.dietFeedback!.totalTag.getTagSelectedImage(),
              width: 60,
              height: 60,
              fit: BoxFit.fitWidth,
            ),
          ),
        if (!isFirst)
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: onPrevious,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: AppColors.blackAlpha30,
                  child: const Icon(
                    Icons.chevron_left,
                    color: AppColors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
        if (!isLast)
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onNext,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: AppColors.blackAlpha30,
                  child: const Icon(
                    Icons.chevron_right,
                    color: AppColors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDietImageItem({
    required BuildContext context,
    required String imageUrl,
    required double width,
    required double height,
  }) {
    return GestureDetector(
      onTap: () {
        if (imageUrl.isNotEmpty) {
          ImageExpandDialog.show(context, imageUrl: imageUrl);
        }
      },
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: width,
                height: height,
                color: AppColors.gray4,
                child: const Icon(
                  Icons.restaurant,
                  size: 40,
                  color: AppColors.gray2,
                ),
              );
            },
          ),
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.blackAlpha50, AppColors.transparent],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientMemo(BuildContext context, String memo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            S.of(context).client_memo,
            style: SsentifTextStyles.medium14.copyWith(
              color: AppColors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 16, bottom: 20),
          child: Container(
              width: double.infinity,
              height: memo.isEmpty ? 80 : null,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.gray4),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Text(
                memo.isEmpty
                    ? S.of(context).not_exist_feedback_of_trainer
                    : memo,
                style: SsentifTextStyles.regular12.copyWith(
                  color: AppColors.gray1,
                ),
                textAlign: memo.isEmpty ? TextAlign.start : TextAlign.start,
              )),
        ),
      ],
    );
  }

  Widget _buildTrainerFeedback({
    required DietEntity diet,
    required BuildContext context,
  }) {
    final isEnglishSet = Localizations.localeOf(context).languageCode == 'en';
    final increaseTags = diet.dietFeedback?.increaseTags ?? [];
    final decreaseTags = diet.dietFeedback?.decreaseTags ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            S.of(context).feedback_of_trainer,
            style: SsentifTextStyles.medium14.copyWith(
              color: AppColors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 16),
          child: Container(
            width: double.infinity,
            height: diet.dietFeedback?.feedback != null &&
                    diet.dietFeedback!.feedback.isNotEmpty
                ? null
                : 80,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: AppColors.gray4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    diet.dietFeedback?.feedback != null &&
                            diet.dietFeedback!.feedback.isNotEmpty
                        ? diet.dietFeedback!.feedback
                        : S.of(context).not_exist_feedback_of_trainer,
                    style: SsentifTextStyles.regular12.copyWith(
                      color: AppColors.gray1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Increase Tags
        if (increaseTags.isNotEmpty) ...[
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.icAddIngredients.path,
                width: 22,
                height: 22,
              ),
              const SizedBox(width: 5),
              Text(
                S.of(context).eat_more,
                style: SsentifTextStyles.medium14.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: increaseTags.map((tagDto) {
              final ingredientType =
                  IngredientsType.findIngredientsType(tagDto);
              if (ingredientType == null) return const SizedBox.shrink();
              final tagImageAsset =
                  ingredientType.getSelectedTagImagePath(isEnglishSet);
              return Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Image.asset(
                  tagImageAsset,
                  width: 45,
                  fit: BoxFit.fitWidth,
                ),
              );
            }).toList(),
          ),
        ],
        // Decrease Tags
        if (decreaseTags.isNotEmpty) ...[
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.icReduceIngredients.path,
                width: 22,
                height: 22,
              ),
              const SizedBox(width: 5),
              Text(
                S.of(context).eat_less,
                style: SsentifTextStyles.medium14.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: decreaseTags.map((tagDto) {
              final ingredientType =
                  IngredientsType.findIngredientsType(tagDto);
              if (ingredientType == null) return const SizedBox.shrink();
              final tagImageAsset =
                  ingredientType.getSelectedTagImagePath(isEnglishSet);
              return Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Image.asset(
                  tagImageAsset,
                  width: 45,
                  fit: BoxFit.fitWidth,
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );
  }

  String _getMealTimeText(BuildContext context, MealTimeType mealTimeType) {
    final s = S.of(context);
    switch (mealTimeType) {
      case MealTimeType.breakfast:
        return s.breakfast;
      case MealTimeType.lunch:
        return s.lunch;
      case MealTimeType.dinner:
        return s.dinner;
      case MealTimeType.snack:
        return s.snack;
      case MealTimeType.midnightSnack:
        return s.midnight_snack;
    }
  }

  String _getMealTypeText(BuildContext context, MealType mealType) {
    final s = S.of(context);
    switch (mealType) {
      case MealType.normal:
        return s.normal;
      case MealType.cheat:
        return s.cheat;
      case MealType.diet:
        return s.diet;
      case MealType.instant:
        return s.instant;
    }
  }
}
