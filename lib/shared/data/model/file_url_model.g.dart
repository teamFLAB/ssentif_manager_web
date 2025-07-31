// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_url_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileUrlModelImpl _$$FileUrlModelImplFromJson(Map<String, dynamic> json) =>
    _$FileUrlModelImpl(
      url: json['url'] as String? ?? "",
      thumbnailUrl: json['thumbnailUrl'] as String? ?? "",
      fileType: json['fileType'] as String? ?? "",
    );

Map<String, dynamic> _$$FileUrlModelImplToJson(_$FileUrlModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'fileType': instance.fileType,
    };
