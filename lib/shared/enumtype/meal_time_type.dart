enum MealTimeType {
  breakfast,
  lunch,
  dinner,
  snack,
  midnightSnack;

  static const breakfastDto = "BREAKFAST";
  static const lunchDto = "LUNCH";
  static const dinnerDto = "DINNER";
  static const snackDto = "SNACK";
  static const midnightSnackDto = "MIDNIGHT_SNACK";
  static const _breakfastStringKey = "breakfast";
  static const _lunchStringKey = "lunch";
  static const _dinnerStringKey = "dinner";
  static const _snackStringKey = "snack";
  static const _midnightSnackStringKey = "midnight_snack";

  static MealTimeType? findMealTimeType(String dto) {
    switch(dto) {
      case breakfastDto:
        return MealTimeType.breakfast;
      case lunchDto:
        return MealTimeType.lunch;
      case dinnerDto:
        return MealTimeType.dinner;
      case snackDto:
        return MealTimeType.snack;
      case midnightSnackDto:
        return MealTimeType.midnightSnack;
      default:
        return null;
    }
  }
}

extension MealTimeTypeExt on MealTimeType {
  String getTextStringKey() {
    switch(this) {
      case MealTimeType.breakfast:
        return MealTimeType._breakfastStringKey;
      case MealTimeType.lunch:
        return MealTimeType._lunchStringKey;
      case MealTimeType.dinner:
        return MealTimeType._dinnerStringKey;
      case MealTimeType.snack:
        return MealTimeType._snackStringKey;
      case MealTimeType.midnightSnack:
        return MealTimeType._midnightSnackStringKey;
    }
  }

  String getDto() {
    switch(this) {
      case MealTimeType.breakfast:
        return MealTimeType.breakfastDto;
      case MealTimeType.lunch:
        return MealTimeType.lunchDto;
      case MealTimeType.dinner:
        return MealTimeType.dinnerDto;
      case MealTimeType.snack:
        return MealTimeType.snackDto;
      case MealTimeType.midnightSnack:
        return MealTimeType.midnightSnackDto;
    }
  }
}

