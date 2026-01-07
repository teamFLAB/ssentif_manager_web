import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/voucher_repository.dart';

class GetClientVoucherListUseCase {
  final VoucherRepository voucherRepository;

  GetClientVoucherListUseCase({required this.voucherRepository});

  Future<ApiStatusEntity<List<VoucherEntity>>> call({
    required int clientId,
    required bool active,
  }) {
    return voucherRepository.getClientVoucherList(clientId, active);
  }
}

final getClientVoucherListUseCaseProvider =
    Provider<GetClientVoucherListUseCase>((ref) {
  final repository = ref.read(voucherRepositoryProvider);
  return GetClientVoucherListUseCase(voucherRepository: repository);
});

