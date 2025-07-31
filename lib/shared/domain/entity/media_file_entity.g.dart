// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_file_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaFileEntityImpl _$$MediaFileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaFileEntityImpl(
      originalFileType:
          $enumDecodeNullable(_$FileTypeEnumMap, json['originalFileType']) ??
              FileType.image,
      remoteUrl: json['remoteUrl'] as String? ?? "",
      thumbnailUrl: json['thumbnailUrl'] as String? ?? "",
      localPath: json['localPath'] as String? ?? "",
      localThumbnailPath: json['localThumbnailPath'] as String? ?? "",
      onNetwork: json['onNetwork'] as bool? ?? false,
    );

Map<String, dynamic> _$$MediaFileEntityImplToJson(
        _$MediaFileEntityImpl instance) =>
    <String, dynamic>{
      'originalFileType': _$FileTypeEnumMap[instance.originalFileType]!,
      'remoteUrl': instance.remoteUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'localPath': instance.localPath,
      'localThumbnailPath': instance.localThumbnailPath,
      'onNetwork': instance.onNetwork,
    };

const _$FileTypeEnumMap = {
  FileType.image: 'image',
  FileType.video: 'video',
};
