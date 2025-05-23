

import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_place_model.freezed.dart';
part 'work_place_model.g.dart';

@freezed
class WorkPlaceModel with _$WorkPlaceModel {
  factory WorkPlaceModel({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String address,
    @Default("") String addressDetail
  }) = _WorkPlaceModel;

  factory WorkPlaceModel.fromJson(Map<String, dynamic> json) => _$WorkPlaceModelFromJson(json);
}

@freezed
class ResponseWorkPlaceList with _$ResponseWorkPlaceList {
  factory ResponseWorkPlaceList({
    @Default([]) List<WorkPlaceModel> workplaceList
  }) = _ResponseWorkPlaceList;

  factory ResponseWorkPlaceList.fromJson(Map<String, dynamic> json) => _$ResponseWorkPlaceListFromJson(json);
}