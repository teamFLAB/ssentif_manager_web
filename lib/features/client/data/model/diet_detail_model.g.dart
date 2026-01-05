// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DietModelImpl _$$DietModelImplFromJson(Map<String, dynamic> json) =>
    _$DietModelImpl(
      id: (json['id'] as num?)?.toInt(),
      time: json['time'] as String? ?? "",
      img: (json['img'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      mealTime: json['mealTime'] as String? ?? "",
      mealType: json['mealType'] as String? ?? "",
      memo: json['memo'] as String? ?? "",
      feedbackResponse: json['feedbackResponse'] == null
          ? null
          : DietFeedbackModel.fromJson(
              json['feedbackResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DietModelImplToJson(_$DietModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'img': instance.img,
      'mealTime': instance.mealTime,
      'mealType': instance.mealType,
      'memo': instance.memo,
      'feedbackResponse': instance.feedbackResponse,
    };

_$DietFeedbackModelImpl _$$DietFeedbackModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DietFeedbackModelImpl(
      tag: json['tag'] as String? ?? "",
      increase: (json['increase'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      decrease: (json['decrease'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      feedback: json['feedback'] as String? ?? "",
    );

Map<String, dynamic> _$$DietFeedbackModelImplToJson(
        _$DietFeedbackModelImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'increase': instance.increase,
      'decrease': instance.decrease,
      'feedback': instance.feedback,
    };
