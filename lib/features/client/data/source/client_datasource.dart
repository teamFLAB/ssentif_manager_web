import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_profile_model.dart';

import '../../../../core/network/api_service.dart';
import 'client_datasource_impl.dart';

final clientDataSourceProvider = Provider<ClientDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ClientDataSourceImpl(apiService: apiService);
});

abstract class ClientDataSource {
  Future<ResponseEnrolledClients> getInClassMembers({required int trainerId});

  Future<ClientProfileModel?> getClientProfile({
    required int trainerId,
    required int clientId
  });
}
