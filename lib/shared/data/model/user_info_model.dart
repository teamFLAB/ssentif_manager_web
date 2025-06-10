import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    @Default(-1) int id,
    @Default("") String img,
    @Default("") String name,
    @Default(-1) int age,
    @Default("") String sex,
    @Default("") String phoneNumber,
    @Default([]) List<String> exercisePurposes,
    @Default("") String classStatus,
    @Default("") String status,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);
}