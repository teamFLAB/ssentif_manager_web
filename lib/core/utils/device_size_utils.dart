import 'package:flutter/material.dart';

/// 기기 사이즈를 판별하는 Singleton 유틸리티 클래스
///
/// 사용법:
/// ```dart
/// // 방법 1: 초기화 후 context 없이 사용 (웹 사이즈 변경 감지 안됨)
/// DeviceSizeUtils().setContext(context);
/// if (DeviceSizeUtils().isDesktop(null)) { ... }
///
/// // 방법 2: 매번 context 전달 (웹 사이즈 변경 실시간 감지) - 권장
/// if (DeviceSizeUtils().isDesktop(context)) { ... }
/// ```
class DeviceSizeUtils {
  // Singleton 인스턴스
  static final DeviceSizeUtils _instance = DeviceSizeUtils._internal();

  factory DeviceSizeUtils() => _instance;

  DeviceSizeUtils._internal();

  /// 현재 MediaQueryData (선택적)
  MediaQueryData? _mediaQueryData;

  /// MediaQueryData를 설정
  void setMediaQueryData(MediaQueryData mediaQueryData) {
    _mediaQueryData = mediaQueryData;
  }

  /// BuildContext로부터 MediaQueryData를 설정
  void setContext(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
  }

  /// MediaQueryData를 가져옴 (설정되지 않은 경우 null 반환)
  MediaQueryData? get mediaQueryData => _mediaQueryData;

  /// 화면 너비를 반환
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  double getScreenWidth(BuildContext? context) {
    // context가 제공되면 항상 최신 MediaQuery 사용 (웹 사이즈 변경 감지)
    if (context != null) {
      return MediaQuery.of(context).size.width;
    }
    // context가 없으면 저장된 MediaQueryData 사용
    if (_mediaQueryData != null) {
      return _mediaQueryData!.size.width;
    }
    throw Exception('MediaQueryData가 설정되지 않았거나 BuildContext가 제공되지 않았습니다.');
  }

  /// 화면 높이를 반환
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  double getScreenHeight(BuildContext? context) {
    // context가 제공되면 항상 최신 MediaQuery 사용 (웹 사이즈 변경 감지)
    if (context != null) {
      return MediaQuery.of(context).size.height;
    }
    // context가 없으면 저장된 MediaQueryData 사용
    if (_mediaQueryData != null) {
      return _mediaQueryData!.size.height;
    }
    throw Exception('MediaQueryData가 설정되지 않았거나 BuildContext가 제공되지 않았습니다.');
  }

  /// 화면 크기 카테고리를 반환
  ///
  /// - small: 0 ~ 600px (모바일)
  /// - medium: 600px ~ 1024px (태블릿)
  /// - large: 1024px ~ 1440px (작은 데스크톱)
  /// - xlarge: 1440px 이상 (큰 데스크톱)
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  ScreenSizeCategory getScreenSizeCategory(BuildContext? context) {
    final width = getScreenWidth(context);

    if (width < 600) {
      return ScreenSizeCategory.small;
    } else if (width < 1024) {
      return ScreenSizeCategory.medium;
    } else if (width < 1440) {
      return ScreenSizeCategory.large;
    } else {
      return ScreenSizeCategory.xlarge;
    }
  }

  /// 디바이스 타입을 반환
  ///
  /// - mobile: 0 ~ 768px
  /// - tablet: 768px ~ 1024px
  /// - desktop: 1024px 이상
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  DeviceSizeType getDeviceSizeType(BuildContext? context) {
    final width = getScreenWidth(context);

    if (width < 768) {
      return DeviceSizeType.mobile;
    } else if (width < 1024) {
      return DeviceSizeType.tablet;
    } else {
      return DeviceSizeType.desktop;
    }
  }

  /// 모바일 기기인지 확인
  bool isMobile(BuildContext? context) {
    return getDeviceSizeType(context) == DeviceSizeType.mobile;
  }

  /// 태블릿 기기인지 확인
  bool isTablet(BuildContext? context) {
    return getDeviceSizeType(context) == DeviceSizeType.tablet;
  }

  /// 데스크톱 기기인지 확인
  bool isDesktop(BuildContext? context) {
    return getDeviceSizeType(context) == DeviceSizeType.desktop;
  }

  /// 작은 화면인지 확인 (600px 미만)
  bool isSmallScreen(BuildContext? context) {
    return getScreenSizeCategory(context) == ScreenSizeCategory.small;
  }

  /// 중간 화면인지 확인 (600px ~ 1024px)
  bool isMediumScreen(BuildContext? context) {
    return getScreenSizeCategory(context) == ScreenSizeCategory.medium;
  }

  /// 큰 화면인지 확인 (1024px 이상)
  bool isLargeScreen(BuildContext? context) {
    final category = getScreenSizeCategory(context);
    return category == ScreenSizeCategory.large ||
        category == ScreenSizeCategory.xlarge;
  }

  /// 화면이 가로 모드인지 확인
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  bool isLandscape(BuildContext? context) {
    final width = getScreenWidth(context);
    final height = getScreenHeight(context);
    return width > height;
  }

  /// 화면이 세로 모드인지 확인
  ///
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  /// context가 제공되면 항상 최신 값을 반환 (웹 사이즈 변경 실시간 감지)
  bool isPortrait(BuildContext? context) {
    return !isLandscape(context);
  }

  /// 화면 너비가 특정 값보다 큰지 확인
  bool isWidthGreaterThan(double width, BuildContext? context) {
    return getScreenWidth(context) > width;
  }

