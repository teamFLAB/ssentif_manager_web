import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/monthly_schedule_count_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';

final monthlyScheduleCountMapperProvider =
    Provider<MonthlyScheduleCountMapper>((ref) {
  return MonthlyScheduleCountMapper();
});

class MonthlyScheduleCountMapper
    extends BaseMapper<MonthlyScheduleCountModel, MonthlyScheduleCountEntity> {
  MonthlyScheduleCountMapper();

  @override
  MonthlyScheduleCountEntity map(MonthlyScheduleCountModel data) {
    return MonthlyScheduleCountEntity(
      yearMonth: data.date,
      count: data.scheduleCount,
    );
  }
}

