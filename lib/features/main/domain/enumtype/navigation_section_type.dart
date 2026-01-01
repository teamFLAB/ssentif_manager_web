import 'package:ssentif_manager_web/gen/assets.gen.dart';

enum NavigationSectionType {
  dashBoard,
  schedule, // 일정관리
  coach, // 직원관리
  classRecords, //수업일지 피드
  // revenue, // 매출 관리 (준비중)
  // setting // 설정
}

extension NavigationSectionTypeExtension on NavigationSectionType {
  String get label {
    switch (this) {
      case NavigationSectionType.schedule:
        return '일정 관리';
      case NavigationSectionType.coach:
        return '직원 관리';
      case NavigationSectionType.dashBoard:
        return '센터 대시보드';
      case NavigationSectionType.classRecords:
        return '수업일지 피드';
      // case NavigationSectionType.revenue:
      //   return '매출 관리 (준비중)';
      // case NavigationSectionType.setting:
      //   return '설정';
    }
  }

  AssetGenImage get unSelectedIcon {
    switch (this) {
      case NavigationSectionType.schedule:
        return Assets.images.tabDashboardUnselected;
      case NavigationSectionType.coach:
        return Assets.images.tabStaffUnselected;
      case NavigationSectionType.dashBoard:
        return Assets.images.tabHomeUnselected;
      case NavigationSectionType.classRecords:
        return Assets.images.tabSessionUnselected;
      // case NavigationSectionType.revenue:
      //   return Assets.images.tabIncomeUnselected;
      // case NavigationSectionType.setting:
      //   return Assets.images.tabSettingUnselected;
    }
  }

  AssetGenImage get selectedIcon {
    switch (this) {
      case NavigationSectionType.schedule:
        return Assets.images.tabDashboardSelected;
      case NavigationSectionType.coach:
        return Assets.images.tabStaffSelected;
      case NavigationSectionType.dashBoard:
        return Assets.images.tabHomeSelected;
      case NavigationSectionType.classRecords:
        return Assets.images.tabSessionSelected;
      // case NavigationSectionType.revenue:
      //   return Assets.images.tabIncomeSelected;
      // case NavigationSectionType.setting:
      //   return Assets.images.tabSettingSelected;
    }
  }
}
