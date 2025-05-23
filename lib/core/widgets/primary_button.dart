import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/typography.dart';


class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double borderRadius;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 56,
    this.textStyle = const GmarketSansStyles.bold18(AppColors.white),
    this.backgroundColor = AppColors.primary,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
