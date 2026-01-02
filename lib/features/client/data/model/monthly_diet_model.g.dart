// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_diet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyDietListModelImpl _$$MonthlyDietListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyDietListModelImpl(
      dietMonthlyResponses: (json['dietMonthlyResponses'] as List<dynamic>?)
              ?.map((e) =>
                  DailyDietThumbnailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MonthlyDietListModelImplToJson(
        _$MonthlyDietListModelImpl instance) =>
    <String, dynamic>{
      'dietMonthlyResponses': instance.dietMonthlyResponses,
    };

_$DailyDietThumbnailsModelImpl _$$DailyDietThumbnailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyDietThumbnailsModelImpl(
      date: json['date'] as String? ?? "",
      dietThumbnailResponses: (json['dietThumbnailResponses'] as List<dynamic>?)
              ?.map(
                  (e) => DietThumbnailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DailyDietThumbnailsModelImplToJson(
        _$DailyDietThumbnailsModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'dietThumbnailResponses': instance.dietThumbnailResponses,
    };

_$DietThumbnailModelImpl _$$DietThumbnailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DietThumbnailModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      img: (json['img'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      tag: json['tag'] as String? ?? "",
    );

Map<String, dynamic> _$$DietThumbnailModelImplToJson(
        _$DietThumbnailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'tag': instance.tag,
    };
