// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetInfoEntity _$SetInfoEntityFromJson(Map<String, dynamic> json) {
  return _SetInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$SetInfoEntity {
  int get setOrder => throw _privateConstructorUsedError;
  ExerciseRecordType get recordType => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;
  double get reps => throw _privateConstructorUsedError;

  /// Serializes this SetInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetInfoEntityCopyWith<SetInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetInfoEntityCopyWith<$Res> {
  factory $SetInfoEntityCopyWith(
          SetInfoEntity value, $Res Function(SetInfoEntity) then) =
      _$SetInfoEntityCopyWithImpl<$Res, SetInfoEntity>;
  @useResult
  $Res call(
      {int setOrder,
      ExerciseRecordType recordType,
      double weight,
      double time,
      double reps});
}

/// @nodoc
class _$SetInfoEntityCopyWithImpl<$Res, $Val extends SetInfoEntity>
    implements $SetInfoEntityCopyWith<$Res> {
  _$SetInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setOrder = null,
    Object? recordType = null,
    Object? weight = null,
    Object? time = null,
    Object? reps = null,
  }) {
    return _then(_value.copyWith(
      setOrder: null == setOrder
          ? _value.setOrder
          : setOrder // ignore: cast_nullable_to_non_nullable
              as int,
      recordType: null == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as ExerciseRecordType,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetInfoEntityImplCopyWith<$Res>
    implements $SetInfoEntityCopyWith<$Res> {
  factory _$$SetInfoEntityImplCopyWith(
          _$SetInfoEntityImpl value, $Res Function(_$SetInfoEntityImpl) then) =
      __$$SetInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int setOrder,
      ExerciseRecordType recordType,
      double weight,
      double time,
      double reps});
}

/// @nodoc
class __$$SetInfoEntityImplCopyWithImpl<$Res>
    extends _$SetInfoEntityCopyWithImpl<$Res, _$SetInfoEntityImpl>
    implements _$$SetInfoEntityImplCopyWith<$Res> {
  __$$SetInfoEntityImplCopyWithImpl(
      _$SetInfoEntityImpl _value, $Res Function(_$SetInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setOrder = null,
    Object? recordType = null,
    Object? weight = null,
    Object? time = null,
    Object? reps = null,
  }) {
    return _then(_$SetInfoEntityImpl(
      setOrder: null == setOrder
          ? _value.setOrder
          : setOrder // ignore: cast_nullable_to_non_nullable
              as int,
      recordType: null == recordType
          ? _value.recordType
          : recordType // ignore: cast_nullable_to_non_nullable
              as ExerciseRecordType,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetInfoEntityImpl implements _SetInfoEntity {
  _$SetInfoEntityImpl(
      {this.setOrder = 0,
      this.recordType = ExerciseRecordType.weightAndReps,
      this.weight = 0,
      this.time = 0,
      this.reps = 0});

  factory _$SetInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetInfoEntityImplFromJson(json);

  @override
  @JsonKey()
  final int setOrder;
  @override
  @JsonKey()
  final ExerciseRecordType recordType;
  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final double time;
  @override
  @JsonKey()
  final double reps;

  @override
  String toString() {
    return 'SetInfoEntity(setOrder: $setOrder, recordType: $recordType, weight: $weight, time: $time, reps: $reps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInfoEntityImpl &&
            (identical(other.setOrder, setOrder) ||
                other.setOrder == setOrder) &&
            (identical(other.recordType, recordType) ||
                other.recordType == recordType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.reps, reps) || other.reps == reps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, setOrder, recordType, weight, time, reps);

  /// Create a copy of SetInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInfoEntityImplCopyWith<_$SetInfoEntityImpl> get copyWith =>
      __$$SetInfoEntityImplCopyWithImpl<_$SetInfoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _SetInfoEntity implements SetInfoEntity {
  factory _SetInfoEntity(
      {final int setOrder,
      final ExerciseRecordType recordType,
      final double weight,
      final double time,
      final double reps}) = _$SetInfoEntityImpl;

  factory _SetInfoEntity.fromJson(Map<String, dynamic> json) =
      _$SetInfoEntityImpl.fromJson;

  @override
  int get setOrder;
  @override
  ExerciseRecordType get recordType;
  @override
  double get weight;
  @override
  double get time;
  @override
  double get reps;

  /// Create a copy of SetInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInfoEntityImplCopyWith<_$SetInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
