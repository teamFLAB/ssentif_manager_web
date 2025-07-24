// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientListModel _$ClientListModelFromJson(Map<String, dynamic> json) {
  return _ClientListModel.fromJson(json);
}

/// @nodoc
mixin _$ClientListModel {
  int get id => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get sex => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;

  /// Serializes this ClientListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientListModelCopyWith<ClientListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientListModelCopyWith<$Res> {
  factory $ClientListModelCopyWith(
          ClientListModel value, $Res Function(ClientListModel) then) =
      _$ClientListModelCopyWithImpl<$Res, ClientListModel>;
  @useResult
  $Res call(
      {int id,
      String img,
      String name,
      int age,
      String sex,
      String status,
      String phoneNumber,
      int leftNumberOfTime});
}

/// @nodoc
class _$ClientListModelCopyWithImpl<$Res, $Val extends ClientListModel>
    implements $ClientListModelCopyWith<$Res> {
  _$ClientListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? name = null,
    Object? age = null,
    Object? sex = null,
    Object? status = null,
    Object? phoneNumber = null,
    Object? leftNumberOfTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientListModelImplCopyWith<$Res>
    implements $ClientListModelCopyWith<$Res> {
  factory _$$ClientListModelImplCopyWith(_$ClientListModelImpl value,
          $Res Function(_$ClientListModelImpl) then) =
      __$$ClientListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String img,
      String name,
      int age,
      String sex,
      String status,
      String phoneNumber,
      int leftNumberOfTime});
}

/// @nodoc
class __$$ClientListModelImplCopyWithImpl<$Res>
    extends _$ClientListModelCopyWithImpl<$Res, _$ClientListModelImpl>
    implements _$$ClientListModelImplCopyWith<$Res> {
  __$$ClientListModelImplCopyWithImpl(
      _$ClientListModelImpl _value, $Res Function(_$ClientListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? name = null,
    Object? age = null,
    Object? sex = null,
    Object? status = null,
    Object? phoneNumber = null,
    Object? leftNumberOfTime = null,
  }) {
    return _then(_$ClientListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientListModelImpl implements _ClientListModel {
  _$ClientListModelImpl(
      {this.id = -1,
      this.img = "",
      this.name = "",
      this.age = 0,
      this.sex = "",
      this.status = "",
      this.phoneNumber = "",
      this.leftNumberOfTime = 0});

  factory _$ClientListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientListModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String img;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final String sex;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final int leftNumberOfTime;

  @override
  String toString() {
    return 'ClientListModel(id: $id, img: $img, name: $name, age: $age, sex: $sex, status: $status, phoneNumber: $phoneNumber, leftNumberOfTime: $leftNumberOfTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, img, name, age, sex, status,
      phoneNumber, leftNumberOfTime);

  /// Create a copy of ClientListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientListModelImplCopyWith<_$ClientListModelImpl> get copyWith =>
      __$$ClientListModelImplCopyWithImpl<_$ClientListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientListModelImplToJson(
      this,
    );
  }
}

abstract class _ClientListModel implements ClientListModel {
  factory _ClientListModel(
      {final int id,
      final String img,
      final String name,
      final int age,
      final String sex,
      final String status,
      final String phoneNumber,
      final int leftNumberOfTime}) = _$ClientListModelImpl;

  factory _ClientListModel.fromJson(Map<String, dynamic> json) =
      _$ClientListModelImpl.fromJson;

  @override
  int get id;
  @override
  String get img;
  @override
  String get name;
  @override
  int get age;
  @override
  String get sex;
  @override
  String get status;
  @override
  String get phoneNumber;
  @override
  int get leftNumberOfTime;

  /// Create a copy of ClientListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientListModelImplCopyWith<_$ClientListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
