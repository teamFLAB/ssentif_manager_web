import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class EventLabelWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color backgroundColor;

  EventLabelWidget({
    super.key,
    required this.text,
    this.textStyle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        text,
        style: (textStyle ?? SsentifTextStyles.regular18(context)).copyWith(
          color: AppColors.white,
        ),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}
