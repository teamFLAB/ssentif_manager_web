

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/shared/data/source/user_datasource_impl.dart';

import '../model/user_profile_model.dart';

final userDataSourceProvider = Provider<UserDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return UserDataSourceImpl(apiService: apiService);
});

abstract class UserDataSource {
  Future<UserProfileModel> getUserProfile();
  Future<List<UserProfileModel>> getCoachList({ required int workPlaceId });
}