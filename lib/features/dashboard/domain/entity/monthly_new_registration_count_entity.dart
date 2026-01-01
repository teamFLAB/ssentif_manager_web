import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_new_registration_count_entity.freezed.dart';

@freezed
class MonthlyNewRegistrationCountEntity
    with _$MonthlyNewRegistrationCountEntity {
  const factory MonthlyNewRegistrationCountEntity({
    required String yearMonth,
    required int count,
  }) = _MonthlyNewRegistrationCountEntity;
}



