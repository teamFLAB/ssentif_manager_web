import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/client_list_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/client_list_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/client_datasource.dart';
import 'package:ssentif_manager_web/features/client/data/source/client_datasource_impl.dart';
import 'package:ssentif_manager_web/features/client/data/repository/client_repository_impl.dart';

import '../../../../core/network/api_status_entity.dart';
import '../entity/client_list_entity.dart';

abstract class ClientRepository {
  Future<ApiStatusEntity<List<ClientListEntity>>> getInClassMembers({
    required int trainerId
  });
}

final clientDataSourceProvider = Provider<ClientDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ClientDataSourceImpl(apiService: apiService);
});

final clientRepositoryProvider = Provider<ClientRepository>((ref) {
  final clientDataSource = ref.read(clientDataSourceProvider);
  final clientListMapper = ref.read(enrolledClientsMapperProvider);
  return ClientRepositoryImpl(
    clientDataSource: clientDataSource,
    clientListMapper: clientListMapper,
  );
});
