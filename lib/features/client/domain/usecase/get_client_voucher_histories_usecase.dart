import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_history_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/voucher_repository.dart';

class GetClientVoucherHistoriesUseCase {
  final VoucherRepository voucherRepository;

  GetClientVoucherHistoriesUseCase({required this.voucherRepository});

  Future<ApiStatusEntity<List<VoucherHistoryEntity>>> call({
    required int voucherMatchingId,
  }) {
    return voucherRepository.getClientVoucherHistories(voucherMatchingId);
  }
}

final getClientVoucherHistoriesUseCaseProvider =
    Provider<GetClientVoucherHistoriesUseCase>((ref) {
  final repository = ref.read(voucherRepositoryProvider);
  return GetClientVoucherHistoriesUseCase(voucherRepository: repository);
});

