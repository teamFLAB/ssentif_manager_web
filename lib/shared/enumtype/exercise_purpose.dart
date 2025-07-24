

class ExercisePurpose {
  ExercisePurpose._();
  static final ExercisePurpose _instance = ExercisePurpose._();
  factory ExercisePurpose() => _instance;

  static final purposes = {
    "DIET" : "lose_weight",
    "BODY_SHAPE_CORRECTION" : "body_shape_correction",
    "BODY_PROFILE" : "body_profile",
    "STAMINA" : "improve_physical_strength",
    "STRENGTHEN_MUSCLES" : "increase_muscle_mass",
    "WEIGHT_CONTROL" : "body_conditioning",
    "BULK_UP" : "bulk_up",
    "EXERCISE_KNOWLEDGE" : "athletic_knowledge",
    "PERFORMANCE_IMPROVEMENT" : "improve_performance",
    "COMPETITION" : "prepare_the_competition"
  };
}

extension ExercisePurposeExt on String {
  String findExercisePurposeString() {
    return ExercisePurpose.purposes.entries.where((element) {
      return element.key == this;
    }).first.value;
  }

  String findExercisePurposeDto() {
    return ExercisePurpose.purposes.entries.where((element) {
      return element.value == this;
    }).first.key;
  }
}
