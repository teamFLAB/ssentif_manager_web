
import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

class ProfileImageWidget extends StatelessWidget {
  final double size;
  final bool selected;
  final String imageURL;

  const ProfileImageWidget({
    super.key,
    this.size = 35,
    this.selected = false,
    required this.imageURL
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: selected
          ? AppColors.primary
          : AppColors.transparent,
      child:imageURL == Constants.dummyProfileImgUrl || imageURL.isEmpty ?
      Image.asset(
          width: size,
          height: size,
          Assets.images.icSsentifProfile.path,
        fit: BoxFit.cover,
      ) : Image.network(
        imageURL,
        width: size,
        height: size,
        fit: BoxFit.cover,
      )
    );
  }
}
