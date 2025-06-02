import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

class ScheduleHeader extends StatelessWidget {
  final DateTime selectedDate;
  final DateTime selectedMonth;
  final VoidCallback onPrevMonth;
  final VoidCallback onNextMonth;
  final VoidCallback onToday;
  final Function(String filterQuery) onSearchFilterChanged;
  const ScheduleHeader({
    super.key,
    required this.selectedDate,
    required this.selectedMonth,
    required this.onPrevMonth,
    required this.onNextMonth,
    required this.onToday,
    required this.onSearchFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = "${selectedMonth.year}년 ${selectedMonth.month}월";
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.grayE4, width: 1),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Row(
          children: [
            // Container(
            //   width: 200,
            //   alignment: Alignment.center,
            //   child: Text(
            //     '센터 일정 관리',
            //     style: ScDreamStyles.extraBold18(AppColors.black),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            Expanded(
              child: ScheduleSearchField(
                onChanged: onSearchFilterChanged,
              ),
            ),
            GestureDetector(
              onTap: onToday,
              child: Container(
                height: 32,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.primary, width: 1),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text(
                    '오늘',
                    style: ScDreamStyles.medium14(AppColors.primary),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onPrevMonth,
                  child: Assets.images.icButtonPrevious
                      .image(width: 34, height: 34),
                ),
                const SizedBox(width: 12),
                Text(
                  formattedDate,
                  style: ScDreamStyles.extraBold24(AppColors.black),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: onNextMonth,
                  child:
                      Assets.images.icButtonNext.image(width: 34, height: 34),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleSearchField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const ScheduleSearchField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      margin: const EdgeInsets.only(left: 20, right: 40),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        border: Border.all(color: AppColors.gray3, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
            Assets.images.icSearchGray.image(width: 20, height: 20),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              cursorColor: AppColors.primary,
              style: ScDreamStyles.medium14(AppColors.black),
              decoration: InputDecoration(
                hintText: '코치/회원 이름으로 검색',
                hintStyle: ScDreamStyles.extraLight14(AppColors.gray3),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.transparent,
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
