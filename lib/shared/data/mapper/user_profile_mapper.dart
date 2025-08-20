

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/shared/data/model/user_profile_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

import '../../enumtype/gender_type.dart';
import '../../enumtype/work_position.dart';

var userProfileMapperProvider = Provider<UserProfileMapper>((ref) {
  return UserProfileMapper();
});

class UserProfileMapper extends BaseMapper<UserProfileModel, UserEntity> {
  @override
  UserEntity map(UserProfileModel data) {
    return UserEntity(
        userId: data.id,
        userName: data.name,
        birthDate: data.birthDate,
        gender: GenderType.findGenderType(data.sex.isNotEmpty ? data.sex : GenderType.maleDto),
        imageUrl: data.imgUrl,
        email: data.email,
        phoneNumber: data.phoneNumber,
        workPlaceId: data.workplaceId,
        workPosition: data.workType.isNotEmpty
            ? WorkPosition.getWorkPositionFromDTO(data.workType)
            : null,
        workPlaceAddress: data.workplaceAddress,
        workPlaceAddressDetail: data.workplaceAddressDetail,
        workPlaceName: data.workplaceName
    );
  }
}