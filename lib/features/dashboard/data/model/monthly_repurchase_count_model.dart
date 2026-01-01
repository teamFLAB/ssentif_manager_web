import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_repurchase_count_model.freezed.dart';
part 'monthly_repurchase_count_model.g.dart';

@freezed
class MonthlyRepurchaseCountModel with _$MonthlyRepurchaseCountModel {
  factory MonthlyRepurchaseCountModel({
    required String date,
    required int repurchaseCount,
  }) = _MonthlyRepurchaseCountModel;

  factory MonthlyRepurchaseCountModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyRepurchaseCountModelFromJson(json);
}


