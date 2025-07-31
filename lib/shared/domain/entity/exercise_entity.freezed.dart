// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseEntity _$ExerciseEntityFromJson(Map<String, dynamic> json) {
  return _ExerciseEntity.fromJson(json);
}

/// @nodoc
mixin _$ExerciseEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ExercisePart? get bodyPart => throw _privateConstructorUsedError;
  ExerciseRecordType? get recordType => throw _privateConstructorUsedError;
  String get motionUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCustom => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this ExerciseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseEntityCopyWith<ExerciseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseEntityCopyWith<$Res> {
  factory $ExerciseEntityCopyWith(
          ExerciseEntity value, $Res Function(ExerciseEntity) then) =
      _$ExerciseEntityCopyWithImpl<$Res, ExerciseEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      ExercisePart? bodyPart,
      ExerciseRecordType? recordType,
      String motionUrl,
      String description,
      bool isCustom,
      bool isFavorite});
}

/// @nodoc
class _$ExerciseEntityCopyWithImpl<$Res, $Val extends ExerciseEntity>
    implements $ExerciseEntityCopyWith<$Res> {
  _$ExerciseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = freezed,
    Object? recordType = freezed,
    Object? motionUrl = null,
    Object? description = null,
    Object? isCustom = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as ExercisePart?,
      recordType: freezed == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as ExerciseRecordType?,
      motionUrl: null == motionUrl
          ? _value.motionUrl
          : motionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCustom: null == isCustom
          ? _value.isCustom
          : isCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseEntityImplCopyWith<$Res>
    implements $ExerciseEntityCopyWith<$Res> {
  factory _$$ExerciseEntityImplCopyWith(_$ExerciseEntityImpl value,
          $Res Function(_$ExerciseEntityImpl) then) =
      __$$ExerciseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      ExercisePart? bodyPart,
      ExerciseRecordType? recordType,
      String motionUrl,
      String description,
      bool isCustom,
      bool isFavorite});
}

/// @nodoc
class __$$ExerciseEntityImplCopyWithImpl<$Res>
    extends _$ExerciseEntityCopyWithImpl<$Res, _$ExerciseEntityImpl>
    implements _$$ExerciseEntityImplCopyWith<$Res> {
  __$$ExerciseEntityImplCopyWithImpl(
      _$ExerciseEntityImpl _value, $Res Function(_$ExerciseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = freezed,
    Object? recordType = freezed,
    Object? motionUrl = null,
    Object? description = null,
    Object? isCustom = null,
    Object? isFavorite = null,
  }) {
    return _then(_$ExerciseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as ExercisePart?,
      recordType: freezed == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as ExerciseRecordType?,
      motionUrl: null == motionUrl
          ? _value.motionUrl
          : motionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCustom: null == isCustom
          ? _value.isCustom
          : isCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseEntityImpl implements _ExerciseEntity {
  const _$ExerciseEntityImpl(
      {this.id = -1,
      this.name = "",
      this.bodyPart,
      this.recordType,
      this.motionUrl = "",
      this.description = "",
      this.isCustom = false,
      this.isFavorite = false});

  factory _$ExerciseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final ExercisePart? bodyPart;
  @override
  final ExerciseRecordType? recordType;
  @override
  @JsonKey()
  final String motionUrl;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isCustom;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'ExerciseEntity(id: $id, name: $name, bodyPart: $bodyPart, recordType: $recordType, motionUrl: $motionUrl, description: $description, isCustom: $isCustom, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.recordType, recordType) ||
                other.recordType == recordType) &&
            (identical(other.motionUrl, motionUrl) ||
                other.motionUrl == motionUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCustom, isCustom) ||
                other.isCustom == isCustom) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, bodyPart, recordType,
      motionUrl, description, isCustom, isFavorite);

  /// Create a copy of ExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseEntityImplCopyWith<_$ExerciseEntityImpl> get copyWith =>
      __$$ExerciseEntityImplCopyWithImpl<_$ExerciseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseEntityImplToJson(
      this,
    );
  }
}

abstract class _ExerciseEntity implements ExerciseEntity {
  const factory _ExerciseEntity(
      {final int id,
      final String name,
      final ExercisePart? bodyPart,
      final ExerciseRecordType? recordType,
      final String motionUrl,
      final String description,
      final bool isCustom,
      final bool isFavorite}) = _$ExerciseEntityImpl;

  factory _ExerciseEntity.fromJson(Map<String, dynamic> json) =
      _$ExerciseEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  ExercisePart? get bodyPart;
  @override
  ExerciseRecordType? get recordType;
  @override
  String get motionUrl;
  @override
  String get description;
  @override
  bool get isCustom;
  @override
  bool get isFavorite;

  /// Create a copy of ExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseEntityImplCopyWith<_$ExerciseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
