// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseClientVoucherListImpl _$$ResponseClientVoucherListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseClientVoucherListImpl(
      name: json['name'] as String? ?? "",
      clientsVoucherInfoDtos: (json['clientsVoucherInfoDtos'] as List<dynamic>?)
              ?.map((e) => VoucherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseClientVoucherListImplToJson(
        _$ResponseClientVoucherListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clientsVoucherInfoDtos': instance.clientsVoucherInfoDtos,
    };

_$VoucherModelImpl _$$VoucherModelImplFromJson(Map<String, dynamic> json) =>
    _$VoucherModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      voucherMatchingId: (json['voucherMatchingId'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      classStatus: json['classStatus'] as String? ?? "",
      totalNumberOfTime: (json['totalNumberOfTime'] as num?)?.toInt() ?? 0,
      leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? 0,
      reservationCount: (json['reservationCount'] as num?)?.toInt() ?? 0,
      expiredDate: json['expiredDate'] as String? ?? "",
      voucherColor: json['voucherColor'] as String? ?? "",
      voucherTakeTime: (json['voucherTakeTime'] as num?)?.toInt() ?? -1,
      voucherType: json['voucherType'] as String? ?? "",
      voucherRegistrationType: json['voucherRegistrationType'] as String? ?? "",
      voucherFeePerSession:
          (json['voucherFeePerSession'] as num?)?.toInt() ?? 0,
      voucherSalesPrice: (json['voucherSalesPrice'] as num?)?.toInt() ?? 0,
      groupParticipants: (json['groupParticipants'] as List<dynamic>?)
              ?.map((e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isGroupVoucher: json['isGroupVoucher'] as bool? ?? false,
    );

Map<String, dynamic> _$$VoucherModelImplToJson(_$VoucherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'voucherMatchingId': instance.voucherMatchingId,
      'name': instance.name,
      'classStatus': instance.classStatus,
      'totalNumberOfTime': instance.totalNumberOfTime,
      'leftNumberOfTime': instance.leftNumberOfTime,
      'reservationCount': instance.reservationCount,
      'expiredDate': instance.expiredDate,
      'voucherColor': instance.voucherColor,
      'voucherTakeTime': instance.voucherTakeTime,
      'voucherType': instance.voucherType,
      'voucherRegistrationType': instance.voucherRegistrationType,
      'voucherFeePerSession': instance.voucherFeePerSession,
      'voucherSalesPrice': instance.voucherSalesPrice,
      'groupParticipants': instance.groupParticipants,
      'isGroupVoucher': instance.isGroupVoucher,
    };
