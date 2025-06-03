import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/shared/enumtype/work_position.dart';

class CoachListItem extends StatelessWidget {
  final UserEntity user;
  final bool selected;
  final VoidCallback onClick;
  const CoachListItem({
    super.key,
    required this.user,
    required this.selected,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 55,
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.gray3,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            // 프로필 이미지
            ClipOval(
              child: user.imageUrl.isNotEmpty
                  ? Image.network(
                      user.imageUrl,
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: 35,
                      height: 35,
                      color: AppColors.gray3,
                      child: Icon(Icons.person, color: AppColors.gray1, size: 28),
                    ),
            ),
            const SizedBox(width: 20),
            // 이름/직책
            Expanded(
              child: Column(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
