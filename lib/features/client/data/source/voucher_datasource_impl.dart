import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_history_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/voucher_datasource.dart';

class VoucherDataSourceImpl extends VoucherDataSource {
  final ApiService apiService;

  VoucherDataSourceImpl({required this.apiService});

  @override
  Future<ResponseClientVoucherList> getClientVoucherList(int clientId, bool active) {
    return apiService.getClientVoucherList(clientId: clientId, active: active);
  }

  @override
  Future<ResponseVoucherHistories> getVoucherHistories(int voucherMatchingId) {
    return apiService.getVoucherHistories(voucherMatchingId);
  }
}

