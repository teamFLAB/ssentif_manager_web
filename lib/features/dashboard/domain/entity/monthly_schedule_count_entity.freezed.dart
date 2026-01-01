// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_schedule_count_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyScheduleCountEntity {
  String get yearMonth => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyScheduleCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyScheduleCountEntityCopyWith<MonthlyScheduleCountEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyScheduleCountEntityCopyWith<$Res> {
  factory $MonthlyScheduleCountEntityCopyWith(MonthlyScheduleCountEntity value,
          $Res Function(MonthlyScheduleCountEntity) then) =
      _$MonthlyScheduleCountEntityCopyWithImpl<$Res,
          MonthlyScheduleCountEntity>;
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class _$MonthlyScheduleCountEntityCopyWithImpl<$Res,
        $Val extends MonthlyScheduleCountEntity>
    implements $MonthlyScheduleCountEntityCopyWith<$Res> {
  _$MonthlyScheduleCountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyScheduleCountEntity
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
abstract class _$$MonthlyScheduleCountEntityImplCopyWith<$Res>
    implements $MonthlyScheduleCountEntityCopyWith<$Res> {
  factory _$$MonthlyScheduleCountEntityImplCopyWith(
          _$MonthlyScheduleCountEntityImpl value,
          $Res Function(_$MonthlyScheduleCountEntityImpl) then) =
      __$$MonthlyScheduleCountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class __$$MonthlyScheduleCountEntityImplCopyWithImpl<$Res>
    extends _$MonthlyScheduleCountEntityCopyWithImpl<$Res,
        _$MonthlyScheduleCountEntityImpl>
    implements _$$MonthlyScheduleCountEntityImplCopyWith<$Res> {
  __$$MonthlyScheduleCountEntityImplCopyWithImpl(
      _$MonthlyScheduleCountEntityImpl _value,
      $Res Function(_$MonthlyScheduleCountEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyScheduleCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? count = null,
  }) {
    return _then(_$MonthlyScheduleCountEntityImpl(
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

class _$MonthlyScheduleCountEntityImpl implements _MonthlyScheduleCountEntity {
  const _$MonthlyScheduleCountEntityImpl(
      {required this.yearMonth, required this.count});

  @override
  final String yearMonth;
  @override
  final int count;

  @override
  String toString() {
    return 'MonthlyScheduleCountEntity(yearMonth: $yearMonth, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyScheduleCountEntityImpl &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, count);

  /// Create a copy of MonthlyScheduleCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyScheduleCountEntityImplCopyWith<_$MonthlyScheduleCountEntityImpl>
      get copyWith => __$$MonthlyScheduleCountEntityImplCopyWithImpl<
          _$MonthlyScheduleCountEntityImpl>(this, _$identity);
}

abstract class _MonthlyScheduleCountEntity
    implements MonthlyScheduleCountEntity {
  const factory _MonthlyScheduleCountEntity(
      {required final String yearMonth,
      required final int count}) = _$MonthlyScheduleCountEntityImpl;

  @override
  String get yearMonth;
  @override
  int get count;

  /// Create a copy of MonthlyScheduleCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyScheduleCountEntityImplCopyWith<_$MonthlyScheduleCountEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
