
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

import '../themes/app_colors.dart';

extension ContextUtils on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
          backgroundColor: AppColors.blackAlpha50,
          content: Text(
              message,
              style: SsentifTextStyles.medium14(this).copyWith(color: AppColors.white)
          )
      ),
    );
  }
}