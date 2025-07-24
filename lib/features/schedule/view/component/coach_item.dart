import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';

class CoachItem extends StatelessWidget {
  final UserEntity coach;
  final bool selected;
  final VoidCallback? onTap;
  const CoachItem(
      {super.key, required this.coach, required this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: selected ? AppColors.backgroundTabSelected : AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected ? AppColors.green1899 : AppColors.gray4,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProfileImageWidget(
              imageURL: coach.imageUrl,
              size: 30,
              selected: false,
            ),
            const SizedBox(width: 6),
            Text(
              coach.userName,
              style: selected
                  ? SsentifTextStyles.bold18
                      .copyWith(color: AppColors.green1899)
                  : SsentifTextStyles.regular18
                      .copyWith(color: AppColors.black),
            ),
            const SizedBox(width: 5)
          ],
        ),
      ),
    );
  }
}
