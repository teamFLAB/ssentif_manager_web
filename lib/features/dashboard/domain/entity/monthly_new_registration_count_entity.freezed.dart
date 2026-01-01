// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_new_registration_count_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyNewRegistrationCountEntity {
  String get yearMonth => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyNewRegistrationCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyNewRegistrationCountEntityCopyWith<MonthlyNewRegistrationCountEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyNewRegistrationCountEntityCopyWith<$Res> {
  factory $MonthlyNewRegistrationCountEntityCopyWith(
          MonthlyNewRegistrationCountEntity value,
          $Res Function(MonthlyNewRegistrationCountEntity) then) =
      _$MonthlyNewRegistrationCountEntityCopyWithImpl<$Res,
          MonthlyNewRegistrationCountEntity>;
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class _$MonthlyNewRegistrationCountEntityCopyWithImpl<$Res,
        $Val extends MonthlyNewRegistrationCountEntity>
    implements $MonthlyNewRegistrationCountEntityCopyWith<$Res> {
  _$MonthlyNewRegistrationCountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyNewRegistrationCountEntity
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
abstract class _$$MonthlyNewRegistrationCountEntityImplCopyWith<$Res>
    implements $MonthlyNewRegistrationCountEntityCopyWith<$Res> {
  factory _$$MonthlyNewRegistrationCountEntityImplCopyWith(
          _$MonthlyNewRegistrationCountEntityImpl value,
          $Res Function(_$MonthlyNewRegistrationCountEntityImpl) then) =
      __$$MonthlyNewRegistrationCountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yearMonth, int count});
}

/// @nodoc
class __$$MonthlyNewRegistrationCountEntityImplCopyWithImpl<$Res>
    extends _$MonthlyNewRegistrationCountEntityCopyWithImpl<$Res,
        _$MonthlyNewRegistrationCountEntityImpl>
    implements _$$MonthlyNewRegistrationCountEntityImplCopyWith<$Res> {
  __$$MonthlyNewRegistrationCountEntityImplCopyWithImpl(
      _$MonthlyNewRegistrationCountEntityImpl _value,
      $Res Function(_$MonthlyNewRegistrationCountEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyNewRegistrationCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? count = null,
  }) {
    return _then(_$MonthlyNewRegistrationCountEntityImpl(
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

class _$MonthlyNewRegistrationCountEntityImpl
    implements _MonthlyNewRegistrationCountEntity {
  const _$MonthlyNewRegistrationCountEntityImpl(
      {required this.yearMonth, required this.count});

  @override
  final String yearMonth;
  @override
  final int count;

  @override
  String toString() {
    return 'MonthlyNewRegistrationCountEntity(yearMonth: $yearMonth, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyNewRegistrationCountEntityImpl &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, count);

  /// Create a copy of MonthlyNewRegistrationCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyNewRegistrationCountEntityImplCopyWith<
          _$MonthlyNewRegistrationCountEntityImpl>
      get copyWith => __$$MonthlyNewRegistrationCountEntityImplCopyWithImpl<
          _$MonthlyNewRegistrationCountEntityImpl>(this, _$identity);
}

abstract class _MonthlyNewRegistrationCountEntity
    implements MonthlyNewRegistrationCountEntity {
  const factory _MonthlyNewRegistrationCountEntity(
      {required final String yearMonth,
      required final int count}) = _$MonthlyNewRegistrationCountEntityImpl;

  @override
  String get yearMonth;
  @override
  int get count;

  /// Create a copy of MonthlyNewRegistrationCountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyNewRegistrationCountEntityImplCopyWith<
          _$MonthlyNewRegistrationCountEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
