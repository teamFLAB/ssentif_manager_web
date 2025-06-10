import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/typography.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color? borderColor;
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final EdgeInsetsGeometry innerPadding;
  final bool stretchWidth;
  final double? fixedWidth;
  final bool enable;
  final List<BoxShadow>? boxShadow;
  final Function() onClick;

  const ClickableText(
      {
        super.key,
        required this.text,
        this.borderRadius = BorderRadius.zero,
        this.backgroundColor = AppColors.backgroundColor,
        required this.textStyle,
        this.textAlign = TextAlign.left,
        this.innerPadding = EdgeInsets.zero,
        this.stretchWidth = false,
        this.fixedWidth,
        this.enable = true,
        this.boxShadow,
        this.borderColor,
        required this.onClick
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(enable) onClick();
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          borderRadius: borderRadius,
          border: Border.all(
              color: borderColor ?? backgroundColor,
              width: 1
          ),
          color: backgroundColor,
        ),
        width: fixedWidth
            ?? (stretchWidth == true ? double.infinity : null),
        child: Padding(
          padding: innerPadding ?? const EdgeInsets.all(0),
          child: Text(
            text,
            style: textStyle,
            textAlign: textAlign,
          ),
        ),
      ),
    );
  }
}

