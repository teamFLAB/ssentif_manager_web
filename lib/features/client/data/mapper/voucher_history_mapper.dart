import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_history_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_history_entity.dart';

final voucherHistoryMapperProvider = Provider<VoucherHistoryMapper>((ref) {
  return VoucherHistoryMapper();
});

class VoucherHistoryMapper
    extends BaseMapper<VoucherHistoryModel, VoucherHistoryEntity> {
  @override
  VoucherHistoryEntity map(VoucherHistoryModel data) {
    return VoucherHistoryEntity(
      classInfoId: data.classInfoId,
      classStartDate: data.classStartDate,
      time: data.time,
      currentLessonCount: data.currentLessonCount,
      routineName: data.routineName,
      leftNumberOfTime: data.leftNumberOfTime,
    );
  }
}

