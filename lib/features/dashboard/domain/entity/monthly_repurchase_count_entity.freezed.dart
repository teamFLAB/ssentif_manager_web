// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_repurchase_count_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyRepurchaseCountEntity {
  String get yearMonth => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyRepurchaseCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyRepurchaseCountEntityCopyWith<MonthlyRepurchaseCountEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRepurchaseCountEntityCopyWith<$Res> {
  factory $MonthlyRepurchaseCountEntityCopyWith(
          MonthlyRepurchaseCountEntity value,
          $Res Function(MonthlyRepurchaseCountEntity) then) =
      _$MonthlyRepurchaseCountEntityCopyWithImpl<$Res,
          MonthlyRepurchaseCountEntity>;
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class _$MonthlyRepurchaseCountEntityCopyWithImpl<$Res,
        $Val extends MonthlyRepurchaseCountEntity>
    implements $MonthlyRepurchaseCountEntityCopyWith<$Res> {
  _$MonthlyRepurchaseCountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyRepurchaseCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyRepurchaseCountEntityImplCopyWith<$Res>
    implements $MonthlyRepurchaseCountEntityCopyWith<$Res> {
  factory _$$MonthlyRepurchaseCountEntityImplCopyWith(
          _$MonthlyRepurchaseCountEntityImpl value,
          $Res Function(_$MonthlyRepurchaseCountEntityImpl) then) =
      __$$MonthlyRepurchaseCountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class __$$MonthlyRepurchaseCountEntityImplCopyWithImpl<$Res>
    extends _$MonthlyRepurchaseCountEntityCopyWithImpl<$Res,
        _$MonthlyRepurchaseCountEntityImpl>
    implements _$$MonthlyRepurchaseCountEntityImplCopyWith<$Res> {
  __$$MonthlyRepurchaseCountEntityImplCopyWithImpl(
      _$MonthlyRepurchaseCountEntityImpl _value,
      $Res Function(_$MonthlyRepurchaseCountEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyRepurchaseCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? count = null,
  }) {
    return _then(_$MonthlyRepurchaseCountEntityImpl(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MonthlyRepurchaseCountEntityImpl
    implements _MonthlyRepurchaseCountEntity {
  const _$MonthlyRepurchaseCountEntityImpl(
      {required this.yearMonth, required this.count});

  @override
  final String yearMonth;
  @override
  final int count;

  @override
  String toString() {
    return 'MonthlyRepurchaseCountEntity(yearMonth: $yearMonth, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRepurchaseCountEntityImpl &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, count);

  /// Create a copy of MonthlyRepurchaseCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRepurchaseCountEntityImplCopyWith<
          _$MonthlyRepurchaseCountEntityImpl>
      get copyWith => __$$MonthlyRepurchaseCountEntityImplCopyWithImpl<
          _$MonthlyRepurchaseCountEntityImpl>(this, _$identity);
}

abstract class _MonthlyRepurchaseCountEntity
    implements MonthlyRepurchaseCountEntity {
  const factory _MonthlyRepurchaseCountEntity(
      {required final String yearMonth,
      required final int count}) = _$MonthlyRepurchaseCountEntityImpl;

  @override
  String get yearMonth;
  @override
  int get count;

  /// Create a copy of MonthlyRepurchaseCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyRepurchaseCountEntityImplCopyWith<
          _$MonthlyRepurchaseCountEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
