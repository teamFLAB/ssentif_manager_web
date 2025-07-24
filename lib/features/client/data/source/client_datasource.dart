import 'package:ssentif_manager_web/features/client/data/model/response_enrolled_clients.dart';

abstract class ClientDataSource {
  Future<ResponseEnrolledClients> getInClassMembers({
    required int trainerId
  });
}
