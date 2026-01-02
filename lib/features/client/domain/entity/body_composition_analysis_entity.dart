import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_composition_analysis_entity.freezed.dart';

@freezed
class BodyCompositionAnalysisListEntity with _$BodyCompositionAnalysisListEntity {
  const factory BodyCompositionAnalysisListEntity({
    @Default(BodyCompositionAnalysisEntity()) BodyCompositionAnalysisEntity weightInfo,
    @Default(BodyCompositionAnalysisEntity()) BodyCompositionAnalysisEntity skeletalMuscleMassInfo,
    @Default(BodyCompositionAnalysisEntity()) BodyCompositionAnalysisEntity bodyFatInfo,
    @Default(BodyCompositionAnalysisEntity()) BodyCompositionAnalysisEntity bodyFatPercentageInfo,
  }) = _BodyCompositionAnalysisListEntity;
}

@freezed
class BodyCompositionAnalysisEntity with _$BodyCompositionAnalysisEntity {
  const factory BodyCompositionAnalysisEntity({
    @Default("0.0") String currentInBodyInfoOfCategory,
    @Default("") String inBodyCategory,
    @Default("0.0") String compareToFirstInfo,
    @Default("0.0") String compareToPreviousInfo,
    @Default([]) List<BodyCompositionValueEntity> dateAndInfoList
  }) = _BodyCompositionAnalysisEntity;
}

@freezed
class BodyCompositionValueEntity with _$BodyCompositionValueEntity {
  const factory BodyCompositionValueEntity({
    @Default("") String createdDate,
    @Default(0.0) double information
  }) = _BodyCompositionValueEntity;
}

