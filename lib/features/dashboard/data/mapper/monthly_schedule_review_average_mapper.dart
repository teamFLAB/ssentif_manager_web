import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/monthly_schedule_review_average_model.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';

final monthlyScheduleReviewAverageMapperProvider =
    Provider<MonthlyScheduleReviewAverageMapper>((ref) {
  return MonthlyScheduleReviewAverageMapper();
});

class MonthlyScheduleReviewAverageMapper {
  MonthlyScheduleReviewAverageEntity map(
      MonthlyScheduleReviewAverageModel model) {
    return MonthlyScheduleReviewAverageEntity(
      yearMonth: model.date,
      averageSatisfaction: model.averageSatisfaction,
    );
  }
}

