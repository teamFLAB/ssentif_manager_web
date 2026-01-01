import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class TrainerRankingItem extends StatelessWidget {
  final UserEntity trainer;
  final int count;
  final Color? backgroundColor;
  final String suffix;

  const TrainerRankingItem({
    super.key,
    required this.trainer,
    required this.count,
    this.backgroundColor,
    this.suffix = "건"
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ProfileImageWidget(
            size: 28,
            imageURL: trainer.imageUrl,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              trainer.userName,
              style: SsentifTextStyles.medium14.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          Text(
            '$count$suffix',
            style: SsentifTextStyles.medium14.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

