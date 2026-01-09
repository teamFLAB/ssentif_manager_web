import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class TypeCountWidget extends StatelessWidget {
  final Color color;
  final String typeText;
  final int count;

  const TypeCountWidget({
    super.key,
    required this.color,
    required this.typeText,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          typeText,
          style: SsentifTextStyles.medium14(context).copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '${count}회',
          style: SsentifTextStyles.medium14(context).copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
