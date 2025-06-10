

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/voucher_info_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_info_entity.dart';

import '../../../../shared/enumtype/schedule_type.dart';
import '../enumtype/schedule_status_type.dart';

part 'schedule_detail_entity.freezed.dart';

@freezed
class ScheduleDetailEntity with _$ScheduleDetailEntity {
  const factory ScheduleDetailEntity({
    @Default(-1) int scheduleId,
    @Default("") String startDate,
    @Default("") String endDate,
    @Default("") String startTime,
    @Default("") String endTime,
    @Default(0) int runningTime,
    @Default("") String scheduleTitle,
    @Default("") String scheduleMemo,
    @Default(null) ScheduleStatusType? scheduleStatusType,
    @Default(null) ScheduleType? scheduleType,
    @Default(-1) int totalNumberOfTime,
    @Default(-1) int leftNumberOfTime,
    @Default("") String schedulePrecautions,
    @Default(-1) int classInfoId,
    @Default("") String repeatName,
    @Default(-1) int voucherMatchingId,
    @Default(VoucherInfoEntity()) VoucherInfoEntity voucherInfoEntity,
    @Default(UserInfoEntity()) UserInfoEntity userInfo
  }) = _ScheduleDetailEntity;
}