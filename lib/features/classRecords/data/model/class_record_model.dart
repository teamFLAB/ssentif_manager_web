import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_record_model.freezed.dart';
part 'class_record_model.g.dart';

@freezed
class ClassRecordModel with _$ClassRecordModel {
  const factory ClassRecordModel({
    @Default('') String id,
    @Default('') String className,
    @Default('') String trainerName,
    @Default('') String clientName,
    @Default('') String date,
    @Default('') String startTime,
    @Default('') String endTime,
    @Default('') String status,
    // TODO: 필요한 필드들 추가
  }) = _ClassRecordModel;

  factory ClassRecordModel.fromJson(Map<String, dynamic> json) =>
      _$ClassRecordModelFromJson(json);
}
