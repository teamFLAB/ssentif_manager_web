import 'dart:ui';

import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import '../../../../gen/assets.gen.dart';

enum VoucherColorType {
  red,
  orange,
  blue,
  green,
  purple,
  black;

  static const redDto = "RED";
  static const orangeDto = "ORANGE";
  static const blueDto = "BLUE";
  static const greenDto = "GREEN";
  static const purpleDto = "PURPLE";
  static const blackDto = "BLACK";

  static String getCardAsset(VoucherColorType voucherColorType) {
    switch(voucherColorType) {
      case red:
        return Assets.images.voucherCardRed.path;
      case orange:
        return Assets.images.voucherCardOrange.path;
      case blue:
        return Assets.images.voucherCardBlue.path;
      case green:
        return Assets.images.voucherCardGreen.path;
      case purple:
        return Assets.images.voucherCardPurple.path;
      case black:
        return Assets.images.voucherCardBlack.path;
    }
  }

  static VoucherColorType findColorType(String dto) {
    if(dto == redDto) {
      return VoucherColorType.red;
    } else if(dto == orangeDto) {
      return VoucherColorType.orange;
    } else if(dto == blueDto) {
      return VoucherColorType.blue;
    } else if(dto == greenDto) {
      return VoucherColorType.green;
    } else if(dto == purpleDto) {
      return VoucherColorType.purple;
    } else {
      return VoucherColorType.black;
    }
  }

  static Color toColors(VoucherColorType colorType) {
    switch(colorType) {
      case red:
        return AppColors.subColorRed;
      case orange:
        return AppColors.subColorOrange;
      case blue:
        return AppColors.subColorBlue;
      case green:
        return AppColors.subColorGreen;
      case purple:
        return AppColors.subColorPurple;
      case black:
        return AppColors.black;
    }
  }

  static String getDto(VoucherColorType voucherColorType) {
    switch(voucherColorType) {
      case red:
        return redDto;
      case orange:
        return orangeDto;
      case blue:
        return blueDto;
      case green:
        return greenDto;
      case purple:
        return purpleDto;
      case black:
        return blackDto;
    }
  }
}

