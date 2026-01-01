// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_routine_ratio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyRoutineRatioModel _$MonthlyRoutineRatioModelFromJson(
    Map<String, dynamic> json) {
  return _MonthlyRoutineRatioModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyRoutineRatioModel {
  String get date => throw _privateConstructorUsedError;
  int get totalScheduleCount => throw _privateConstructorUsedError;
  int get routineScheduleCount => throw _privateConstructorUsedError;
  double get ratio => throw _privateConstructorUsedError;

  /// Serializes this MonthlyRoutineRatioModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyRoutineRatioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyRoutineRatioModelCopyWith<MonthlyRoutineRatioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRoutineRatioModelCopyWith<$Res> {
  factory $MonthlyRoutineRatioModelCopyWith(MonthlyRoutineRatioModel value,
          $Res Function(MonthlyRoutineRatioModel) then) =
      _$MonthlyRoutineRatioModelCopyWithImpl<$Res, MonthlyRoutineRatioModel>;
  @useResult
  $Res call(
      {String date,
      int totalScheduleCount,
      int routineScheduleCount,
      double ratio});
}

/// @nodoc
class _$MonthlyRoutineRatioModelCopyWithImpl<$Res,
        $Val extends MonthlyRoutineRatioModel>
    implements $MonthlyRoutineRatioModelCopyWith<$Res> {
  _$MonthlyRoutineRatioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyRoutineRatioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalScheduleCount = null,
    Object? routineScheduleCount = null,
    Object? ratio = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      totalScheduleCount: null == totalScheduleCount
          ? _value.totalScheduleCount
          : totalScheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
      routineScheduleCount: null == routineScheduleCount
          ? _value.routineScheduleCount
          : routineScheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyRoutineRatioModelImplCopyWith<$Res>
    implements $MonthlyRoutineRatioModelCopyWith<$Res> {
  factory _$$MonthlyRoutineRatioModelImplCopyWith(
          _$MonthlyRoutineRatioModelImpl value,
          $Res Function(_$MonthlyRoutineRatioModelImpl) then) =
      __$$MonthlyRoutineRatioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      int totalScheduleCount,
      int routineScheduleCount,
      double ratio});
}

/// @nodoc
class __$$MonthlyRoutineRatioModelImplCopyWithImpl<$Res>
    extends _$MonthlyRoutineRatioModelCopyWithImpl<$Res,
        _$MonthlyRoutineRatioModelImpl>
    implements _$$MonthlyRoutineRatioModelImplCopyWith<$Res> {
  __$$MonthlyRoutineRatioModelImplCopyWithImpl(
      _$MonthlyRoutineRatioModelImpl _value,
      $Res Function(_$MonthlyRoutineRatioModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyRoutineRatioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalScheduleCount = null,
    Object? routineScheduleCount = null,
    Object? ratio = null,
  }) {
    return _then(_$MonthlyRoutineRatioModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      totalScheduleCount: null == totalScheduleCount
          ? _value.totalScheduleCount
          : totalScheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
      routineScheduleCount: null == routineScheduleCount
          ? _value.routineScheduleCount
          : routineScheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyRoutineRatioModelImpl implements _MonthlyRoutineRatioModel {
  _$MonthlyRoutineRatioModelImpl(
      {required this.date,
      required this.totalScheduleCount,
      required this.routineScheduleCount,
      required this.ratio});

  factory _$MonthlyRoutineRatioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyRoutineRatioModelImplFromJson(json);

  @override
  final String date;
  @override
  final int totalScheduleCount;
  @override
  final int routineScheduleCount;
  @override
  final double ratio;

  @override
  String toString() {
    return 'MonthlyRoutineRatioModel(date: $date, totalScheduleCount: $totalScheduleCount, routineScheduleCount: $routineScheduleCount, ratio: $ratio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRoutineRatioModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalScheduleCount, totalScheduleCount) ||
                other.totalScheduleCount == totalScheduleCount) &&
            (identical(other.routineScheduleCount, routineScheduleCount) ||
                other.routineScheduleCount == routineScheduleCount) &&
            (identical(other.ratio, ratio) || other.ratio == ratio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, totalScheduleCount, routineScheduleCount, ratio);

  /// Create a copy of MonthlyRoutineRatioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRoutineRatioModelImplCopyWith<_$MonthlyRoutineRatioModelImpl>
      get copyWith => __$$MonthlyRoutineRatioModelImplCopyWithImpl<
          _$MonthlyRoutineRatioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyRoutineRatioModelImplToJson(
      this,
    );
  }
}

abstract class _MonthlyRoutineRatioModel implements MonthlyRoutineRatioModel {
  factory _MonthlyRoutineRatioModel(
      {required final String date,
      required final int totalScheduleCount,
      required final int routineScheduleCount,
      required final double ratio}) = _$MonthlyRoutineRatioModelImpl;

  factory _MonthlyRoutineRatioModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyRoutineRatioModelImpl.fromJson;

  @override
  String get date;
  @override
  int get totalScheduleCount;
  @override
  int get routineScheduleCount;
  @override
  double get ratio;

  /// Create a copy of MonthlyRoutineRatioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyRoutineRatioModelImplCopyWith<_$MonthlyRoutineRatioModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
