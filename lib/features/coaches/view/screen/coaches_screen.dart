import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class CoachesScreen extends StatelessWidget {
  const CoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.grayE4, width: 1),
            ),
          ),
          alignment: Alignment.centerLeft,
          child: const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              '근무중인 코치',
              style: ScDreamStyles.extraBold18(AppColors.black),
            ),
          ),
        ),
        // 추가 컨텐츠 영역
        Expanded(child: Container()),
      ],
    );
  }
}
