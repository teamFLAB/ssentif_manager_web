import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_history_model.freezed.dart';
part 'voucher_history_model.g.dart';

@freezed
class VoucherHistoryModel with _$VoucherHistoryModel {
  factory VoucherHistoryModel({
    @Default(-1) int classInfoId,
    @Default("") String classStartDate,
    @Default("") String time,
    @Default(0) int currentLessonCount,
    @Default("") String routineName,
    @Default(0) int leftNumberOfTime,
  }) = _VoucherHistoryModel;

  factory VoucherHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$VoucherHistoryModelFromJson(json);
}

@freezed
class ResponseVoucherHistories with _$ResponseVoucherHistories {
  factory ResponseVoucherHistories({
    @Default([]) List<VoucherHistoryModel> classInfoSimpleDtoList,
  }) = _ResponseVoucherHistories;

  factory ResponseVoucherHistories.fromJson(Map<String, dynamic> json) =>
      _$ResponseVoucherHistoriesFromJson(json);
}

