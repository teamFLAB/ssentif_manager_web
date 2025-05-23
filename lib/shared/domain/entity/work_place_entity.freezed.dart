// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkPlaceEntity _$WorkPlaceEntityFromJson(Map<String, dynamic> json) {
  return _WorkPlaceEntity.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceEntityCopyWith<WorkPlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceEntityCopyWith<$Res> {
  factory $WorkPlaceEntityCopyWith(
          WorkPlaceEntity value, $Res Function(WorkPlaceEntity) then) =
      _$WorkPlaceEntityCopyWithImpl<$Res, WorkPlaceEntity>;
  @useResult
  $Res call({int id, String name, String address, String addressDetail});
}

/// @nodoc
class _$WorkPlaceEntityCopyWithImpl<$Res, $Val extends WorkPlaceEntity>
    implements $WorkPlaceEntityCopyWith<$Res> {
  _$WorkPlaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkPlaceEntityImplCopyWith<$Res>
    implements $WorkPlaceEntityCopyWith<$Res> {
  factory _$$WorkPlaceEntityImplCopyWith(_$WorkPlaceEntityImpl value,
          $Res Function(_$WorkPlaceEntityImpl) then) =
      __$$WorkPlaceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String address, String addressDetail});
}

/// @nodoc
class __$$WorkPlaceEntityImplCopyWithImpl<$Res>
    extends _$WorkPlaceEntityCopyWithImpl<$Res, _$WorkPlaceEntityImpl>
    implements _$$WorkPlaceEntityImplCopyWith<$Res> {
  __$$WorkPlaceEntityImplCopyWithImpl(
      _$WorkPlaceEntityImpl _value, $Res Function(_$WorkPlaceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkPlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_$WorkPlaceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkPlaceEntityImpl implements _WorkPlaceEntity {
  _$WorkPlaceEntityImpl(
      {this.id = -1,
      this.name = "",
      this.address = "",
      this.addressDetail = ""});

  factory _$WorkPlaceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String addressDetail;

  @override
  String toString() {
    return 'WorkPlaceEntity(id: $id, name: $name, address: $address, addressDetail: $addressDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, address, addressDetail);

  /// Create a copy of WorkPlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceEntityImplCopyWith<_$WorkPlaceEntityImpl> get copyWith =>
      __$$WorkPlaceEntityImplCopyWithImpl<_$WorkPlaceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceEntityImplToJson(
      this,
    );
  }
}

abstract class _WorkPlaceEntity implements WorkPlaceEntity {
  factory _WorkPlaceEntity(
      {final int id,
      final String name,
      final String address,
      final String addressDetail}) = _$WorkPlaceEntityImpl;

  factory _WorkPlaceEntity.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get addressDetail;

  /// Create a copy of WorkPlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceEntityImplCopyWith<_$WorkPlaceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
