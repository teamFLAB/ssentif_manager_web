
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/data/model/user_info_model.dart';

part 'schedule_detail_model.freezed.dart';
part 'schedule_detail_model.g.dart';

@freezed
class ScheduleDetailModel with _$ScheduleDetailModel {
  factory ScheduleDetailModel({
    @Default(-1) int scheduleId,
    @Default("") String scheduleStartDateTime,
    @Default("") String scheduleEndDateTime,
    @Default(-1) int timeRequired,
    @Default("") String scheduleTitle,
    @Default("") String scheduleMemo,
    @Default("") String scheduleStatus,
    @Default("") String scheduleType,
    @Default(UserInfoModel()) UserInfoModel userInfoDto,
    @Default(VoucherInfoModel()) VoucherInfoModel voucherInfoDto,
    @Default(-1) int totalNumberOfTime,
    @Default(-1) int leftNumberOfTime,
    @Default("") String schedulePrecautions,
    @Default(-1) int classInfoId,
    @Default([]) List<String> weeks,
    @Default(-1) int voucherMatchingId,
    @Default("") String repeatName
  }) = _ScheduleDetailModel;

  factory ScheduleDetailModel.fromJson(Map<String, dynamic> json) => _$ScheduleDetailModelFromJson(json);
}

@freezed
class VoucherInfoModel with _$VoucherInfoModel{
  const factory VoucherInfoModel({
    @Default(-1) int voucherId,
    @Default("") String voucherName,
    @Default("") String voucherColor,
    @Default(-1) int voucherTakeTime,
    @Default(false) bool isUsing,
    @Default("") String voucherType
  }) = _VoucherInfoModel;

  factory VoucherInfoModel.fromJson(Map<String, dynamic> json) => _$VoucherInfoModelFromJson(json);
}
