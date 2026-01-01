import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';

enum DashboardStatType {
  newlyRegistration,
  reenrollment,
  totalClassCount,
  recordWritingRate,
  customerSatisfaction;

  String get category {
    switch (this) {
      case DashboardStatType.newlyRegistration:
        return '신규등록 수';
      case DashboardStatType.totalClassCount:
        return '총 수업 수';
      case DashboardStatType.recordWritingRate:
        return '일지 작성률';
      case DashboardStatType.reenrollment:
        return '재등록 수';
      case DashboardStatType.customerSatisfaction:
        return '고객 만족도';
    }
  }

  AssetGenImage get icon {
    switch (this) {
      case DashboardStatType.newlyRegistration:
        return Assets.images.icNewlyRegist;
      case DashboardStatType.totalClassCount:
        return Assets.images.icTotalClassCount;
      case DashboardStatType.recordWritingRate:
        return Assets.images.icRecordsPercent;
      case DashboardStatType.reenrollment:
        return Assets.images.icRepurchasePercent;
      case DashboardStatType.customerSatisfaction:
        return Assets.images.icSatisfactionPercent;
    }
  }

  String get unit {
    switch (this) {
      case DashboardStatType.totalClassCount:
      case DashboardStatType.reenrollment:
      case DashboardStatType.newlyRegistration:
        return '건';
      case DashboardStatType.recordWritingRate:
      case DashboardStatType.customerSatisfaction:
        return '%';
    }
  }

  Color get selectedColor {
    switch (this) {
      case DashboardStatType.newlyRegistration:
        return AppColors.newlyRegistrationSelected;
      case DashboardStatType.totalClassCount:
        return AppColors.subColorBlue;
      case DashboardStatType.recordWritingRate:
        return AppColors.subColorRed;
      case DashboardStatType.reenrollment:
        return AppColors.subColorGreen;
      case DashboardStatType.customerSatisfaction:
        return AppColors.subColorOrange;
    }
  }

  Color get selectedBgColor {
    switch (this) {
      case DashboardStatType.newlyRegistration:
        return AppColors.newlyRegistrationBg;
      case DashboardStatType.totalClassCount:
        return AppColors.classCountBg;
      case DashboardStatType.recordWritingRate:
        return AppColors.routineRatioBg;
      case DashboardStatType.reenrollment:
        return AppColors.reenrollmentBg;
      case DashboardStatType.customerSatisfaction:
        return AppColors.satisfactionBg;
    }
  }
}
