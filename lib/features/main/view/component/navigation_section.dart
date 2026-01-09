import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/device_size_utils.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

class NavigationSection extends StatelessWidget {
  final String gymName;
  final NavigationSectionType selectedSection;
  final ValueChanged<NavigationSectionType> onSectionSelected;
  const NavigationSection({
    super.key,
    required this.gymName,
    required this.selectedSection,
    required this.onSectionSelected,
  });

  @override
  Widget build(BuildContext context) {
    final navigationWidth =
        DeviceSizeUtils().getResponsiveSize(240, 35, context);
    final itemHeight = DeviceSizeUtils().getResponsiveSize(48, 2, context);
    final iconSize = DeviceSizeUtils().getResponsiveSize(24, 2, context);

    return Container(
      width: navigationWidth,
      color: AppColors.backgroundColor,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.white),
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                gymName,
                style: SsentifTextStyles.bold20(context)
                    .copyWith(color: AppColors.gray555),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                border: Border(
                  right: BorderSide(color: AppColors.grayE4, width: 1),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 15),
                  ...NavigationSectionType.values.map((type) {
                    final bool selected = type == selectedSection;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () => onSectionSelected(type),
                        child: Container(
                          height: itemHeight,
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.backgroundTabSelected
                                : AppColors.backgroundColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              (selected
                                      ? type.selectedIcon
                                      : type.unSelectedIcon)
                                  .image(width: iconSize, height: iconSize),
                              SizedBox(width: 12),
                              Text(
                                type.label,
                                style: SsentifTextStyles.regular16(context)
                                    .copyWith(
                                  color: selected
                                      ? AppColors.backgroundTabSelectedText
                                      : AppColors.gray1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
