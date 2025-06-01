import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/shared/data/mapper/user_profile_mapper.dart';
import 'package:ssentif_manager_web/shared/data/source/user_datasource.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/data/repository/user_repository_impl.dart';

import '../../../core/network/api_status_entity.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final userDataSource = ref.read(userDataSourceProvider);
  final userProfileMapper = ref.read(userProfileMapperProvider);
  return UserRepositoryImpl(
      userDataSource: userDataSource, userProfileMapper: userProfileMapper);
});

abstract class UserRepository {
  Future<ApiStatusEntity<UserEntity>> getUserInfo();
  Future<ApiStatusEntity<List<UserEntity>>> getCoachList({required int workPlaceId});
}
