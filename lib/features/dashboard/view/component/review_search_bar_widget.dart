import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

class ReviewSearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const ReviewSearchBarWidget({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 280,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray3, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Assets.images.icSearchGray.image(
            width: 20,
            height: 20,
            color: AppColors.black,
            colorBlendMode: BlendMode.srcIn,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: AppColors.primary,
              style: SsentifTextStyles.regular14.copyWith(
                color: AppColors.black,
              ),
              decoration: InputDecoration(
                hintText: '강사명, 회원명, 내용으로 검색',
                hintStyle: SsentifTextStyles.regular14.copyWith(
                  color: AppColors.gray3,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.transparent,
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}



