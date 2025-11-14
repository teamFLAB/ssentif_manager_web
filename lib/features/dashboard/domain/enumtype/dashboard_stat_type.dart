import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

enum DashboardStatType {
  totalClassCount,
  recordWritingRate,
  reenrollmentRate,
  customerSatisfaction;

  String get category {
    switch (this) {
      case DashboardStatType.totalClassCount:
        return '총 수업 수';
      case DashboardStatType.recordWritingRate:
        return '일지 작성률';
      case DashboardStatType.reenrollmentRate:
        return '재등록률';
      case DashboardStatType.customerSatisfaction:
        return '고객 만족도';
    }
  }

  AssetGenImage get icon {
    switch (this) {
      case DashboardStatType.totalClassCount:
        return Assets.images.icTotalClassCount;
      case DashboardStatType.recordWritingRate:
        return Assets.images.icRecordsPercent;
      case DashboardStatType.reenrollmentRate:
        return Assets.images.icRepurchasePercent;
      case DashboardStatType.customerSatisfaction:
        return Assets.images.icSatisfactionPercent;
    }
  }

  String get unit {
    switch (this) {
      case DashboardStatType.totalClassCount:
        return '건';
      case DashboardStatType.recordWritingRate:
      case DashboardStatType.reenrollmentRate:
      case DashboardStatType.customerSatisfaction:
        return '%';
    }
  }

  Color get selectedColor {
    switch (this) {
      case DashboardStatType.totalClassCount:
        return AppColors.subColorBlue;
      case DashboardStatType.recordWritingRate:
        return AppColors.subColorRed;
      case DashboardStatType.reenrollmentRate:
        return AppColors.subColorGreen;
      case DashboardStatType.customerSatisfaction:
        return AppColors.subColorOrange;
    }
  }
}
