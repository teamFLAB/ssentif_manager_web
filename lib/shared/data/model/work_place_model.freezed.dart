// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkPlaceModel _$WorkPlaceModelFromJson(Map<String, dynamic> json) {
  return _WorkPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceModelCopyWith<WorkPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceModelCopyWith<$Res> {
  factory $WorkPlaceModelCopyWith(
          WorkPlaceModel value, $Res Function(WorkPlaceModel) then) =
      _$WorkPlaceModelCopyWithImpl<$Res, WorkPlaceModel>;
  @useResult
  $Res call({int id, String name, String address, String addressDetail});
}

/// @nodoc
class _$WorkPlaceModelCopyWithImpl<$Res, $Val extends WorkPlaceModel>
    implements $WorkPlaceModelCopyWith<$Res> {
  _$WorkPlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceModel
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
abstract class _$$WorkPlaceModelImplCopyWith<$Res>
    implements $WorkPlaceModelCopyWith<$Res> {
  factory _$$WorkPlaceModelImplCopyWith(_$WorkPlaceModelImpl value,
          $Res Function(_$WorkPlaceModelImpl) then) =
      __$$WorkPlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String address, String addressDetail});
}

/// @nodoc
class __$$WorkPlaceModelImplCopyWithImpl<$Res>
    extends _$WorkPlaceModelCopyWithImpl<$Res, _$WorkPlaceModelImpl>
    implements _$$WorkPlaceModelImplCopyWith<$Res> {
  __$$WorkPlaceModelImplCopyWithImpl(
      _$WorkPlaceModelImpl _value, $Res Function(_$WorkPlaceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_$WorkPlaceModelImpl(
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
class _$WorkPlaceModelImpl implements _WorkPlaceModel {
  _$WorkPlaceModelImpl(
      {this.id = -1,
      this.name = "",
      this.address = "",
      this.addressDetail = ""});

  factory _$WorkPlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceModelImplFromJson(json);

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
    return 'WorkPlaceModel(id: $id, name: $name, address: $address, addressDetail: $addressDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceModelImpl &&
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

  /// Create a copy of WorkPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceModelImplCopyWith<_$WorkPlaceModelImpl> get copyWith =>
      __$$WorkPlaceModelImplCopyWithImpl<_$WorkPlaceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceModelImplToJson(
      this,
    );
  }
}

abstract class _WorkPlaceModel implements WorkPlaceModel {
  factory _WorkPlaceModel(
      {final int id,
      final String name,
      final String address,
      final String addressDetail}) = _$WorkPlaceModelImpl;

  factory _WorkPlaceModel.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get addressDetail;

  /// Create a copy of WorkPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceModelImplCopyWith<_$WorkPlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseWorkPlaceList _$ResponseWorkPlaceListFromJson(
    Map<String, dynamic> json) {
  return _ResponseWorkPlaceList.fromJson(json);
}

/// @nodoc
mixin _$ResponseWorkPlaceList {
  List<WorkPlaceModel> get workplaceList => throw _privateConstructorUsedError;

  /// Serializes this ResponseWorkPlaceList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseWorkPlaceList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseWorkPlaceListCopyWith<ResponseWorkPlaceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWorkPlaceListCopyWith<$Res> {
  factory $ResponseWorkPlaceListCopyWith(ResponseWorkPlaceList value,
          $Res Function(ResponseWorkPlaceList) then) =
      _$ResponseWorkPlaceListCopyWithImpl<$Res, ResponseWorkPlaceList>;
  @useResult
  $Res call({List<WorkPlaceModel> workplaceList});
}

/// @nodoc
class _$ResponseWorkPlaceListCopyWithImpl<$Res,
        $Val extends ResponseWorkPlaceList>
    implements $ResponseWorkPlaceListCopyWith<$Res> {
  _$ResponseWorkPlaceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseWorkPlaceList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workplaceList = null,
  }) {
    return _then(_value.copyWith(
      workplaceList: null == workplaceList
          ? _value.workplaceList
          : workplaceList // ignore: cast_nullable_to_non_nullable
              as List<WorkPlaceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseWorkPlaceListImplCopyWith<$Res>
    implements $ResponseWorkPlaceListCopyWith<$Res> {
  factory _$$ResponseWorkPlaceListImplCopyWith(
          _$ResponseWorkPlaceListImpl value,
          $Res Function(_$ResponseWorkPlaceListImpl) then) =
      __$$ResponseWorkPlaceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkPlaceModel> workplaceList});
}

/// @nodoc
class __$$ResponseWorkPlaceListImplCopyWithImpl<$Res>
    extends _$ResponseWorkPlaceListCopyWithImpl<$Res,
        _$ResponseWorkPlaceListImpl>
    implements _$$ResponseWorkPlaceListImplCopyWith<$Res> {
  __$$ResponseWorkPlaceListImplCopyWithImpl(_$ResponseWorkPlaceListImpl _value,
      $Res Function(_$ResponseWorkPlaceListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseWorkPlaceList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workplaceList = null,
  }) {
    return _then(_$ResponseWorkPlaceListImpl(
      workplaceList: null == workplaceList
          ? _value._workplaceList
          : workplaceList // ignore: cast_nullable_to_non_nullable
              as List<WorkPlaceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseWorkPlaceListImpl implements _ResponseWorkPlaceList {
  _$ResponseWorkPlaceListImpl(
      {final List<WorkPlaceModel> workplaceList = const []})
      : _workplaceList = workplaceList;

  factory _$ResponseWorkPlaceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseWorkPlaceListImplFromJson(json);

  final List<WorkPlaceModel> _workplaceList;
  @override
  @JsonKey()
  List<WorkPlaceModel> get workplaceList {
    if (_workplaceList is EqualUnmodifiableListView) return _workplaceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workplaceList);
  }

  @override
  String toString() {
    return 'ResponseWorkPlaceList(workplaceList: $workplaceList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseWorkPlaceListImpl &&
            const DeepCollectionEquality()
                .equals(other._workplaceList, _workplaceList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_workplaceList));

  /// Create a copy of ResponseWorkPlaceList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseWorkPlaceListImplCopyWith<_$ResponseWorkPlaceListImpl>
      get copyWith => __$$ResponseWorkPlaceListImplCopyWithImpl<
          _$ResponseWorkPlaceListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseWorkPlaceListImplToJson(
      this,
    );
  }
}

abstract class _ResponseWorkPlaceList implements ResponseWorkPlaceList {
  factory _ResponseWorkPlaceList({final List<WorkPlaceModel> workplaceList}) =
      _$ResponseWorkPlaceListImpl;

  factory _ResponseWorkPlaceList.fromJson(Map<String, dynamic> json) =
      _$ResponseWorkPlaceListImpl.fromJson;

  @override
  List<WorkPlaceModel> get workplaceList;

  /// Create a copy of ResponseWorkPlaceList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseWorkPlaceListImplCopyWith<_$ResponseWorkPlaceListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
