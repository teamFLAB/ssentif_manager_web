
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel ({
    @Default("") String imgUrl,
    @Default("") String email,
    @Default("") String name,
    @Default("") String birthDate,
    @Default("") String phoneNumber,
    @Default("") String workplaceName,
    @Default("") String workplaceAddress,
    @Default("") String workplaceAddressDetail,
    @Default("") String workType,
    @Default("") String sex
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);
}
