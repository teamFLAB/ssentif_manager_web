import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';
import 'package:ssentif_manager_web/features/client/data/source/client_datasource.dart';

class ClientDataSourceImpl extends ClientDataSource {
  final ApiService apiService;

  ClientDataSourceImpl({required this.apiService});
  @override
  Future<ResponseEnrolledClients> getInClassMembers({
    required int trainerId
  }) {
    return apiService.getInClassMembers(trainerId: trainerId);
  }
}
