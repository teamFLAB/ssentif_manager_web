import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/repository/voucher_repository_impl.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/voucher_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/voucher_history_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/voucher_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_history_entity.dart';

final voucherRepositoryProvider = Provider<VoucherRepository>((ref) {
  final voucherDataSource = ref.read(voucherDataSourceProvider);
  final voucherMapper = ref.read(voucherMapperProvider);
  final voucherHistoryMapper = ref.read(voucherHistoryMapperProvider);
  return VoucherRepositoryImpl(
    voucherDataSource: voucherDataSource,
    voucherMapper: voucherMapper,
    voucherHistoryMapper: voucherHistoryMapper,
  );
});

abstract class VoucherRepository {
  Future<ApiStatusEntity<List<VoucherEntity>>> getClientVoucherList(int clientId, bool active);
  Future<ApiStatusEntity<List<VoucherHistoryEntity>>> getClientVoucherHistories(int voucherMatchingId);
}

