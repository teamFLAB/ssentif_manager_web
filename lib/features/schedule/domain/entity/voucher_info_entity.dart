
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_info_entity.freezed.dart';

@freezed
class VoucherInfoEntity with _$VoucherInfoEntity {
  const factory VoucherInfoEntity({
    @Default(-1) int voucherId,
    @Default("") String voucherName,
    @Default("") String voucherColor,
    @Default("") String runningTime,
    @Default(false) bool isUsed,
    @Default("") String voucherType,
  }) = _VoucherInfoEntity;
}