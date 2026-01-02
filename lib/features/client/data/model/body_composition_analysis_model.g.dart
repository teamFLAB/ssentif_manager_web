// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_composition_analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBodyCompositionAnalysisImpl
    _$$ResponseBodyCompositionAnalysisImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBodyCompositionAnalysisImpl(
          weightInfoDto: json['weightInfoDto'] == null
              ? const BodyCompositionAnalysisModel()
              : BodyCompositionAnalysisModel.fromJson(
                  json['weightInfoDto'] as Map<String, dynamic>),
          skeletalMuscleMassInfoDto: json['skeletalMuscleMassInfoDto'] == null
              ? const BodyCompositionAnalysisModel()
              : BodyCompositionAnalysisModel.fromJson(
                  json['skeletalMuscleMassInfoDto'] as Map<String, dynamic>),
          bodyFatInfoDto: json['bodyFatInfoDto'] == null
              ? const BodyCompositionAnalysisModel()
              : BodyCompositionAnalysisModel.fromJson(
                  json['bodyFatInfoDto'] as Map<String, dynamic>),
          bodyFatPercentageInfoDto: json['bodyFatPercentageInfoDto'] == null
              ? const BodyCompositionAnalysisModel()
              : BodyCompositionAnalysisModel.fromJson(
                  json['bodyFatPercentageInfoDto'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ResponseBodyCompositionAnalysisImplToJson(
        _$ResponseBodyCompositionAnalysisImpl instance) =>
    <String, dynamic>{
      'weightInfoDto': instance.weightInfoDto,
      'skeletalMuscleMassInfoDto': instance.skeletalMuscleMassInfoDto,
      'bodyFatInfoDto': instance.bodyFatInfoDto,
      'bodyFatPercentageInfoDto': instance.bodyFatPercentageInfoDto,
    };

_$BodyCompositionAnalysisModelImpl _$$BodyCompositionAnalysisModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyCompositionAnalysisModelImpl(
      currentInBodyInfoOfCategory:
          json['currentInBodyInfoOfCategory'] as String? ?? "0.0",
      inBodyCategory: json['inBodyCategory'] as String? ?? "",
      compareToFirstInfo: json['compareToFirstInfo'] as String? ?? "0.0",
      compareToPreviousInfo: json['compareToPreviousInfo'] as String? ?? "0.0",
      dateAndInfoDtoList: (json['dateAndInfoDtoList'] as List<dynamic>?)
              ?.map((e) =>
                  BodyCompositionValueModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BodyCompositionAnalysisModelImplToJson(
        _$BodyCompositionAnalysisModelImpl instance) =>
    <String, dynamic>{
      'currentInBodyInfoOfCategory': instance.currentInBodyInfoOfCategory,
      'inBodyCategory': instance.inBodyCategory,
      'compareToFirstInfo': instance.compareToFirstInfo,
      'compareToPreviousInfo': instance.compareToPreviousInfo,
      'dateAndInfoDtoList': instance.dateAndInfoDtoList,
    };

_$BodyCompositionValueModelImpl _$$BodyCompositionValueModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyCompositionValueModelImpl(
      createdDate: json['createdDate'] as String? ?? "",
      information: (json['information'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$BodyCompositionValueModelImplToJson(
        _$BodyCompositionValueModelImpl instance) =>
    <String, dynamic>{
      'createdDate': instance.createdDate,
      'information': instance.information,
    };
