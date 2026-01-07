import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_history_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/voucher_datasource_impl.dart';

final voucherDataSourceProvider = Provider<VoucherDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return VoucherDataSourceImpl(apiService: apiService);
});

abstract class VoucherDataSource {
  Future<ResponseClientVoucherList> getClientVoucherList(int clientId, bool active);
  Future<ResponseVoucherHistories> getVoucherHistories(int voucherMatchingId);
}

