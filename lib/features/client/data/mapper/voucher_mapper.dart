import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/client/data/model/voucher_model.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_color_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_status_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/purchase_type.dart';

class CurrencyFormatter {
  String formatCurrency(int amount) {
    final formatter = NumberFormat.currency(locale: "ko_KR", symbol: "");
    return formatter.format(amount);
  }
}

class VoucherMapper {
  final CurrencyFormatter currencyFormatter;

  VoucherMapper({required this.currencyFormatter});

  VoucherEntity map(VoucherModel data) {
    var todayDate = DateFormat(Constants.dateFormat).format(DateTime.now());
    var expiredDate = "";
    try {
      expiredDate = data.expiredDate.convertDateFormat(
        formatBefore: Constants.dateFormat,
        formatAfter: Constants.dateFormat
      );
    } catch(e) {
      expiredDate = data.expiredDate;
    }

    return VoucherEntity(
      voucherId: data.id,
      voucherName: data.name,
      expiredDate: data.expiredDate,
      runningTime: data.voucherTakeTime,
      remainCount: data.leftNumberOfTime,
      totalCount: data.totalNumberOfTime,
      voucherColorType: VoucherColorType.findColorType(data.voucherColor),
      reservationCount: data.reservationCount,
      voucherMatchingId: data.voucherMatchingId,
      voucherStatusType: expiredDate.compareTo(todayDate) == -1 
          ? VoucherStatusType.complete 
          : VoucherStatusType.findType(data.classStatus),
      voucherType: VoucherType.findType(data.voucherType),
      purchaseType: PurchaseType.findType(data.voucherRegistrationType),
      feePerSession: currencyFormatter.formatCurrency(data.voucherFeePerSession),
      priceOfVoucher: currencyFormatter.formatCurrency(data.voucherSalesPrice),
      isGroupVoucher: data.isGroupVoucher,
      groupClients: data.groupParticipants.map((user) {
        return UserEntity(
          userId: user.id,
          userName: user.name,
          imageUrl: user.img,
          phoneNumber: user.phoneNumber,
          gender: GenderType.findGenderType(user.sex),
          age: user.age.toString(),
          exercisePurposes: user.exercisePurposes
        );
      }).toList()
    );
  }
}

final voucherMapperProvider = Provider<VoucherMapper>((ref) {
  return VoucherMapper(currencyFormatter: CurrencyFormatter());
});

