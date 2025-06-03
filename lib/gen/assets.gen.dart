/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/GmarketSansTTFBold.ttf
  String get gmarketSansTTFBold => 'assets/fonts/GmarketSansTTFBold.ttf';

  /// File path: assets/fonts/GmarketSansTTFLight.ttf
  String get gmarketSansTTFLight => 'assets/fonts/GmarketSansTTFLight.ttf';

  /// File path: assets/fonts/GmarketSansTTFMedium.ttf
  String get gmarketSansTTFMedium => 'assets/fonts/GmarketSansTTFMedium.ttf';

  /// File path: assets/fonts/SCDreamBold.otf
  String get sCDreamBold => 'assets/fonts/SCDreamBold.otf';

  /// File path: assets/fonts/SCDreamExtraBold.otf
  String get sCDreamExtraBold => 'assets/fonts/SCDreamExtraBold.otf';

  /// File path: assets/fonts/SCDreamExtraLight.otf
  String get sCDreamExtraLight => 'assets/fonts/SCDreamExtraLight.otf';

  /// File path: assets/fonts/SCDreamMedium.otf
  String get sCDreamMedium => 'assets/fonts/SCDreamMedium.otf';

  /// List of all assets
  List<String> get values => [
    gmarketSansTTFBold,
    gmarketSansTTFLight,
    gmarketSansTTFMedium,
    sCDreamBold,
    sCDreamExtraBold,
    sCDreamExtraLight,
    sCDreamMedium,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/gym_visual_dummy.png
  AssetGenImage get gymVisualDummy =>
      const AssetGenImage('assets/images/gym_visual_dummy.png');

  /// File path: assets/images/ic_back_gray.png
  AssetGenImage get icBackGray =>
      const AssetGenImage('assets/images/ic_back_gray.png');

  /// File path: assets/images/ic_bookmark_selected.png
  AssetGenImage get icBookmarkSelected =>
      const AssetGenImage('assets/images/ic_bookmark_selected.png');

  /// File path: assets/images/ic_bookmark_unselected.png
  AssetGenImage get icBookmarkUnselected =>
      const AssetGenImage('assets/images/ic_bookmark_unselected.png');

  /// File path: assets/images/ic_button_next.png
  AssetGenImage get icButtonNext =>
      const AssetGenImage('assets/images/ic_button_next.png');

  /// File path: assets/images/ic_button_previous.png
  AssetGenImage get icButtonPrevious =>
      const AssetGenImage('assets/images/ic_button_previous.png');

  /// File path: assets/images/ic_cal_black.png
  AssetGenImage get icCalBlack =>
      const AssetGenImage('assets/images/ic_cal_black.png');

  /// File path: assets/images/ic_cal_white.png
  AssetGenImage get icCalWhite =>
      const AssetGenImage('assets/images/ic_cal_white.png');

  /// File path: assets/images/ic_coaches_black.png
  AssetGenImage get icCoachesBlack =>
      const AssetGenImage('assets/images/ic_coaches_black.png');

  /// File path: assets/images/ic_coaches_white.png
  AssetGenImage get icCoachesWhite =>
      const AssetGenImage('assets/images/ic_coaches_white.png');

  /// File path: assets/images/ic_delete.png
  AssetGenImage get icDelete =>
      const AssetGenImage('assets/images/ic_delete.png');

  /// File path: assets/images/ic_plus_primary.png
  AssetGenImage get icPlusPrimary =>
      const AssetGenImage('assets/images/ic_plus_primary.png');

  /// File path: assets/images/ic_plus_white.png
  AssetGenImage get icPlusWhite =>
      const AssetGenImage('assets/images/ic_plus_white.png');

  /// File path: assets/images/ic_search_gray.png
  AssetGenImage get icSearchGray =>
      const AssetGenImage('assets/images/ic_search_gray.png');

  /// File path: assets/images/ic_ssentif_profile.png
  AssetGenImage get icSsentifProfile =>
      const AssetGenImage('assets/images/ic_ssentif_profile.png');

  /// File path: assets/images/ic_statistics_black.png
  AssetGenImage get icStatisticsBlack =>
      const AssetGenImage('assets/images/ic_statistics_black.png');

  /// File path: assets/images/ic_statistics_white.png
  AssetGenImage get icStatisticsWhite =>
      const AssetGenImage('assets/images/ic_statistics_white.png');

  /// File path: assets/images/ssentif_manager_text_logo.png
  AssetGenImage get ssentifManagerTextLogo =>
      const AssetGenImage('assets/images/ssentif_manager_text_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    gymVisualDummy,
    icBackGray,
    icBookmarkSelected,
    icBookmarkUnselected,
    icButtonNext,
    icButtonPrevious,
    icCalBlack,
    icCalWhite,
    icCoachesBlack,
    icCoachesWhite,
    icDelete,
    icPlusPrimary,
    icPlusWhite,
    icSearchGray,
    icSsentifProfile,
    icStatisticsBlack,
    icStatisticsWhite,
    ssentifManagerTextLogo,
  ];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
