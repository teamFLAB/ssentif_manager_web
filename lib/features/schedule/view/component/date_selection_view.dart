import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/shared/enumtype/calendar_type.dart';

class DateSelectionView extends StatelessWidget {
  final DateTime selectedDate;
  final String calendarDate;
  final VoidCallback onClickPrev;
  final VoidCallback onClickNext;
  final VoidCallback onClickToday;
  final CalendarType selectedCalendarType;
  final Function(CalendarType type) onSelectCalendarType;
  const DateSelectionView({
    super.key,
    required this.selectedDate,
    required this.calendarDate,
    required this.onClickPrev,
    required this.onClickNext,
    required this.onClickToday,
    required this.selectedCalendarType,
    required this.onSelectCalendarType,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = calendarDate;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Text(
              formattedDate,
              style:
                  SsentifTextStyles.medium24.copyWith(color: AppColors.black),
            ),
            const SizedBox(width: 24),
            GestureDetector(
              onTap: onClickToday,
              child: Assets.images.icTodayButton.image(height: 26),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: onClickPrev,
              child:
                  Assets.images.icPreviousButton.image(width: 26, height: 26),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: onClickNext,
              child: Assets.images.icNextButton.image(width: 26, height: 26),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => onSelectCalendarType(CalendarType.daily),
              child: selectedCalendarType == CalendarType.daily
                  ? Assets.images.icDaySelected.image(height: 26)
                  : Assets.images.icDayUnselected.image(height: 26),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => onSelectCalendarType(CalendarType.monthly),
              child: selectedCalendarType == CalendarType.monthly
                  ? Assets.images.icMonthSelected.image(height: 26)
                  : Assets.images.icMonthUnselected.image(height: 26),
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
              style: SsentifTextStyles.medium14.copyWith(color: AppColors.black),
              decoration: InputDecoration(
                hintText: '코치/회원 이름으로 검색',
                hintStyle: SsentifTextStyles.regular14.copyWith(color: AppColors.gray3),
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
