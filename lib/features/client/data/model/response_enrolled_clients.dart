import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_list_model.dart';

part 'response_enrolled_clients.freezed.dart';
part 'response_enrolled_clients.g.dart';

@freezed
class ResponseEnrolledClients with _$ResponseEnrolledClients {
  factory ResponseEnrolledClients({
    @Default([]) List<ClientListModel> matchingClientDtos,
    @Default([]) List<ClientListModel> createClientDtos,
  }) = _ResponseEnrolledClients;

  factory ResponseEnrolledClients.fromJson(Map<String, dynamic> json) => _$ResponseEnrolledClientsFromJson(json);
}