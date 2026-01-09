import 'package:flutter/material.dart';
import 'device_type.dart';

/// 디바이스 정보를 감지하고 제공하는 클래스
class DeviceInfo {
  /// 화면 너비를 기준으로 디바이스 타입을 반환
  /// 
  /// - 태블릿: 768px ~ 1024px
  /// - 데스크톱: 1024px 이상
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    if (width >= 1024) {
      return DeviceType.desktop;
    } else if (width >= 768) {
      return DeviceType.tablet;
    } else {
      // 모바일은 태블릿과 동일하게 처리
      return DeviceType.tablet;
    }
  }

  /// 현재 디바이스가 태블릿인지 확인
  static bool isTablet(BuildContext context) {
    return getDeviceType(context) == DeviceType.tablet;
  }

  /// 현재 디바이스가 데스크톱인지 확인
  static bool isDesktop(BuildContext context) {
    return getDeviceType(context) == DeviceType.desktop;
  }

  /// 화면 너비를 반환
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// 화면 높이를 반환
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
