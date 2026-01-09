import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';

class ScheduleStatBox extends StatelessWidget {
  final String title;
  final String value;
  const ScheduleStatBox({super.key, required this.title, required this.value});

  Widget _buildPrefix(BuildContext context) {
    var iconSize = DeviceSizeUtils().getResponsiveDouble(14, 2, context);
    if (title == '전체 수업') {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: iconSize,
            height: iconSize,
            decoration: BoxDecoration(
              color: AppColors.subColorBlue,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            '+',
            style: SsentifTextStyles.medium10(context).copyWith(color: AppColors.gray2),
          ),
          const SizedBox(width: 4),
          Container(
            width: iconSize,
            height: iconSize,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      );
    } else if (title == '출석 완료') {
      return Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: AppColors.subColorBlue,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '예약 완료') {
      return Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '예약 요청') {
      return Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: AppColors.subColorOrange,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '기타 일정') {
      return Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: AppColors.gray3,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    var boxWidth = DeviceSizeUtils().getResponsiveDouble(170, 15, context);


    return Container(
      width: boxWidth,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
            DeviceSizeUtils().getResponsiveDouble(8, 2, context)
        ),
      ),
      padding: EdgeInsets.symmetric(
          vertical: DeviceSizeUtils().getResponsiveDouble(12, 3, context),
          horizontal: DeviceSizeUtils().getResponsiveDouble(15, 3, context)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildPrefix(context),
              SizedBox(width: DeviceSizeUtils().getResponsiveDouble(5, 1, context)),
              Text(
                title,
                style:
                    SsentifTextStyles.medium14(context).copyWith(color: AppColors.gray2),
              ),
            ],
          ),
          SizedBox(width: DeviceSizeUtils().getResponsiveDouble(10, 1, context)),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              value + " 건",
              style: SsentifTextStyles.bold18(context).copyWith(color: AppColors.black),
            ),
          ),
        ],
      ),
    );
  }
}
