import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class ScheduleStatBox extends StatelessWidget {
  final String title;
  final String value;
  const ScheduleStatBox({super.key, required this.title, required this.value});

  Widget _buildPrefix() {
    if (title == '전체 수업수') {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.subColorBlue,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            '+',
            style: SsentifTextStyles.medium12.copyWith(color: AppColors.gray2),
          ),
          const SizedBox(width: 4),
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      );
    } else if (title == '출석 완료') {
      return Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: AppColors.subColorBlue,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '예약 완료') {
      return Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '예약 요청') {
      return Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: AppColors.subColorOrange,
          borderRadius: BorderRadius.circular(2),
        ),
      );
    } else if (title == '기타 일정') {
      return Container(
        width: 16,
        height: 16,
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
    return Container(
      width: 180, // 긴 텍스트도 잘리지 않도록 width를 180으로 늘림
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildPrefix(),
              const SizedBox(width: 6),
              Text(
                title,
                style:
                    SsentifTextStyles.medium16.copyWith(color: AppColors.gray2),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: SsentifTextStyles.bold24.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
