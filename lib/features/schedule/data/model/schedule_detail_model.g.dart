// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDetailModelImpl _$$ScheduleDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDetailModelImpl(
      scheduleId: (json['scheduleId'] as num?)?.toInt() ?? -1,
      scheduleStartDateTime: json['scheduleStartDateTime'] as String? ?? "",
      scheduleEndDateTime: json['scheduleEndDateTime'] as String? ?? "",
      timeRequired: (json['timeRequired'] as num?)?.toInt() ?? -1,
      scheduleTitle: json['scheduleTitle'] as String? ?? "",
      scheduleMemo: json['scheduleMemo'] as String? ?? "",
      scheduleStatus: json['scheduleStatus'] as String? ?? "",
      scheduleType: json['scheduleType'] as String? ?? "",
      userInfoDto: json['userInfoDto'] == null
          ? const UserInfoModel()
          : UserInfoModel.fromJson(json['userInfoDto'] as Map<String, dynamic>),
      groupClients: (json['groupClients'] as List<dynamic>?)
              ?.map((e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      voucherInfoDto: json['voucherInfoDto'] == null
          ? const VoucherInfoModel()
          : VoucherInfoModel.fromJson(
              json['voucherInfoDto'] as Map<String, dynamic>),
      totalNumberOfTime: (json['totalNumberOfTime'] as num?)?.toInt() ?? -1,
      leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? -1,
      schedulePrecautions: json['schedulePrecautions'] as String? ?? "",
      classInfoId: (json['classInfoId'] as num?)?.toInt() ?? -1,
      weeks:
          (json['weeks'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      voucherMatchingId: (json['voucherMatchingId'] as num?)?.toInt() ?? -1,
      repeatName: json['repeatName'] as String? ?? "",
    );

Map<String, dynamic> _$$ScheduleDetailModelImplToJson(
        _$ScheduleDetailModelImpl instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'scheduleStartDateTime': instance.scheduleStartDateTime,
      'scheduleEndDateTime': instance.scheduleEndDateTime,
      'timeRequired': instance.timeRequired,
      'scheduleTitle': instance.scheduleTitle,
      'scheduleMemo': instance.scheduleMemo,
      'scheduleStatus': instance.scheduleStatus,
      'scheduleType': instance.scheduleType,
      'userInfoDto': instance.userInfoDto,
      'groupClients': instance.groupClients,
      'voucherInfoDto': instance.voucherInfoDto,
      'totalNumberOfTime': instance.totalNumberOfTime,
      'leftNumberOfTime': instance.leftNumberOfTime,
      'schedulePrecautions': instance.schedulePrecautions,
      'classInfoId': instance.classInfoId,
      'weeks': instance.weeks,
      'voucherMatchingId': instance.voucherMatchingId,
      'repeatName': instance.repeatName,
    };

_$ScheduleDetailHasRoutineModelImpl
    _$$ScheduleDetailHasRoutineModelImplFromJson(Map<String, dynamic> json) =>
        _$ScheduleDetailHasRoutineModelImpl(
          scheduleId: (json['scheduleId'] as num?)?.toInt() ?? -1,
          scheduleStartDateTime: json['scheduleStartDateTime'] as String? ?? "",
          scheduleEndDateTime: json['scheduleEndDateTime'] as String? ?? "",
          timeRequired: (json['timeRequired'] as num?)?.toInt() ?? -1,
          scheduleTitle: json['scheduleTitle'] as String? ?? "",
          scheduleMemo: json['scheduleMemo'] as String? ?? "",
          scheduleStatus: json['scheduleStatus'] as String? ?? "",
          scheduleType: json['scheduleType'] as String? ?? "",
          userInfoDto: json['userInfoDto'] == null
              ? const UserInfoModel()
              : UserInfoModel.fromJson(
                  json['userInfoDto'] as Map<String, dynamic>),
          groupClients: (json['groupClients'] as List<dynamic>?)
                  ?.map(
                      (e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          voucherInfoDto: json['voucherInfoDto'] == null
              ? const VoucherInfoModel()
              : VoucherInfoModel.fromJson(
                  json['voucherInfoDto'] as Map<String, dynamic>),
          totalNumberOfTime: (json['totalNumberOfTime'] as num?)?.toInt() ?? -1,
          leftNumberOfTime: (json['leftNumberOfTime'] as num?)?.toInt() ?? -1,
          schedulePrecautions: json['schedulePrecautions'] as String? ?? "",
          classInfoId: (json['classInfoId'] as num?)?.toInt() ?? -1,
          weeks: (json['weeks'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          voucherMatchingId: (json['voucherMatchingId'] as num?)?.toInt() ?? -1,
          repeatName: json['repeatName'] as String? ?? "",
          hasExercise: json['hasExercise'] as bool? ?? false,
        );

Map<String, dynamic> _$$ScheduleDetailHasRoutineModelImplToJson(
        _$ScheduleDetailHasRoutineModelImpl instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'scheduleStartDateTime': instance.scheduleStartDateTime,
      'scheduleEndDateTime': instance.scheduleEndDateTime,
      'timeRequired': instance.timeRequired,
      'scheduleTitle': instance.scheduleTitle,
      'scheduleMemo': instance.scheduleMemo,
      'scheduleStatus': instance.scheduleStatus,
      'scheduleType': instance.scheduleType,
      'userInfoDto': instance.userInfoDto,
      'groupClients': instance.groupClients,
      'voucherInfoDto': instance.voucherInfoDto,
      'totalNumberOfTime': instance.totalNumberOfTime,
      'leftNumberOfTime': instance.leftNumberOfTime,
      'schedulePrecautions': instance.schedulePrecautions,
      'classInfoId': instance.classInfoId,
      'weeks': instance.weeks,
      'voucherMatchingId': instance.voucherMatchingId,
      'repeatName': instance.repeatName,
      'hasExercise': instance.hasExercise,
    };

_$VoucherInfoModelImpl _$$VoucherInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VoucherInfoModelImpl(
      voucherId: (json['voucherId'] as num?)?.toInt() ?? -1,
      voucherName: json['voucherName'] as String? ?? "",
      voucherColor: json['voucherColor'] as String? ?? "",
      voucherTakeTime: (json['voucherTakeTime'] as num?)?.toInt() ?? -1,
      isUsing: json['isUsing'] as bool? ?? false,
      voucherType: json['voucherType'] as String? ?? "",
    );

Map<String, dynamic> _$$VoucherInfoModelImplToJson(
        _$VoucherInfoModelImpl instance) =>
    <String, dynamic>{
      'voucherId': instance.voucherId,
      'voucherName': instance.voucherName,
      'voucherColor': instance.voucherColor,
      'voucherTakeTime': instance.voucherTakeTime,
      'isUsing': instance.isUsing,
      'voucherType': instance.voucherType,
    };
