import 'package:flutter/material.dart';
import 'responsive_size.dart';

/// 반응형 간격(SizedBox, Spacer 등)을 위한 유틸리티 클래스
class ResponsiveSpacing {
  /// SizedBox의 높이를 반응형으로 조정
  static SizedBox responsiveHeight(
    BuildContext context,
    double desktopHeight, {
    double? tabletScaleFactor,
  }) {
    return SizedBox(
      height: ResponsiveSize.getResponsiveSize(
        context,
        desktopHeight,
        tabletScaleFactor: tabletScaleFactor,
      ),
    );
  }

  /// SizedBox의 너비를 반응형으로 조정
  static SizedBox responsiveWidth(
    BuildContext context,
    double desktopWidth, {
    double? tabletScaleFactor,
  }) {
    return SizedBox(
      width: ResponsiveSize.getResponsiveSize(
        context,
        desktopWidth,
        tabletScaleFactor: tabletScaleFactor,
      ),
    );
  }

  /// SizedBox의 크기를 반응형으로 조정
  static SizedBox responsiveSize(
    BuildContext context,
    double desktopWidth,
    double desktopHeight, {
    double? tabletScaleFactor,
  }) {
    return SizedBox(
      width: ResponsiveSize.getResponsiveSize(
        context,
        desktopWidth,
        tabletScaleFactor: tabletScaleFactor,
      ),
      height: ResponsiveSize.getResponsiveSize(
        context,
        desktopHeight,
        tabletScaleFactor: tabletScaleFactor,
      ),
    );
  }
}
