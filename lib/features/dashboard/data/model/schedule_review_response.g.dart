// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleReviewResponseImpl _$$ScheduleReviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleReviewResponseImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      scheduleId: (json['scheduleId'] as num?)?.toInt() ?? -1,
      trainerId: (json['trainerId'] as num?)?.toInt() ?? -1,
      trainerName: json['trainerName'] as String? ?? "",
      trainerProfileImage: json['trainerProfileImage'] as String? ?? "",
      clientId: (json['clientId'] as num?)?.toInt() ?? -1,
      clientName: json['clientName'] as String? ?? "",
      clientGender: json['clientGender'] as String? ?? "",
      scheduleDate: json['scheduleDate'] as String? ?? "",
      satisfaction: (json['satisfaction'] as num?)?.toDouble() ?? 0.0,
      review: json['review'] as String? ?? "",
      clientStatus: json['clientStatus'] as String? ?? "",
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$ScheduleReviewResponseImplToJson(
        _$ScheduleReviewResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'trainerId': instance.trainerId,
      'trainerName': instance.trainerName,
      'trainerProfileImage': instance.trainerProfileImage,
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'clientGender': instance.clientGender,
      'scheduleDate': instance.scheduleDate,
      'satisfaction': instance.satisfaction,
      'review': instance.review,
      'clientStatus': instance.clientStatus,
      'isRead': instance.isRead,
    };
