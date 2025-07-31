
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_url_model.freezed.dart';
part 'file_url_model.g.dart';


@freezed
class FileUrlModel with _$FileUrlModel {
  factory FileUrlModel({
    @Default("") String url,
    @Default("") String thumbnailUrl,
    @Default("") String fileType
  }) = _FileUrlModel;

  factory FileUrlModel.fromJson(Map<String, dynamic> json) => _$FileUrlModelFromJson(json);
}