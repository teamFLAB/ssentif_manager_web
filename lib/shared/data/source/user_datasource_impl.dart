

import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';
import 'package:ssentif_manager_web/shared/data/source/user_datasource.dart';

class UserDataSourceImpl extends UserDataSource {
  final ApiService apiService;

  UserDataSourceImpl({required this.apiService});

  @override
  Future<UserProfileModel> getUserProfile() {
    return apiService.getUserProfile();
  }

  @override
  Future<List<UserProfileModel>> getCoachList({required int workPlaceId}) {
    return apiService.getCoachList(workPlaceId: workPlaceId);
  }

}