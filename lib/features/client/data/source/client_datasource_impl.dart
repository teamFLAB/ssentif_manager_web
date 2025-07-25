import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/data/model/client_profile_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/client_datasource.dart';

class ClientDataSourceImpl extends ClientDataSource {
  final ApiService apiService;

  ClientDataSourceImpl({required this.apiService});
  @override
  Future<ResponseEnrolledClients> getInClassMembers({required int trainerId}) {
    return apiService.getInClassMembers(trainerId: trainerId);
  }

  @override
  Future<ClientProfileModel?> getClientProfile({
    required int trainerId,
    required int clientId
  }) {
    return apiService.getClientProfile(trainerId: trainerId, clientId: clientId);
  }
}
