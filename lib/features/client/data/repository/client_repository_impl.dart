import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/client_list_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/client_profile_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/client_monthly_calendar_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/client_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/client_repository.dart';

import '../../../../shared/enumtype/client_calendar_event_type.dart';
import '../../domain/entity/calendar_event_entity.dart';

class ClientRepositoryImpl extends ClientRepository {
  final ClientDataSource clientDataSource;
  final ClientListMapper clientListMapper;
  final ClientProfileMapper clientProfileMapper;
  final ClientMonthlyCalendarMapper clientMonthlyCalendarMapper;

  ClientRepositoryImpl({
    required this.clientDataSource,
    required this.clientListMapper,
    required this.clientProfileMapper,
    required this.clientMonthlyCalendarMapper,
  });

  @override
  Future<ApiStatusEntity<List<ClientListEntity>>> getInClassMembers(
      {required int trainerId}) async {
    try {
      var response =
          await clientDataSource.getInClassMembers(trainerId: trainerId);
      var createdClient = response.createClientDtos.map((e) {
        return clientListMapper.map((e));
      }).toList();
      var matchedClient = response.matchingClientDtos.map((e) {
        return clientListMapper.map((e));
      }).toList();

      return ApiStatusEntity(data: [...matchedClient, ...createdClient]);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<ClientProfileEntity>> getClientProfile({
    required int trainerId,
    required int clientId,
  }) async {
    try {
      print("2131241242");

      var response = await clientDataSource.getClientProfile(
          trainerId: trainerId, clientId: clientId);
      if (response != null) {
        var clientProfile = clientProfileMapper.map(response);
        return ApiStatusEntity(data: clientProfile);
      } else {
        return ApiStatusEntity(
            statusType: StatusType.MOBILE_CLIENT_ERROR, data: null);
      }
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<ClientMonthlyCalendarEntity>> getClientMonthlyEvents({
    required int trainerId,
    required int year,
    required int month,
    required int clientId
  }) async {
    try {
      var response = await clientDataSource.getClientMonthlyEvents(
          trainerId: trainerId,
          year: year,
          month: month,
          clientId: clientId
      );
      var countData = response.calendarCountResponse;
      List<CalendarEventEntity> events = clientMonthlyCalendarMapper.map(response);
      var classReservationWaitCounts = events.where((e) => e.eventType == ClientCalendarEventType.classRequestEvent).length;
      var classReservationCompleteCounts = events.where((e) => e.eventType == ClientCalendarEventType.reservationCompleteEvent).length;
      var classCompleteCounts = events.where((e) => e.eventType == ClientCalendarEventType.classCompleteEvent).length;

      return ApiStatusEntity(
        data: ClientMonthlyCalendarEntity(
            workoutCounts: countData.workoutCounts,
            classReservationCompleteCounts: classReservationCompleteCounts,
            classReservationWaitCounts: classReservationWaitCounts,
            classCompleteCounts: classCompleteCounts,
            dietCounts: countData.dietCounts,
            events: events
        )
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}
