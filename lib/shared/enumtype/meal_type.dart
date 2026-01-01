enum MealType {
  normal,
  cheat,
  diet,
  instant;

  static const normalDto = "NORMAL";
  static const cheatDto = "CHEAT";
  static const dietDto = "DIET";
  static const instantDto = "INSTANT";

  static const normalStringKey = "normal";
  static const cheatStringKey = "cheat";
  static const dietStringKey = "diet";
  static const instantStringKey = "instant";

  static MealType? findMealType(String mealTypeDto) {
    switch(mealTypeDto) {
      case normalDto:
        return MealType.normal;
      case cheatDto:
        return MealType.cheat;
      case dietDto:
        return MealType.diet;
      case instantDto:
        return MealType.instant;
      default:
        return null;
    }
  }

  static MealType? getStringKey(String mealTypeDto) {
    switch(mealTypeDto) {
      case normalDto:
        return MealType.normal;
      case cheatDto:
        return MealType.cheat;
      case dietDto:
        return MealType.diet;
      case instantDto:
        return MealType.instant;
      default:
        return null;
    }
  }
}

extension MealTypeExt on MealType {
  String getStringKey() {
    switch(this) {
      case MealType.normal:
        return MealType.normalStringKey;
      case MealType.cheat:
        return MealType.cheatStringKey;
      case MealType.diet:
        return MealType.dietStringKey;
      case MealType.instant:
        return MealType.instantStringKey;
    }
  }
}

