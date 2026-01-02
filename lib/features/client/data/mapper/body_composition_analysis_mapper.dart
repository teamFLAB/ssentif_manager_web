import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/client/data/model/body_composition_analysis_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/body_composition_analysis_entity.dart';

class BodyCompositionAnalysisMapper {
  BodyCompositionAnalysisListEntity map(ResponseBodyCompositionAnalysis model) {
    return BodyCompositionAnalysisListEntity(
      weightInfo: _mapAnalysisModel(model.weightInfoDto),
      skeletalMuscleMassInfo: _mapAnalysisModel(model.skeletalMuscleMassInfoDto),
      bodyFatInfo: _mapAnalysisModel(model.bodyFatInfoDto),
      bodyFatPercentageInfo: _mapAnalysisModel(model.bodyFatPercentageInfoDto),
    );
  }

  BodyCompositionAnalysisEntity _mapAnalysisModel(BodyCompositionAnalysisModel model) {
    return BodyCompositionAnalysisEntity(
      currentInBodyInfoOfCategory: model.currentInBodyInfoOfCategory,
      inBodyCategory: model.inBodyCategory,
      compareToFirstInfo: model.compareToFirstInfo,
      compareToPreviousInfo: model.compareToPreviousInfo,
      dateAndInfoList: model.dateAndInfoDtoList.map((value) {
        return BodyCompositionValueEntity(
          createdDate: value.createdDate,
          information: value.information,
        );
      }).toList(),
    );
  }
}

final bodyCompositionAnalysisMapperProvider = Provider<BodyCompositionAnalysisMapper>((ref) {
  return BodyCompositionAnalysisMapper();
});

