
enum WorkoutType {
  workout,
  initialPrescribe,
  prescribeWait,
  prescribeComplete,
  feedbackComplete;

  static const String _workoutDto = "WORKOUT";
  static const String _prescribeWaitDto = "PRESCRIBE_WAIT";
  static const String _prescribeCompleteDto = "PRESCRIBE_COMPLETE";
  static const String _feedbackCompleteDto = "FEEDBACK_COMPLETE";

  static WorkoutType? findRoutineStatus(String dtoName) {
    switch(dtoName) {
      case _workoutDto:
        return WorkoutType.workout;
      case _prescribeWaitDto:
        return WorkoutType.prescribeWait;
      case _prescribeCompleteDto:
        return WorkoutType.prescribeComplete;
      case _feedbackCompleteDto:
        return WorkoutType.feedbackComplete;
      default:
        return null;
    }
  }

  static WorkoutType? findRoutineStatusByName(String name) {
    if(name == WorkoutType.workout.name) {
      return WorkoutType.workout;
    } else if(name == WorkoutType.prescribeWait.name) {
      return WorkoutType.prescribeWait;
    } else if(name == WorkoutType.prescribeComplete.name) {
      return WorkoutType.prescribeComplete;
    } else if(name == WorkoutType.feedbackComplete.name) {
      return WorkoutType.feedbackComplete;
    } else {
      return null;
    }
  }
}

extension WorkoutTypeExtensions on WorkoutType {
  String findNotifyTag() {
    if(this == WorkoutType.workout) {
      return "🔥";
    } else {
      return "💪";
    }
  }

  String findWorkoutTypeStringKey() {
    if(this == WorkoutType.workout) {
      return "perform_workout";
    } else if(this == WorkoutType.prescribeWait) {
      return "send_workout_routine";
    } else if(this == WorkoutType.prescribeComplete) {
      return "send_workout_routine";
    } else if(this == WorkoutType.feedbackComplete) {
      return "";
    } else {
      return "";
    }
  }

  String findPerformStatusStringKey() {
    if(this == WorkoutType.prescribeWait) {
      return "have_not_worked_out";
    } else if(this == WorkoutType.prescribeComplete) {
      return "client_perform";
    } else {
      return "";
    }
  }
}
