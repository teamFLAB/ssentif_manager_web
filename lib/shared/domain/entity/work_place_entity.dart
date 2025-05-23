

import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_place_entity.freezed.dart';
part 'work_place_entity.g.dart';

@freezed
class WorkPlaceEntity with _$WorkPlaceEntity {
  factory WorkPlaceEntity({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String address,
    @Default("") String addressDetail
  }) = _WorkPlaceEntity;

  factory WorkPlaceEntity.fromJson(Map<String, dynamic> json) => _$WorkPlaceEntityFromJson(json);
}