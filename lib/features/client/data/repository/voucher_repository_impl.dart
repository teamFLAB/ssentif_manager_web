import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/voucher_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/voucher_history_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/voucher_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_history_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/voucher_repository.dart';

class VoucherRepositoryImpl extends VoucherRepository {
  final VoucherDataSource voucherDataSource;
  final VoucherMapper voucherMapper;
  final VoucherHistoryMapper voucherHistoryMapper;

  VoucherRepositoryImpl({
    required this.voucherDataSource,
    required this.voucherMapper,
    required this.voucherHistoryMapper,
  });

  @override
  Future<ApiStatusEntity<List<VoucherEntity>>> getClientVoucherList(int clientId, bool active) async {
    try {
      var response = await voucherDataSource.getClientVoucherList(clientId, active);
      var vouchers = response.clientsVoucherInfoDtos.map((voucherModel) {
        return voucherMapper.map(voucherModel);
      }).toList();
      vouchers.sort((a, b) => a.expiredDate.compareTo(b.expiredDate));
      return ApiStatusEntity(data: vouchers);
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<List<VoucherHistoryEntity>>> getClientVoucherHistories(int voucherMatchingId) async {
    try {
      var response = await voucherDataSource.getVoucherHistories(voucherMatchingId);
      var histories = response.classInfoSimpleDtoList.map((historyModel) {
        return voucherHistoryMapper.map(historyModel);
      }).toList();
      return ApiStatusEntity(data: histories);
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}

