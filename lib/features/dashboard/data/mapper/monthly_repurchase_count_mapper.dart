import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/monthly_repurchase_count_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';

final monthlyRepurchaseCountMapperProvider =
    Provider<MonthlyRepurchaseCountMapper>((ref) {
  return MonthlyRepurchaseCountMapper();
});

class MonthlyRepurchaseCountMapper
    extends BaseMapper<MonthlyRepurchaseCountModel, MonthlyRepurchaseCountEntity> {
  MonthlyRepurchaseCountMapper();

  @override
  MonthlyRepurchaseCountEntity map(MonthlyRepurchaseCountModel data) {
    return MonthlyRepurchaseCountEntity(
      yearMonth: data.date,
      count: data.repurchaseCount,
    );
  }
}


