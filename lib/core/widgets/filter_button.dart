import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final TextStyle textStyle;

  const FilterButton({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selectedTextColor,
    required this.unselectedTextColor,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: selected ? selectedColor : unselectedColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          label,
          style: textStyle.copyWith(
            color: selected ? selectedTextColor : unselectedTextColor,
          ),
        ),
      ),
    );
  }
}
