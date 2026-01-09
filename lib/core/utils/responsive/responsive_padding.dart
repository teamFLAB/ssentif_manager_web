import 'package:flutter/material.dart';
import 'device_info.dart';
import 'device_type.dart';

/// 반응형 패딩을 위한 유틸리티 클래스
class ResponsivePadding {
  /// 태블릿일 때 적용할 기본 스케일 팩터
  static const double _defaultTabletScaleFactor = 0.85;

  /// 디바이스 타입에 따라 패딩을 조정
  /// 
  /// [context] BuildContext
  /// [desktopPadding] 데스크톱에서 사용할 패딩 값
  /// [tabletScaleFactor] 태블릿에서 적용할 스케일 팩터 (기본값: 0.85)
  static EdgeInsets getResponsivePadding(
    BuildContext context,
    EdgeInsets desktopPadding, {
    double? tabletScaleFactor,
  }) {
    final deviceType = DeviceInfo.getDeviceType(context);
    final scaleFactor = tabletScaleFactor ?? _defaultTabletScaleFactor;

    switch (deviceType) {
      case DeviceType.tablet:
        return EdgeInsets.only(
          top: desktopPadding.top * scaleFactor,
          bottom: desktopPadding.bottom * scaleFactor,
          left: desktopPadding.left * scaleFactor,
          right: desktopPadding.right * scaleFactor,
        );
      case DeviceType.desktop:
        return desktopPadding;
    }
  }

  /// 대칭 패딩을 반응형으로 조정
  static EdgeInsets getResponsiveSymmetricPadding(
    BuildContext context,
    double horizontal,
    double vertical, {
    double? tabletScaleFactor,
  }) {
    return getResponsivePadding(
      context,
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// 수평 패딩만 반응형으로 조정
  static EdgeInsets getResponsiveHorizontalPadding(
    BuildContext context,
    double horizontal, {
    double? tabletScaleFactor,
  }) {
    return getResponsivePadding(
      context,
      EdgeInsets.symmetric(horizontal: horizontal),
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// 수직 패딩만 반응형으로 조정
  static EdgeInsets getResponsiveVerticalPadding(
    BuildContext context,
    double vertical, {
    double? tabletScaleFactor,
  }) {
    return getResponsivePadding(
      context,
      EdgeInsets.symmetric(vertical: vertical),
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// 단일 패딩 값을 반응형으로 조정
  static double getResponsivePaddingValue(
    BuildContext context,
    double desktopPadding, {
    double? tabletScaleFactor,
  }) {
    final scaleFactor = tabletScaleFactor ?? _defaultTabletScaleFactor;
    final deviceType = DeviceInfo.getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.tablet:
        return desktopPadding * scaleFactor;
      case DeviceType.desktop:
        return desktopPadding;
    }
  }
}
