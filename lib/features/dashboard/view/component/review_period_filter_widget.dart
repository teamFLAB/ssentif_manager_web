import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/member_review_list_widget.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

class ReviewPeriodFilterWidget extends StatelessWidget {
  final ReviewPeriodFilter selectedPeriod;
  final ValueChanged<ReviewPeriodFilter> onPeriodChanged;

  const ReviewPeriodFilterWidget({
    super.key,
    required this.selectedPeriod,
    required this.onPeriodChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray3),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: DropdownButton<ReviewPeriodFilter>(
        value: selectedPeriod,
        underline: const SizedBox.shrink(),
        isDense: true,
        icon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Assets.images.icFilterArrow.image(
            width: 16,
            height: 16,
          ),
        ),
        selectedItemBuilder: (BuildContext context) {
          return ReviewPeriodFilter.values.map((period) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.icFilterCalendar.image(
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  period.label,
                  style: SsentifTextStyles.regular12.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            );
          }).toList();
        },
        menuMaxHeight: 200,
        alignment: AlignmentDirectional.bottomStart,
        items: ReviewPeriodFilter.values.map((period) {
          return DropdownMenuItem<ReviewPeriodFilter>(
            value: period,
            child: Text(
              period.label,
              style: SsentifTextStyles.regular12.copyWith(
                color: AppColors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            onPeriodChanged(value);
          }
        },
      ),
    );
  }
}
