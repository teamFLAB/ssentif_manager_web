
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/base_mapper.dart';
import 'package:ssentif_manager_web/shared/data/model/user_info_model.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_info_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';

import '../../enumtype/gender_type.dart';

final userInfoMapperProvider = Provider<UserInfoMapper>((ref) {
  return UserInfoMapper();
});

class UserInfoMapper extends BaseMapper<UserInfoModel, UserInfoEntity> {
  @override
  UserInfoEntity map(UserInfoModel data) {
    return UserInfoEntity(
      userId: data.id,
      userName: data.name,
      imageUrl: data.img,
      phoneNumber: data.phoneNumber,
      age: data.age.toString(),
      gender: GenderType.findGenderType(
        data.sex.isNotEmpty
            ? data.sex
            : GenderType.maleDto,
      ),
      matchingStatus: data.status.findMatchingStatusType(),
      exercisePurposes: data.exercisePurposes,
    );
  }

}