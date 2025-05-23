

import 'package:ssentif_manager_web/shared/data/mapper/user_profile_mapper.dart';
import 'package:ssentif_manager_web/shared/data/source/user_datasource.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/domain/respository/user_repository.dart';

import '../../../core/network/api_status_entity.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource userDataSource;
  final UserProfileMapper userProfileMapper;

  UserRepositoryImpl({
    required this.userDataSource,
    required this.userProfileMapper
  });

  @override
  Future<ApiStatusEntity<UserEntity>> getUserInfo() async {
    try {
      var response = await userDataSource.getUserProfile();
      return ApiStatusEntity(
          data: userProfileMapper.map(response)
      );
    } catch(e) {
      return e.toErrorEntity();
    }

  }

}