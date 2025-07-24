import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/shared/enumtype/work_position.dart';

import '../../../../core/widgets/profile_image_widget.dart';

class CoachListItem extends StatelessWidget {
  final UserEntity user;
  final bool selected;
  final bool isFirstItem;
  final VoidCallback onClick;
  const CoachListItem({
    super.key,
    required this.user,
    required this.selected,
    required this.isFirstItem,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 60,
        constraints: BoxConstraints(
          minWidth: 130,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: selected ? AppColors.backgroundTabSelected : Colors.white,
          border: selected ? Border.all(
            color: AppColors.green1899,
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside
          ) : null,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            // 프로필 이미지
            ProfileImageWidget(
                selected: selected,
                imageURL: user.imageUrl,
                showSelected: false,
            ),
            const SizedBox(width: 10),
            // 이름/직책
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  user.userName,
                  style: ScDreamStyles.medium14(AppColors.black),
                ),
                const SizedBox(height: 2),
                Text(
                  user.workPosition != null
                      ? Intl.message(user.workPosition!.getIntlKey())
                      : '',
                  style: ScDreamStyles.medium12(AppColors.gray2),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
