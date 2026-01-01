import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/data/model/workplace_new_registration_response.dart';

part 'workplace_new_registration_with_previous_month_response.freezed.dart';
part 'workplace_new_registration_with_previous_month_response.g.dart';

@freezed
class WorkplaceNewRegistrationWithPreviousMonthResponse
    with _$WorkplaceNewRegistrationWithPreviousMonthResponse {
  const factory WorkplaceNewRegistrationWithPreviousMonthResponse({
    @Default(WorkplaceNewRegistrationResponse())
    WorkplaceNewRegistrationResponse currentMonth,
    @Default(WorkplaceNewRegistrationResponse())
    WorkplaceNewRegistrationResponse previousMonth,
  }) = _WorkplaceNewRegistrationWithPreviousMonthResponse;

  factory WorkplaceNewRegistrationWithPreviousMonthResponse.fromJson(
          Map<String, dynamic> json) =>
      _$WorkplaceNewRegistrationWithPreviousMonthResponseFromJson(json);
}


