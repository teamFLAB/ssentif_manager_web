import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_diet_model.freezed.dart';
part 'monthly_diet_model.g.dart';

@freezed
abstract class MonthlyDietListModel with _$MonthlyDietListModel {
  factory MonthlyDietListModel({
    @Default([]) List<DailyDietThumbnailsModel> dietMonthlyResponses,
  }) = _MonthlyDietListModel;

  factory MonthlyDietListModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDietListModelFromJson(json);
}

@freezed
abstract class DailyDietThumbnailsModel with _$DailyDietThumbnailsModel {
  factory DailyDietThumbnailsModel({
    @Default("") String date,
    @Default([]) List<DietThumbnailModel> dietThumbnailResponses,
  }) = _DailyDietThumbnailsModel;

  factory DailyDietThumbnailsModel.fromJson(Map<String, dynamic> json) =>
      _$DailyDietThumbnailsModelFromJson(json);
}

@freezed
abstract class DietThumbnailModel with _$DietThumbnailModel {
  factory DietThumbnailModel({
    @Default(-1) int id,
    @Default([]) List<String> img,
    @Default("") String tag,
  }) = _DietThumbnailModel;

  factory DietThumbnailModel.fromJson(Map<String, dynamic> json) =>
      _$DietThumbnailModelFromJson(json);
}

