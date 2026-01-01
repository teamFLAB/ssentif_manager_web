import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_new_registration_count_model.freezed.dart';
part 'monthly_new_registration_count_model.g.dart';

@freezed
class MonthlyNewRegistrationCountModel
    with _$MonthlyNewRegistrationCountModel {
  factory MonthlyNewRegistrationCountModel({
    required String date,
    required int newRegistrationCount,
  }) = _MonthlyNewRegistrationCountModel;

  factory MonthlyNewRegistrationCountModel.fromJson(
          Map<String, dynamic> json) =>
      _$MonthlyNewRegistrationCountModelFromJson(json);
}


