
import 'package:intl/intl.dart';

enum ExerciseRecordType {
  weightAndReps,
  reps,
  time;

  static const weightAndRepsDto = "WEIGHT_AND_REPS";
  static const repsDto = "REPS";
  static const timeDto = "TIME";

  static ExerciseRecordType findRecordType(String dto) {
    switch(dto) {
      case weightAndRepsDto:
        return ExerciseRecordType.weightAndReps;
      case repsDto:
        return ExerciseRecordType.reps;
      case timeDto:
        return ExerciseRecordType.time;
      default:
        return ExerciseRecordType.weightAndReps;
    }
  }

  static findExerciseTypeDto(ExerciseRecordType type) {
    switch(type) {
      case ExerciseRecordType.weightAndReps:
        return weightAndRepsDto;
      case ExerciseRecordType.reps:
        return repsDto;
      case ExerciseRecordType.time:
        return timeDto;
      default:
        return weightAndRepsDto;
    }
  }
}

extension ExerciseRecordTypeExt on ExerciseRecordType {
  String findString() {
    switch(this) {
      case ExerciseRecordType.weightAndReps:
        return Intl.message("record_type_weight_and_reps_string");
      case ExerciseRecordType.reps:
        return Intl.message("record_type_reps_string");
      case ExerciseRecordType.time:
        return Intl.message("record_type_time_string");
      default:
        return Intl.message("record_type_weight_and_reps_string");
    }
  }

  String toDto() {
    switch(this) {
      case ExerciseRecordType.weightAndReps:
        return ExerciseRecordType.weightAndRepsDto;
      case ExerciseRecordType.reps:
        return ExerciseRecordType.repsDto;
      case ExerciseRecordType.time:
        return ExerciseRecordType.timeDto;
      default:
        return ExerciseRecordType.weightAndRepsDto;
    }
  }
}