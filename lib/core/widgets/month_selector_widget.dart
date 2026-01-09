import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';
import '../../gen/assets.gen.dart';

class MonthSelectorWidget extends StatelessWidget {
  final DateTime selectedMonth;
  final VoidCallback onThisMonth;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;
  final TextStyle? monthTextStyle;
  final double? leftPadding;
  final double? buttonSize;

  const MonthSelectorWidget({
    super.key,
    required this.selectedMonth,
    required this.onThisMonth,
    required this.onPreviousMonth,
    required this.onNextMonth,
    this.monthTextStyle,
    this.leftPadding,
    this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          DateFormat('yyyy년 MM월').format(selectedMonth),
          style: monthTextStyle ??
              SsentifTextStyles.medium18(context).copyWith(
                color: AppColors.black,
              ),
        ),
        const SizedBox(width: 12),
        // 이번달 버튼
        GestureDetector(
          onTap: onThisMonth,
          child: Container(
            height: DeviceSizeUtils().getResponsiveDouble(22, 3, context),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: AppColors.gray4,
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Text(
              '이번달',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.gray555,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // 이전 버튼
        GestureDetector(
          onTap: onPreviousMonth,
          child: Assets.images.icPreviousButton.image(
            width: buttonSize ?? DeviceSizeUtils().getResponsiveDouble(22, 3, context),
            height: buttonSize ?? DeviceSizeUtils().getResponsiveDouble(22, 3, context),
          ),
        ),
        const SizedBox(width: 10),
        // 다음 버튼
        GestureDetector(
          onTap: onNextMonth,
          child: Assets.images.icNextButton.image(
            width: buttonSize ?? DeviceSizeUtils().getResponsiveDouble(22, 3, context),
            height: buttonSize ?? DeviceSizeUtils().getResponsiveDouble(22, 3, context),
          ),
        ),
      ],
    );
  }
}
