import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/client_repository.dart';

import '../../../../core/network/api_status_entity.dart';

final getClientMonthlyEventsUseCaseProvider =
    Provider<GetClientMonthlyEventsUseCase>((ref) {
  final clientRepository = ref.read(clientRepositoryProvider);
  return GetClientMonthlyEventsUseCase(clientRepository: clientRepository);
});

class GetClientMonthlyEventsUseCase {
  final ClientRepository clientRepository;

  GetClientMonthlyEventsUseCase({required this.clientRepository});

  Future<ApiStatusEntity<ClientMonthlyCalendarEntity>> call({
    required int trainerId,
    required int year,
    required int month,
    required int clientId,
  }) async {
    return clientRepository.getClientMonthlyEvents(
      trainerId: trainerId,
      year: year,
      month: month,
      clientId: clientId,
    );
  }
}
