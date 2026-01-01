import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_repurchase_response.dart';

part 'workplace_repurchase_with_previous_month_response.freezed.dart';
part 'workplace_repurchase_with_previous_month_response.g.dart';

@freezed
class WorkplaceRepurchaseWithPreviousMonthResponse
    with _$WorkplaceRepurchaseWithPreviousMonthResponse {
  const factory WorkplaceRepurchaseWithPreviousMonthResponse({
    @Default(WorkplaceRepurchaseResponse()) WorkplaceRepurchaseResponse currentMonth,
    @Default(WorkplaceRepurchaseResponse()) WorkplaceRepurchaseResponse previousMonth,
  }) = _WorkplaceRepurchaseWithPreviousMonthResponse;

  factory WorkplaceRepurchaseWithPreviousMonthResponse.fromJson(
          Map<String, dynamic> json) =>
      _$WorkplaceRepurchaseWithPreviousMonthResponseFromJson(json);
}

