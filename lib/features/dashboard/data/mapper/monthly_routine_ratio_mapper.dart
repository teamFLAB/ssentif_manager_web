import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/monthly_routine_ratio_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';

final monthlyRoutineRatioMapperProvider =
    Provider<MonthlyRoutineRatioMapper>((ref) {
  return MonthlyRoutineRatioMapper();
});

class MonthlyRoutineRatioMapper
    extends BaseMapper<MonthlyRoutineRatioModel, MonthlyRoutineRatioEntity> {
  MonthlyRoutineRatioMapper();

  @override
  MonthlyRoutineRatioEntity map(MonthlyRoutineRatioModel data) {
    return MonthlyRoutineRatioEntity(
      yearMonth: data.date,
      ratio: data.ratio,
    );
  }
}




