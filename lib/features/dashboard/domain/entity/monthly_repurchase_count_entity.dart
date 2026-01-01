import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_repurchase_count_entity.freezed.dart';

@freezed
class MonthlyRepurchaseCountEntity with _$MonthlyRepurchaseCountEntity {
  const factory MonthlyRepurchaseCountEntity({
    required String yearMonth,
    required int count,
  }) = _MonthlyRepurchaseCountEntity;
}


