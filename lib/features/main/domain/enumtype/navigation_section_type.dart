import 'package:ssentif_manager_web/gen/assets.gen.dart';

enum NavigationSectionType {
  schedule, // 일정관리
  coach, // 코치
  analysis, // 분석
}

extension NavigationSectionTypeExtension on NavigationSectionType {
  String get label {
    switch (this) {
      case NavigationSectionType.schedule:
        return '일정관리';
      case NavigationSectionType.coach:
        return '코치';
      case NavigationSectionType.analysis:
        return '분석';
    }
  }

  AssetGenImage get unSelectedIcon {
    switch (this) {
      case NavigationSectionType.schedule:
        return Assets.images.icCalWhite;
      case NavigationSectionType.coach:
        return Assets.images.icCoachesWhite;
      case NavigationSectionType.analysis:
        return Assets.images.icStatisticsWhite;
    }
  }

  AssetGenImage get selectedIcon {
    switch (this) {
      case NavigationSectionType.schedule:
        return Assets.images.icCalBlack;
      case NavigationSectionType.coach:
        return Assets.images.icCoachesBlack;
      case NavigationSectionType.analysis:
        return Assets.images.icStatisticsBlack;
    }
  }
}
