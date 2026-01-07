import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/features/client/data/model/user_info_model.dart';

part 'voucher_model.freezed.dart';
part 'voucher_model.g.dart';

@freezed
class ResponseClientVoucherList with _$ResponseClientVoucherList {
  factory ResponseClientVoucherList({
    @Default("") String name,
    @Default([]) List<VoucherModel> clientsVoucherInfoDtos
  }) = _ResponseClientVoucherList;

  factory ResponseClientVoucherList.fromJson(Map<String, dynamic> json) => _$ResponseClientVoucherListFromJson(json);
}

@freezed
class VoucherModel with _$VoucherModel {
  factory VoucherModel({
    @Default(-1) int id,
    @Default(-1) int voucherMatchingId,
    @Default("") String name,
    @Default("") String classStatus,
    @Default(0) int totalNumberOfTime,
    @Default(0) int leftNumberOfTime,
    @Default(0) int reservationCount,
    @Default("") String expiredDate,
    @Default("") String voucherColor,
    @Default(-1) int voucherTakeTime,
    @Default("") String voucherType,
    @Default("") String voucherRegistrationType,
    @Default(0) int voucherFeePerSession,
    @Default(0) int voucherSalesPrice,
    @Default([]) List<UserInfoModel> groupParticipants,
    @Default(false) bool isGroupVoucher
  }) = _VoucherModel;

  factory VoucherModel.fromJson(Map<String, dynamic> json) =>
      _$VoucherModelFromJson(json);
}

