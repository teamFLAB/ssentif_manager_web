import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/monthly_new_registration_count_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';

final monthlyNewRegistrationCountMapperProvider =
    Provider<MonthlyNewRegistrationCountMapper>((ref) {
  return MonthlyNewRegistrationCountMapper();
});

class MonthlyNewRegistrationCountMapper extends BaseMapper<
    MonthlyNewRegistrationCountModel, MonthlyNewRegistrationCountEntity> {
  MonthlyNewRegistrationCountMapper();

  @override
  MonthlyNewRegistrationCountEntity map(
      MonthlyNewRegistrationCountModel data) {
    return MonthlyNewRegistrationCountEntity(
      yearMonth: data.date,
      count: data.newRegistrationCount,
    );
  }
}



