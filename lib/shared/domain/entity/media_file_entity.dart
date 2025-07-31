
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enumtype/file_type.dart';

part 'media_file_entity.freezed.dart';
part 'media_file_entity.g.dart';

@freezed
class MediaFileEntity with _$MediaFileEntity {
  const factory MediaFileEntity({
    @Default(FileType.image) FileType originalFileType,
    @Default("") String remoteUrl,
    @Default("") String thumbnailUrl,
    @Default("") String localPath,
    @Default("") String localThumbnailPath,
    @Default(false) bool onNetwork
  }) = _MediaFileEntity;

  const MediaFileEntity._();
  factory MediaFileEntity.fromJson(Map<String, dynamic> json) => _$MediaFileEntityFromJson(json);
}


extension MediaFileExt on MediaFileEntity {
  bool isVideoTypeUrl() {
    var fileUrl = remoteUrl.isNotEmpty ? remoteUrl : localPath;
    List<String> parts = fileUrl.split('.');
    String extension = parts.isNotEmpty ? parts.last.toLowerCase() : '';
    List<String> videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'mkv'];
    List<String> imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
    if (videoExtensions.contains(extension)) { return true; }
    if (imageExtensions.contains(extension)) { return false; }
    return false;
  }

  bool isVideoTypeThumbnail() {
    List<String> parts = thumbnailUrl.split('.');
    String extension = parts.isNotEmpty ? parts.last.toLowerCase() : '';
    List<String> videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'mkv'];
    List<String> imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
    if (videoExtensions.contains(extension.toLowerCase())) { return true; }
    if (imageExtensions.contains(extension.toLowerCase())) { return false; }
    return false;
  }

  bool isLottieUrl() {
    return remoteUrl.split('.').last.toLowerCase() == "json";
  }
}