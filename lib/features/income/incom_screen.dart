

import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/typography.dart';
import '../../gen/assets.gen.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "매출 관리 (준비중)",
              style: SsentifTextStyles.medium24.copyWith(color: AppColors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              height: 350,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.gray4),
              ),
              child: Text(
                '센터 매출 통계 페이지가 곧 제공될 예정이예요!',
                style: SsentifTextStyles.regular16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
