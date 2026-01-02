import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_composition_analysis_model.freezed.dart';
part 'body_composition_analysis_model.g.dart';

@freezed
abstract class ResponseBodyCompositionAnalysis with _$ResponseBodyCompositionAnalysis {
  const factory ResponseBodyCompositionAnalysis({
    @Default(BodyCompositionAnalysisModel()) BodyCompositionAnalysisModel weightInfoDto,
    @Default(BodyCompositionAnalysisModel()) BodyCompositionAnalysisModel skeletalMuscleMassInfoDto,
    @Default(BodyCompositionAnalysisModel()) BodyCompositionAnalysisModel bodyFatInfoDto,
    @Default(BodyCompositionAnalysisModel()) BodyCompositionAnalysisModel bodyFatPercentageInfoDto,
  }) = _ResponseBodyCompositionAnalysis;

  factory ResponseBodyCompositionAnalysis.fromJson(Map<String, dynamic> json) => _$ResponseBodyCompositionAnalysisFromJson(json);
}

@freezed
abstract class BodyCompositionAnalysisModel with _$BodyCompositionAnalysisModel {
  const factory BodyCompositionAnalysisModel({
    @Default("0.0") String currentInBodyInfoOfCategory,
    @Default("") String inBodyCategory,
    @Default("0.0") String compareToFirstInfo,
    @Default("0.0") String compareToPreviousInfo,
    @Default([]) List<BodyCompositionValueModel> dateAndInfoDtoList
  }) = _BodyCompositionAnalysisModel;

  factory BodyCompositionAnalysisModel.fromJson(Map<String, dynamic> json) => _$BodyCompositionAnalysisModelFromJson(json);
}

@freezed
abstract class BodyCompositionValueModel with _$BodyCompositionValueModel {
  factory BodyCompositionValueModel({
    @Default("") String createdDate,
    @Default(0.0) double information
  }) = _BodyCompositionValueModel;
  factory BodyCompositionValueModel.fromJson(Map<String, dynamic> json) => _$BodyCompositionValueModelFromJson(json);
}

