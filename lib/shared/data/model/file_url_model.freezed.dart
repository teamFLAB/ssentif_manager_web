// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileUrlModel _$FileUrlModelFromJson(Map<String, dynamic> json) {
  return _FileUrlModel.fromJson(json);
}

/// @nodoc
mixin _$FileUrlModel {
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;

  /// Serializes this FileUrlModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileUrlModelCopyWith<FileUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUrlModelCopyWith<$Res> {
  factory $FileUrlModelCopyWith(
          FileUrlModel value, $Res Function(FileUrlModel) then) =
      _$FileUrlModelCopyWithImpl<$Res, FileUrlModel>;
  @useResult
  $Res call({String url, String thumbnailUrl, String fileType});
}

/// @nodoc
class _$FileUrlModelCopyWithImpl<$Res, $Val extends FileUrlModel>
    implements $FileUrlModelCopyWith<$Res> {
  _$FileUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnailUrl = null,
    Object? fileType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileUrlModelImplCopyWith<$Res>
    implements $FileUrlModelCopyWith<$Res> {
  factory _$$FileUrlModelImplCopyWith(
          _$FileUrlModelImpl value, $Res Function(_$FileUrlModelImpl) then) =
      __$$FileUrlModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String thumbnailUrl, String fileType});
}

/// @nodoc
class __$$FileUrlModelImplCopyWithImpl<$Res>
    extends _$FileUrlModelCopyWithImpl<$Res, _$FileUrlModelImpl>
    implements _$$FileUrlModelImplCopyWith<$Res> {
  __$$FileUrlModelImplCopyWithImpl(
      _$FileUrlModelImpl _value, $Res Function(_$FileUrlModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnailUrl = null,
    Object? fileType = null,
  }) {
    return _then(_$FileUrlModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUrlModelImpl implements _FileUrlModel {
  _$FileUrlModelImpl(
      {this.url = "", this.thumbnailUrl = "", this.fileType = ""});

  factory _$FileUrlModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUrlModelImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String thumbnailUrl;
  @override
  @JsonKey()
  final String fileType;

  @override
  String toString() {
    return 'FileUrlModel(url: $url, thumbnailUrl: $thumbnailUrl, fileType: $fileType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUrlModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, thumbnailUrl, fileType);

  /// Create a copy of FileUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUrlModelImplCopyWith<_$FileUrlModelImpl> get copyWith =>
      __$$FileUrlModelImplCopyWithImpl<_$FileUrlModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUrlModelImplToJson(
      this,
    );
  }
}

abstract class _FileUrlModel implements FileUrlModel {
  factory _FileUrlModel(
      {final String url,
      final String thumbnailUrl,
      final String fileType}) = _$FileUrlModelImpl;

  factory _FileUrlModel.fromJson(Map<String, dynamic> json) =
      _$FileUrlModelImpl.fromJson;

  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  String get fileType;

  /// Create a copy of FileUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileUrlModelImplCopyWith<_$FileUrlModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
