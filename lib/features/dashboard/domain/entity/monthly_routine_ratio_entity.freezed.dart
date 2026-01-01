// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_routine_ratio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyRoutineRatioEntity {
  String get yearMonth => throw _privateConstructorUsedError;
  double get ratio => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyRoutineRatioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyRoutineRatioEntityCopyWith<MonthlyRoutineRatioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRoutineRatioEntityCopyWith<$Res> {
  factory $MonthlyRoutineRatioEntityCopyWith(MonthlyRoutineRatioEntity value,
          $Res Function(MonthlyRoutineRatioEntity) then) =
      _$MonthlyRoutineRatioEntityCopyWithImpl<$Res, MonthlyRoutineRatioEntity>;
  @useResult
  $Res call({String yearMonth, double ratio});
}

/// @nodoc
class _$MonthlyRoutineRatioEntityCopyWithImpl<$Res,
        $Val extends MonthlyRoutineRatioEntity>
    implements $MonthlyRoutineRatioEntityCopyWith<$Res> {
  _$MonthlyRoutineRatioEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyRoutineRatioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? ratio = null,
  }) {
    return _then(_value.copyWith(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as String,
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyRoutineRatioEntityImplCopyWith<$Res>
    implements $MonthlyRoutineRatioEntityCopyWith<$Res> {
  factory _$$MonthlyRoutineRatioEntityImplCopyWith(
          _$MonthlyRoutineRatioEntityImpl value,
          $Res Function(_$MonthlyRoutineRatioEntityImpl) then) =
      __$$MonthlyRoutineRatioEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yearMonth, double ratio});
}

/// @nodoc
class __$$MonthlyRoutineRatioEntityImplCopyWithImpl<$Res>
    extends _$MonthlyRoutineRatioEntityCopyWithImpl<$Res,
        _$MonthlyRoutineRatioEntityImpl>
    implements _$$MonthlyRoutineRatioEntityImplCopyWith<$Res> {
  __$$MonthlyRoutineRatioEntityImplCopyWithImpl(
      _$MonthlyRoutineRatioEntityImpl _value,
      $Res Function(_$MonthlyRoutineRatioEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyRoutineRatioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? ratio = null,
  }) {
    return _then(_$MonthlyRoutineRatioEntityImpl(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as String,
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MonthlyRoutineRatioEntityImpl implements _MonthlyRoutineRatioEntity {
  const _$MonthlyRoutineRatioEntityImpl(
      {required this.yearMonth, required this.ratio});

  @override
  final String yearMonth;
  @override
  final double ratio;

  @override
  String toString() {
    return 'MonthlyRoutineRatioEntity(yearMonth: $yearMonth, ratio: $ratio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRoutineRatioEntityImpl &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.ratio, ratio) || other.ratio == ratio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, ratio);

  /// Create a copy of MonthlyRoutineRatioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRoutineRatioEntityImplCopyWith<_$MonthlyRoutineRatioEntityImpl>
      get copyWith => __$$MonthlyRoutineRatioEntityImplCopyWithImpl<
          _$MonthlyRoutineRatioEntityImpl>(this, _$identity);
}

abstract class _MonthlyRoutineRatioEntity implements MonthlyRoutineRatioEntity {
  const factory _MonthlyRoutineRatioEntity(
      {required final String yearMonth,
      required final double ratio}) = _$MonthlyRoutineRatioEntityImpl;

  @override
  String get yearMonth;
  @override
  double get ratio;

  /// Create a copy of MonthlyRoutineRatioEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyRoutineRatioEntityImplCopyWith<_$MonthlyRoutineRatioEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
