// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseSetModel _$ExerciseSetModelFromJson(Map<String, dynamic> json) {
  return _ExerciseSetModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSetModel {
  double get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  /// Serializes this ExerciseSetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseSetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseSetModelCopyWith<ExerciseSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetModelCopyWith<$Res> {
  factory $ExerciseSetModelCopyWith(
          ExerciseSetModel value, $Res Function(ExerciseSetModel) then) =
      _$ExerciseSetModelCopyWithImpl<$Res, ExerciseSetModel>;
  @useResult
  $Res call({double weight, int reps, int time});
}

/// @nodoc
class _$ExerciseSetModelCopyWithImpl<$Res, $Val extends ExerciseSetModel>
    implements $ExerciseSetModelCopyWith<$Res> {
  _$ExerciseSetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseSetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetModelImplCopyWith<$Res>
    implements $ExerciseSetModelCopyWith<$Res> {
  factory _$$ExerciseSetModelImplCopyWith(_$ExerciseSetModelImpl value,
          $Res Function(_$ExerciseSetModelImpl) then) =
      __$$ExerciseSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, int reps, int time});
}

/// @nodoc
class __$$ExerciseSetModelImplCopyWithImpl<$Res>
    extends _$ExerciseSetModelCopyWithImpl<$Res, _$ExerciseSetModelImpl>
    implements _$$ExerciseSetModelImplCopyWith<$Res> {
  __$$ExerciseSetModelImplCopyWithImpl(_$ExerciseSetModelImpl _value,
      $Res Function(_$ExerciseSetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseSetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
    Object? time = null,
  }) {
    return _then(_$ExerciseSetModelImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseSetModelImpl implements _ExerciseSetModel {
  _$ExerciseSetModelImpl({this.weight = 0, this.reps = 0, this.time = 0});

  factory _$ExerciseSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSetModelImplFromJson(json);

  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final int reps;
  @override
  @JsonKey()
  final int time;

  @override
  String toString() {
    return 'ExerciseSetModel(weight: $weight, reps: $reps, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetModelImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weight, reps, time);

  /// Create a copy of ExerciseSetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetModelImplCopyWith<_$ExerciseSetModelImpl> get copyWith =>
      __$$ExerciseSetModelImplCopyWithImpl<_$ExerciseSetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSetModelImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSetModel implements ExerciseSetModel {
  factory _ExerciseSetModel(
      {final double weight,
      final int reps,
      final int time}) = _$ExerciseSetModelImpl;

  factory _ExerciseSetModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseSetModelImpl.fromJson;

  @override
  double get weight;
  @override
  int get reps;
  @override
  int get time;

  /// Create a copy of ExerciseSetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseSetModelImplCopyWith<_$ExerciseSetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
