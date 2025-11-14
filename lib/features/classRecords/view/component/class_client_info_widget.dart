

import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/typography.dart';
import '../../../../core/widgets/profile_image_widget.dart';
import '../../../../shared/domain/entity/user_entity.dart';
import '../../../../shared/domain/entity/user_info_entity.dart';

class ClassClientInfoWidget extends StatelessWidget {
  final double profileImageSize;
  final UserEntity? clientInfo;
  final UserInfoEntity? groupClientInfo;

  const ClassClientInfoWidget({
    super.key,
    this.profileImageSize = 20,
    required this.clientInfo,
    required this.groupClientInfo
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImageWidget(
            size: profileImageSize,
            imageURL: clientInfo?.imageUrl
                ?? groupClientInfo?.imageUrl
                ?? ""
        ),
        const SizedBox(width: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              clientInfo?.userName
                  ?? groupClientInfo?.userName
                  ?? "",
              style: (profileImageSize == 20
                  ? SsentifTextStyles.medium16
                  : SsentifTextStyles.medium18).copyWith(
                color: AppColors.black,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              "회원",
              style: (profileImageSize == 20
                  ? SsentifTextStyles.medium12
                  : SsentifTextStyles.medium14).copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
