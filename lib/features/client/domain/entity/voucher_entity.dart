import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_color_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_status_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/purchase_type.dart';

part 'voucher_entity.freezed.dart';

@freezed
class VoucherEntity with _$VoucherEntity {
  factory VoucherEntity({
    @Default(-1) int voucherId,
    @Default("") String voucherName,
    @Default("") String expiredDate,
    @Default(0) int runningTime,
    @Default(0) int remainCount,
    @Default(0) int totalCount,
    @Default(VoucherColorType.blue) VoucherColorType voucherColorType,
    @Default(0) int reservationCount,
    @Default(-1) int voucherMatchingId,
    @Default(VoucherType.offline) VoucherType voucherType,
    @Default(VoucherStatusType.wait) VoucherStatusType voucherStatusType,
    @Default("") String priceOfVoucher,
    @Default("") String feePerSession,
    @Default(false) bool isGroupVoucher,
    @Default([]) List<UserEntity> groupClients,
    PurchaseType? purchaseType
  }) = _VoucherEntity;
}

