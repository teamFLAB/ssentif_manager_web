import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_list_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';

import '../../../../shared/enumtype/gender_type.dart';

class ClientListMapper {
  ClientListEntity map(ClientListModel data) {
    return ClientListEntity(
        clientId: data.id,
        profileImage: data.img,
        userName: data.name,
        age: data.age,
        gender: GenderType.findGenderType(data.sex),
        statusType: data.status.findMatchingStatusType(),
        phoneNumber: data.phoneNumber,
        leftCountOfVoucher: data.leftNumberOfTime
    );
  }
}

final enrolledClientsMapperProvider = Provider<ClientListMapper>((ref) {
  return ClientListMapper();
});
