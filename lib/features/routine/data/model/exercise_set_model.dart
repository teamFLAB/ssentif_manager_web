
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_set_model.freezed.dart';
part 'exercise_set_model.g.dart';

@freezed
class ExerciseSetModel with _$ExerciseSetModel {
  factory ExerciseSetModel({
    @Default(0) double weight,
    @Default(0) int reps,
    @Default(0) int time,
  }) = _ExerciseSetModel;

  factory ExerciseSetModel.fromJson(Map<String, dynamic> json) => _$ExerciseSetModelFromJson(json);
}