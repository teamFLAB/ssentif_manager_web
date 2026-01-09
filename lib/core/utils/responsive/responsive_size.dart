import 'package:flutter/material.dart';
import 'device_info.dart';
import 'device_type.dart';

/// 반응형 크기 조정을 위한 유틸리티 클래스
class ResponsiveSize {
  /// 태블릿일 때 적용할 스케일 팩터 (0.0 ~ 1.0)
  /// 기본값: 0.85 (85% 크기)
  static const double _tabletScaleFactor = 0.85;

  /// 디바이스 타입에 따라 크기를 조정
  /// 
  /// [context] BuildContext
  /// [desktopSize] 데스크톱에서 사용할 크기
  /// [tabletScaleFactor] 태블릿에서 적용할 스케일 팩터 (기본값: 0.85)
  static double getResponsiveSize(
    BuildContext context,
    double desktopSize, {
    double? tabletScaleFactor,
  }) {
    final deviceType = DeviceInfo.getDeviceType(context);
    final scaleFactor = tabletScaleFactor ?? _tabletScaleFactor;

    switch (deviceType) {
      case DeviceType.tablet:
        return desktopSize * scaleFactor;
      case DeviceType.desktop:
        return desktopSize;
    }
  }

  /// 폰트 크기를 반응형으로 조정
  static double getResponsiveFontSize(
    BuildContext context,
    double desktopFontSize, {
    double? tabletScaleFactor,
  }) {
    return getResponsiveSize(
      context,
      desktopFontSize,
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// 아이콘 크기를 반응형으로 조정
  static double getResponsiveIconSize(
    BuildContext context,
    double desktopIconSize, {
    double? tabletScaleFactor,
  }) {
    return getResponsiveSize(
      context,
      desktopIconSize,
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// 이미지 크기를 반응형으로 조정
  static double getResponsiveImageSize(
    BuildContext context,
    double desktopImageSize, {
    double? tabletScaleFactor,
  }) {
    return getResponsiveSize(
      context,
      desktopImageSize,
      tabletScaleFactor: tabletScaleFactor,
    );
  }
}
