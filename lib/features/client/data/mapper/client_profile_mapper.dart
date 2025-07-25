import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_profile_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/shared/data/mapper/user_info_mapper.dart';

class ClientProfileMapper {
  final UserInfoMapper userInfoMapper;

  ClientProfileMapper({required this.userInfoMapper});

  ClientProfileEntity map(ClientProfileModel model) {
    return ClientProfileEntity(
      searchUserInfoDto: userInfoMapper.map(model.searchUserInfoDto),
      matchingInfoSimpleDto: MatchingInfoEntity(
        leftNumberOfTime: model.matchingInfoSimpleDto.leftNumberOfTime,
        matchingMemo: model.matchingInfoSimpleDto.matchingMemo,
      ),
      classInfoDto: ClassInfoEntity(
        totalClassCounts: model.classInfoDto.totalClassCounts,
        totalDaysCounts: model.classInfoDto.totalDaysCounts,
      ),
    );
  }
}

final clientProfileMapperProvider = Provider<ClientProfileMapper>((ref) {
  final userInfoMapper = ref.read(userInfoMapperProvider);
  return ClientProfileMapper(userInfoMapper: userInfoMapper);
});
