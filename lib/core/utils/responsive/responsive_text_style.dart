import 'package:flutter/material.dart';
import 'device_info.dart';
import 'device_type.dart';

/// 반응형 텍스트 스타일을 위한 유틸리티 클래스
class ResponsiveTextStyle {
  /// 태블릿일 때 적용할 기본 스케일 팩터
  static const double _defaultTabletScaleFactor = 0.85;

  /// TextStyle을 반응형으로 변환
  /// 
  /// [context] BuildContext
  /// [textStyle] 원본 TextStyle
  /// [tabletScaleFactor] 태블릿에서 적용할 스케일 팩터 (기본값: 0.85)
  static TextStyle getResponsiveTextStyle(
    BuildContext context,
    TextStyle textStyle, {
    double? tabletScaleFactor,
  }) {
    final deviceType = DeviceInfo.getDeviceType(context);
    final scaleFactor = tabletScaleFactor ?? _defaultTabletScaleFactor;

    switch (deviceType) {
      case DeviceType.tablet:
        return textStyle.copyWith(
          fontSize: textStyle.fontSize != null
              ? textStyle.fontSize! * scaleFactor
              : null,
        );
      case DeviceType.desktop:
        return textStyle;
    }
  }

  /// SsentifTextStyles와 같은 정적 TextStyle을 반응형으로 변환하는 헬퍼
  /// 
  /// 사용 예:
  /// ```dart
  /// Text(
  ///   '텍스트',
  ///   style: ResponsiveTextStyle.of(context, SsentifTextStyles.medium14),
  /// )
  /// ```
  static TextStyle of(
    BuildContext context,
    TextStyle textStyle, {
    double? tabletScaleFactor,
  }) {
    return getResponsiveTextStyle(
      context,
      textStyle,
      tabletScaleFactor: tabletScaleFactor,
    );
  }

  /// copyWith를 사용하는 경우를 위한 헬퍼
  /// 
  /// 사용 예:
  /// ```dart
  /// Text(
  ///   '텍스트',
  ///   style: ResponsiveTextStyle.of(context, SsentifTextStyles.medium14)
  ///     .copyWith(color: AppColors.black),
  /// )
  /// ```
  /// 
  /// 또는:
  /// ```dart
  /// Text(
  ///   '텍스트',
  ///   style: ResponsiveTextStyle.copyWith(
  ///     context,
  ///     SsentifTextStyles.medium14,
  ///     color: AppColors.black,
  ///   ),
  /// )
  /// ```
  static TextStyle copyWith(
    BuildContext context,
    TextStyle textStyle, {
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    double? tabletScaleFactor,
  }) {
    final responsiveStyle = getResponsiveTextStyle(
      context,
      textStyle,
      tabletScaleFactor: tabletScaleFactor,
    );

    return responsiveStyle.copyWith(
      color: color,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
    );
  }
}
