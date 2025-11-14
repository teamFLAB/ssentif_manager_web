
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/shared/data/mapper/user_info_mapper.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

import '../../../../core/network/base_mapper.dart';
import '../../../../shared/enumtype/gender_type.dart';
import '../../../../shared/enumtype/schedule_type.dart';
import '../../domain/entity/schedule_detail_entity.dart';
import '../../domain/entity/voucher_info_entity.dart';
import '../../domain/enumtype/schedule_status_type.dart';
import '../model/schedule_detail_model.dart';

final scheduleDetailMapperProvider = Provider<ScheduleDetailMapper>((ref) {
  final userInfoMapper = ref.read(userInfoMapperProvider);
  return ScheduleDetailMapper(
      voucherInfoMapper: VoucherInfoMapper(),
      userInfoMapper: userInfoMapper
  );
});

class ScheduleDetailMapper extends BaseMapper<ScheduleDetailModel, ScheduleDetailEntity> {
  final VoucherInfoMapper voucherInfoMapper;
  final UserInfoMapper userInfoMapper;
  ScheduleDetailMapper({
    required this.voucherInfoMapper,
    required this.userInfoMapper
  });

  @override
  ScheduleDetailEntity map(ScheduleDetailModel data) {
    return ScheduleDetailEntity(
        scheduleId: data.scheduleId,
        startDate: data.scheduleStartDateTime
            .convertDateFormat(formatAfter: Constants.localizationDateFormat()),
        startTime: data.scheduleStartDateTime
            .convertDateFormat(formatAfter: Constants.hourMinutesFormat),
        endDate: data.scheduleEndDateTime
            .convertDateFormat(formatAfter: Constants.localizationDateFormat()),
        endTime: data.scheduleEndDateTime
            .convertDateFormat(formatAfter: Constants.hourMinutesFormat),
        runningTime: data.timeRequired,
        scheduleTitle: data.scheduleTitle,
        scheduleMemo: data.scheduleMemo,
        scheduleStatusType: ScheduleStatusTypeDto
            .findScheduleStatusType(data.scheduleStatus),
        scheduleType: ScheduleTypeDto
            .findScheduleType(data.scheduleType),
        totalNumberOfTime: data.totalNumberOfTime,
        leftNumberOfTime: data.leftNumberOfTime,
        schedulePrecautions: data.schedulePrecautions,
        classInfoId: data.classInfoId,
        repeatName: data.repeatName,
        voucherMatchingId: data.voucherMatchingId,
        voucherInfoEntity: voucherInfoMapper.map(data.voucherInfoDto),
        userInfo: userInfoMapper.map(data.userInfoDto),
        groupClients: data.groupClients.map((e) {
          return userInfoMapper.map(e);
        }).toList()
    );
  }
}

class VoucherInfoMapper extends BaseMapper<VoucherInfoModel, VoucherInfoEntity> {
  @override
  VoucherInfoEntity map(VoucherInfoModel data) {
    return VoucherInfoEntity(
        voucherId: data.voucherId,
        voucherName: data.voucherName,
        voucherColor: data.voucherColor,
        voucherType: data.voucherType,
        isUsed: data.isUsing
    );
  }
}