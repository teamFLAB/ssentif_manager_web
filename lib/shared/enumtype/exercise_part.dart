
enum ExercisePart {
  chest,
  back,
  lowerBody,
  shoulder,
  biceps,
  triceps,
  core,
  foreArm,
  aerobicExercise;

  static const chestDto = "CHEST";
  static const backDto = "BACK";
  static const lowerBodyDto = "LOWER_BODY";
  static const shoulderDto = "SHOULDER";
  static const bicepsDto = "BICEPS";
  static const tricepsDto = "TRICEPS";
  static const coreDto = "CORE";
  static const foreArmDto = "FORE_ARM";
  static const aerobicExerciseDto = "AEROBIC_EXERCISE";
  static const etcDto = "ETC";

  static ExercisePart findExercisePart(String dto) {
    switch(dto) {
      case chestDto:
        return ExercisePart.chest;
      case backDto:
        return ExercisePart.back;
      case lowerBodyDto:
        return ExercisePart.lowerBody;
      case shoulderDto:
        return ExercisePart.shoulder;
      case bicepsDto:
        return ExercisePart.biceps;
      case tricepsDto:
        return ExercisePart.triceps;
      case coreDto:
        return ExercisePart.core;
      case foreArmDto:
        return ExercisePart.foreArm;
      case aerobicExerciseDto:
        return ExercisePart.aerobicExercise;
      default:
        return ExercisePart.aerobicExercise;
    }
  }
}

extension ExercisePartExt on ExercisePart {
  String findStringKey() {
    switch(this) {
      case ExercisePart.chest:
        return "chest";
      case ExercisePart.back:
        return "back";
      case ExercisePart.lowerBody:
        return "lower_body";
      case ExercisePart.shoulder:
        return "shoulder";
      case ExercisePart.biceps:
        return "biceps";
      case ExercisePart.triceps:
        return "triceps";
      case ExercisePart.core:
        return "core";
      case ExercisePart.foreArm:
        return "fore_arm";
      case ExercisePart.aerobicExercise:
        return "aerobic_exercise";
      default:
        return "all";
    }
  }

  String toDto() {
    switch(this) {
      case ExercisePart.chest:
        return ExercisePart.chestDto;
      case ExercisePart.back:
        return ExercisePart.backDto;
      case ExercisePart.lowerBody:
        return ExercisePart.lowerBodyDto;
      case ExercisePart.shoulder:
        return ExercisePart.shoulderDto;
      case ExercisePart.biceps:
        return ExercisePart.bicepsDto;
      case ExercisePart.triceps:
        return ExercisePart.tricepsDto;
      case ExercisePart.core:
        return ExercisePart.coreDto;
      case ExercisePart.foreArm:
        return ExercisePart.foreArmDto;
      case ExercisePart.aerobicExercise:
        return ExercisePart.aerobicExerciseDto;
      default:
        return "all";
    }
  }
}