  /// 화면 너비가 특정 값보다 작은지 확인
  bool isWidthLessThan(double width, BuildContext? context) {
    return getScreenWidth(context) < width;
  }

  /// 화면 높이가 특정 값보다 큰지 확인
  bool isHeightGreaterThan(double height, BuildContext? context) {
    return getScreenHeight(context) > height;
  }

  /// 화면 높이가 특정 값보다 작은지 확인
  bool isHeightLessThan(double height, BuildContext? context) {
    return getScreenHeight(context) < height;
  }

  /// MediaQueryData 초기화 (리셋)
  void reset() {
    _mediaQueryData = null;
  }

  /// 디바이스 크기에 따라 크기를 조정하는 헬퍼 메서드
  ///
  /// [baseSize] 기본 크기 (xlarge 화면에서 사용할 크기)
  /// [reductionPerLevel] 각 레벨마다 줄일 크기 (px)
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  ///
  /// 반환값:
  /// - xlarge (1440px 이상): baseSize
  /// - large (1024px ~ 1440px): baseSize - reductionPerLevel
  /// - medium (600px ~ 1024px): baseSize - (reductionPerLevel * 2)
  /// - small (0 ~ 600px): baseSize - (reductionPerLevel * 3)
  double getResponsiveSize(
    double baseSize,
    double reductionPerLevel,
    BuildContext? context,
  ) {
    final category = getScreenSizeCategory(context);
    switch (category) {
      case ScreenSizeCategory.xlarge:
        return baseSize; // 1440px 이상: 원래 크기
      case ScreenSizeCategory.large:
        return baseSize - reductionPerLevel; // 1024px ~ 1440px
      case ScreenSizeCategory.medium:
        return baseSize - (reductionPerLevel * 2); // 600px ~ 1024px
      case ScreenSizeCategory.small:
        return baseSize - (reductionPerLevel * 3); // 0 ~ 600px
    }
  }

  /// 디바이스 크기에 따라 너비를 조정한 SizedBox를 반환
  ///
  /// [baseWidth] 기본 너비 (xlarge 화면에서 사용할 크기)
  /// [reductionPerLevel] 각 레벨마다 줄일 크기 (px)
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  ///
  /// 반환값:
  /// - xlarge (1440px 이상): baseWidth
  /// - large (1024px ~ 1440px): baseWidth - reductionPerLevel
  /// - medium (600px ~ 1024px): baseWidth - (reductionPerLevel * 2)
  /// - small (0 ~ 600px): baseWidth - (reductionPerLevel * 3)
  SizedBox getResponsiveSizedBoxWidth(
    double baseWidth,
    double reductionPerLevel,
    BuildContext? context,
  ) {
    final width = getResponsiveSize(baseWidth, reductionPerLevel, context);
    return SizedBox(width: width);
  }

  /// 디바이스 크기에 따라 높이를 조정한 SizedBox를 반환
  ///
  /// [baseHeight] 기본 높이 (xlarge 화면에서 사용할 크기)
  /// [reductionPerLevel] 각 레벨마다 줄일 크기 (px)
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  ///
  /// 반환값:
  /// - xlarge (1440px 이상): baseHeight
  /// - large (1024px ~ 1440px): baseHeight - reductionPerLevel
  /// - medium (600px ~ 1024px): baseHeight - (reductionPerLevel * 2)
  /// - small (0 ~ 600px): baseHeight - (reductionPerLevel * 3)
  SizedBox getResponsiveSizedBoxHeight(
    double baseHeight,
    double reductionPerLevel,
    BuildContext? context,
  ) {
    final height = getResponsiveSize(baseHeight, reductionPerLevel, context);
    return SizedBox(height: height);
  }

  /// 디바이스 크기에 따라 double 값을 반환 (EdgeInsets, padding 등에 사용)
  ///
  /// [baseValue] 기본 값 (xlarge 화면에서 사용할 크기)
  /// [reductionPerLevel] 각 레벨마다 줄일 크기 (px)
  /// [context] BuildContext (선택적, _mediaQueryData가 설정되지 않은 경우 필수)
  ///
  /// 반환값:
  /// - xlarge (1440px 이상): baseValue
  /// - large (1024px ~ 1440px): baseValue - reductionPerLevel
  /// - medium (600px ~ 1024px): baseValue - (reductionPerLevel * 2)
  /// - small (0 ~ 600px): baseValue - (reductionPerLevel * 3)
  ///
  /// 사용 예시:
  /// ```dart
  /// padding: EdgeInsets.symmetric(
  ///   vertical: DeviceSizeUtils().getResponsiveDouble(14, 2, context),
  ///   horizontal: 12,
  /// )
  /// ```
  double getResponsiveDouble(
    double baseValue,
    double reductionPerLevel,
    BuildContext? context,
  ) {
    return getResponsiveSize(baseValue, reductionPerLevel, context);
  }
}

/// 화면 크기 카테고리 enum
enum ScreenSizeCategory {
  /// 작은 화면 (0 ~ 600px) - 모바일
  small,

  /// 중간 화면 (600px ~ 1024px) - 태블릿
  medium,

  /// 큰 화면 (1024px ~ 1440px) - 작은 데스크톱
  large,

  /// 매우 큰 화면 (1440px 이상) - 큰 데스크톱
  xlarge,
}

/// 디바이스 사이즈 타입 enum
enum DeviceSizeType {
  /// 모바일 (0 ~ 768px)
  mobile,

  /// 태블릿 (768px ~ 1024px)
  tablet,

  /// 데스크톱 (1024px 이상)
  desktop,
}
