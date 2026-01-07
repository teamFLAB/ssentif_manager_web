// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherHistoryModelImpl _$$VoucherHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VoucherHistoryModelImpl(
      classInfoId: (json['classInfoId'] as num?)?.toInt() ?? -1,
      classStartDate: json['classStartDate'] as String? ?? "",
      time: json['time'] as String? ?? "",
      currentLessonCount: (json['currentLessonCount'] as num?)?.toInt() ?? 0,
      routineName: json['routineName'] as String? ?? "",
      leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$VoucherHistoryModelImplToJson(
        _$VoucherHistoryModelImpl instance) =>
    <String, dynamic>{
      'classInfoId': instance.classInfoId,
      'classStartDate': instance.classStartDate,
      'time': instance.time,
      'currentLessonCount': instance.currentLessonCount,
      'routineName': instance.routineName,
      'leftNumberOfTime': instance.leftNumberOfTime,
    };

_$ResponseVoucherHistoriesImpl _$$ResponseVoucherHistoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseVoucherHistoriesImpl(
      classInfoSimpleDtoList: (json['classInfoSimpleDtoList'] as List<dynamic>?)
              ?.map((e) =>
                  VoucherHistoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseVoucherHistoriesImplToJson(
        _$ResponseVoucherHistoriesImpl instance) =>
    <String, dynamic>{
      'classInfoSimpleDtoList': instance.classInfoSimpleDtoList,
    };
