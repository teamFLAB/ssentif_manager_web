import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/member_review_list_widget.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

class ReviewStatusFilterWidget extends StatelessWidget {
  final ReviewStatusFilter selectedStatus;
  final ValueChanged<ReviewStatusFilter> onStatusChanged;

  const ReviewStatusFilterWidget({
    super.key,
    required this.selectedStatus,
    required this.onStatusChanged,
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
      child: DropdownButton<ReviewStatusFilter>(
        value: selectedStatus,
        underline: const SizedBox.shrink(),
        isDense: true,
        icon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Assets.images.icFilterArrow.image(
            width: 16,
            height: 16,
          ),
        ),
        menuMaxHeight: 200,
        alignment: AlignmentDirectional.bottomStart,
        items: ReviewStatusFilter.values.map((status) {
          return DropdownMenuItem<ReviewStatusFilter>(
            value: status,
            child: Text(
              status.label,
              style: SsentifTextStyles.regular12(context).copyWith(
                color: AppColors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            onStatusChanged(value);
          }
        },
      ),
    );
  }
}
