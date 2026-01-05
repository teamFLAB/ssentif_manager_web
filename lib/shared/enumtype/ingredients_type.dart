import '../../gen/assets.gen.dart';

enum IngredientsType {
  carbohydrate,
  protein,
  fat,
  sodium,
  fiber,
  caffeine;

  static const _carbohydrateDto = "CARBOHYDRATE";
  static const _proteinDto = "PROTEIN";
  static const _fatDto = "FAT";
  static const _sodiumDto = "SODIUM";
  static const _fiberDto = "FIBER";
  static const _caffeineDto = "CAFFEINE";

  static IngredientsType? findIngredientsType(String dto) {
    switch(dto) {
      case _carbohydrateDto:
        return IngredientsType.carbohydrate;
      case _proteinDto:
        return IngredientsType.protein;
      case _fatDto:
        return IngredientsType.fat;
      case _sodiumDto:
        return IngredientsType.sodium;
      case _fiberDto:
        return IngredientsType.fiber;
      case _caffeineDto:
        return IngredientsType.caffeine;
      default:
        return null;
    }
  }
}

extension IngredientsTypeExt on IngredientsType {
  String getSelectedTagImagePath(bool engSetting) {
    switch(this) {
      case IngredientsType.carbohydrate:
        return engSetting ? Assets.images.tagCarbsEng.path :  Assets.images.tagCarbsKor.path;
      case IngredientsType.protein:
        return engSetting ? Assets.images.tagProteinEng.path :  Assets.images.tagProteinKor.path;
      case IngredientsType.fat:
        return engSetting ? Assets.images.tagFatEng.path :  Assets.images.tagFatKor.path;
      case IngredientsType.sodium:
        return engSetting ? Assets.images.tagSodiumEng.path :  Assets.images.tagSodiumKor.path;
      case IngredientsType.fiber:
        return engSetting ? Assets.images.tagFiberEng.path :  Assets.images.tagFiberKor.path;
      case IngredientsType.caffeine:
        return engSetting ? Assets.images.tagCaffeineEng.path :  Assets.images.tagCaffeineKor.path;
    }
  }


  String getDto() {
    switch(this) {
      case IngredientsType.carbohydrate:
        return IngredientsType._carbohydrateDto;
      case IngredientsType.protein:
        return IngredientsType._proteinDto;
      case IngredientsType.fat:
        return IngredientsType._fatDto;
      case IngredientsType.sodium:
        return IngredientsType._sodiumDto;
      case IngredientsType.fiber:
        return IngredientsType._fiberDto;
      case IngredientsType.caffeine:
        return IngredientsType._caffeineDto;
    }
  }
}

