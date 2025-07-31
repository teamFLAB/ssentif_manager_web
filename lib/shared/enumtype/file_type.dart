enum FileType {
  image,
  video;

  static const _imageDto = "IMAGE";
  static const _videoDto = "VIDEO";

  static FileType findFileType(String dto) {
    if(dto == _imageDto) {
      return FileType.image;
    } else {
      return FileType.video;
    }
  }
}