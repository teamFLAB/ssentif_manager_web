// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_file_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaFileEntity _$MediaFileEntityFromJson(Map<String, dynamic> json) {
  return _MediaFileEntity.fromJson(json);
}

/// @nodoc
mixin _$MediaFileEntity {
  FileType get originalFileType => throw _privateConstructorUsedError;
  String get remoteUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get localPath => throw _privateConstructorUsedError;
  String get localThumbnailPath => throw _privateConstructorUsedError;
  bool get onNetwork => throw _privateConstructorUsedError;

  /// Serializes this MediaFileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaFileEntityCopyWith<MediaFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFileEntityCopyWith<$Res> {
  factory $MediaFileEntityCopyWith(
          MediaFileEntity value, $Res Function(MediaFileEntity) then) =
      _$MediaFileEntityCopyWithImpl<$Res, MediaFileEntity>;
  @useResult
  $Res call(
      {FileType originalFileType,
      String remoteUrl,
      String thumbnailUrl,
      String localPath,
      String localThumbnailPath,
      bool onNetwork});
}

/// @nodoc
class _$MediaFileEntityCopyWithImpl<$Res, $Val extends MediaFileEntity>
    implements $MediaFileEntityCopyWith<$Res> {
  _$MediaFileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalFileType = null,
    Object? remoteUrl = null,
    Object? thumbnailUrl = null,
    Object? localPath = null,
    Object? localThumbnailPath = null,
    Object? onNetwork = null,
  }) {
    return _then(_value.copyWith(
      originalFileType: null == originalFileType
          ? _value.originalFileType
          : originalFileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      remoteUrl: null == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      localThumbnailPath: null == localThumbnailPath
          ? _value.localThumbnailPath
          : localThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      onNetwork: null == onNetwork
          ? _value.onNetwork
          : onNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaFileEntityImplCopyWith<$Res>
    implements $MediaFileEntityCopyWith<$Res> {
  factory _$$MediaFileEntityImplCopyWith(_$MediaFileEntityImpl value,
          $Res Function(_$MediaFileEntityImpl) then) =
      __$$MediaFileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FileType originalFileType,
      String remoteUrl,
      String thumbnailUrl,
      String localPath,
      String localThumbnailPath,
      bool onNetwork});
}

/// @nodoc
class __$$MediaFileEntityImplCopyWithImpl<$Res>
    extends _$MediaFileEntityCopyWithImpl<$Res, _$MediaFileEntityImpl>
    implements _$$MediaFileEntityImplCopyWith<$Res> {
  __$$MediaFileEntityImplCopyWithImpl(
      _$MediaFileEntityImpl _value, $Res Function(_$MediaFileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalFileType = null,
    Object? remoteUrl = null,
    Object? thumbnailUrl = null,
    Object? localPath = null,
    Object? localThumbnailPath = null,
    Object? onNetwork = null,
  }) {
    return _then(_$MediaFileEntityImpl(
      originalFileType: null == originalFileType
          ? _value.originalFileType
          : originalFileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      remoteUrl: null == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      localThumbnailPath: null == localThumbnailPath
          ? _value.localThumbnailPath
          : localThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      onNetwork: null == onNetwork
          ? _value.onNetwork
          : onNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaFileEntityImpl extends _MediaFileEntity {
  const _$MediaFileEntityImpl(
      {this.originalFileType = FileType.image,
      this.remoteUrl = "",
      this.thumbnailUrl = "",
      this.localPath = "",
      this.localThumbnailPath = "",
      this.onNetwork = false})
      : super._();

  factory _$MediaFileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaFileEntityImplFromJson(json);

  @override
  @JsonKey()
  final FileType originalFileType;
  @override
  @JsonKey()
  final String remoteUrl;
  @override
  @JsonKey()
  final String thumbnailUrl;
  @override
  @JsonKey()
  final String localPath;
  @override
  @JsonKey()
  final String localThumbnailPath;
  @override
  @JsonKey()
  final bool onNetwork;

  @override
  String toString() {
    return 'MediaFileEntity(originalFileType: $originalFileType, remoteUrl: $remoteUrl, thumbnailUrl: $thumbnailUrl, localPath: $localPath, localThumbnailPath: $localThumbnailPath, onNetwork: $onNetwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaFileEntityImpl &&
            (identical(other.originalFileType, originalFileType) ||
                other.originalFileType == originalFileType) &&
            (identical(other.remoteUrl, remoteUrl) ||
                other.remoteUrl == remoteUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.localThumbnailPath, localThumbnailPath) ||
                other.localThumbnailPath == localThumbnailPath) &&
            (identical(other.onNetwork, onNetwork) ||
                other.onNetwork == onNetwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, originalFileType, remoteUrl,
      thumbnailUrl, localPath, localThumbnailPath, onNetwork);

  /// Create a copy of MediaFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaFileEntityImplCopyWith<_$MediaFileEntityImpl> get copyWith =>
      __$$MediaFileEntityImplCopyWithImpl<_$MediaFileEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaFileEntityImplToJson(
      this,
    );
  }
}

abstract class _MediaFileEntity extends MediaFileEntity {
  const factory _MediaFileEntity(
      {final FileType originalFileType,
      final String remoteUrl,
      final String thumbnailUrl,
      final String localPath,
      final String localThumbnailPath,
      final bool onNetwork}) = _$MediaFileEntityImpl;
  const _MediaFileEntity._() : super._();

  factory _MediaFileEntity.fromJson(Map<String, dynamic> json) =
      _$MediaFileEntityImpl.fromJson;

  @override
  FileType get originalFileType;
  @override
  String get remoteUrl;
  @override
  String get thumbnailUrl;
  @override
  String get localPath;
  @override
  String get localThumbnailPath;
  @override
  bool get onNetwork;

  /// Create a copy of MediaFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaFileEntityImplCopyWith<_$MediaFileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
