import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_detail_model.freezed.dart';
part 'diet_detail_model.g.dart';

@freezed
abstract class DietModel with _$DietModel {
  factory DietModel({
    int? id,
    @Default("") String time,
    @Default([]) List<String> img,
    @Default("") String mealTime,
    @Default("") String mealType,
    @Default("") String memo,
    DietFeedbackModel? feedbackResponse,
  }) = _DietModel;

  factory DietModel.fromJson(Map<String, dynamic> json) =>
      _$DietModelFromJson(json);
}

@freezed
abstract class DietFeedbackModel with _$DietFeedbackModel {
  factory DietFeedbackModel({
    @Default("") String tag,
    @Default([]) List<String> increase,
    @Default([]) List<String> decrease,
    @Default("") String feedback,
  }) = _DietFeedbackModel;

  factory DietFeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$DietFeedbackModelFromJson(json);
}

