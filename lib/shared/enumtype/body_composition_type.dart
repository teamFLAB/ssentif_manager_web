import 'package:intl/intl.dart';

enum BodyCompositionType {
  weight,
  skeletalMuscle,
  fat,
  bodyFatPercentage;

  static const String _weightDTO = "WEIGHT";
  static const String _skeletalMuscleDTO = "SKELETAL_MUSCLE_MASS";
  static const String _fatDTO = "BODY_FAT";
  static const String _bodyFatPercentageDTO = "BODY_FAT_PERCENTAGE";

  static BodyCompositionType findType(String bodyCompositionDto) {
    switch(bodyCompositionDto) {
      case _weightDTO:
        return BodyCompositionType.weight;
      case _skeletalMuscleDTO:
        return BodyCompositionType.skeletalMuscle;
      case _fatDTO:
        return BodyCompositionType.fat;
      case _bodyFatPercentageDTO:
        return BodyCompositionType.bodyFatPercentage;
      default:
        return BodyCompositionType.weight;
    }
  }
}

extension BodyCompositionTypeExt on BodyCompositionType {
  String getTypeString() {
    switch(this) {
      case BodyCompositionType.weight:
        return Intl.message("body_composition_weight");
      case BodyCompositionType.skeletalMuscle:
        return Intl.message("body_composition_skeletalMuscle");
      case BodyCompositionType.fat:
        return Intl.message("body_composition_fat");
      case BodyCompositionType.bodyFatPercentage:
        return Intl.message("body_composition_fat_percentage");
    }
  }

  String getValueUnit() {
    if(this == BodyCompositionType.bodyFatPercentage) {
      return "%";
    } else {
      return "kg";
    }
  }
}

