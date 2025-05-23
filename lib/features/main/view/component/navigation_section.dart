import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

import '../../../../gen/assets.gen.dart';

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
    return Container(
      width: 200,
      color: AppColors.blackNavy,
      height: double.infinity,
      child: Column(
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
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                gymName,
                style: ScDreamStyles.extraBold20(AppColors.white),
              ),
            ),
          ),
          SizedBox(height: 15),
          ...NavigationSectionType.values.map((type) {
            final bool selected = type == selectedSection;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () => onSectionSelected(type),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: selected ? AppColors.primary : AppColors.blackNavy,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      (selected ? type.selectedIcon : type.unSelectedIcon)
                          .image(),
                      SizedBox(width: 12),
                      Text(
                        type.label,
                        style: ScDreamStyles.medium16(
                          selected ? AppColors.blackNavy : AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
