// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_schedules_with_prev_month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerSchedulesWithPrevMonth _$TrainerSchedulesWithPrevMonthFromJson(
    Map<String, dynamic> json) {
  return _TrainerSchedulesWithPrevMonth.fromJson(json);
}

/// @nodoc
mixin _$TrainerSchedulesWithPrevMonth {
  List<TrainerWithScheduleModel> get currentMonth =>
      throw _privateConstructorUsedError;
  List<TrainerWithScheduleModel> get previousMonth =>
      throw _privateConstructorUsedError;

  /// Serializes this TrainerSchedulesWithPrevMonth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerSchedulesWithPrevMonth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerSchedulesWithPrevMonthCopyWith<TrainerSchedulesWithPrevMonth>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerSchedulesWithPrevMonthCopyWith<$Res> {
  factory $TrainerSchedulesWithPrevMonthCopyWith(
          TrainerSchedulesWithPrevMonth value,
          $Res Function(TrainerSchedulesWithPrevMonth) then) =
      _$TrainerSchedulesWithPrevMonthCopyWithImpl<$Res,
          TrainerSchedulesWithPrevMonth>;
  @useResult
  $Res call(
      {List<TrainerWithScheduleModel> currentMonth,
      List<TrainerWithScheduleModel> previousMonth});
}

/// @nodoc
class _$TrainerSchedulesWithPrevMonthCopyWithImpl<$Res,
        $Val extends TrainerSchedulesWithPrevMonth>
    implements $TrainerSchedulesWithPrevMonthCopyWith<$Res> {
  _$TrainerSchedulesWithPrevMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerSchedulesWithPrevMonth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? previousMonth = null,
  }) {
    return _then(_value.copyWith(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleModel>,
      previousMonth: null == previousMonth
          ? _value.previousMonth
          : previousMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainerSchedulesWithPrevMonthImplCopyWith<$Res>
    implements $TrainerSchedulesWithPrevMonthCopyWith<$Res> {
  factory _$$TrainerSchedulesWithPrevMonthImplCopyWith(
          _$TrainerSchedulesWithPrevMonthImpl value,
          $Res Function(_$TrainerSchedulesWithPrevMonthImpl) then) =
      __$$TrainerSchedulesWithPrevMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TrainerWithScheduleModel> currentMonth,
      List<TrainerWithScheduleModel> previousMonth});
}

/// @nodoc
class __$$TrainerSchedulesWithPrevMonthImplCopyWithImpl<$Res>
    extends _$TrainerSchedulesWithPrevMonthCopyWithImpl<$Res,
        _$TrainerSchedulesWithPrevMonthImpl>
    implements _$$TrainerSchedulesWithPrevMonthImplCopyWith<$Res> {
  __$$TrainerSchedulesWithPrevMonthImplCopyWithImpl(
      _$TrainerSchedulesWithPrevMonthImpl _value,
      $Res Function(_$TrainerSchedulesWithPrevMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerSchedulesWithPrevMonth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? previousMonth = null,
  }) {
    return _then(_$TrainerSchedulesWithPrevMonthImpl(
      currentMonth: null == currentMonth
          ? _value._currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleModel>,
      previousMonth: null == previousMonth
          ? _value._previousMonth
          : previousMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerSchedulesWithPrevMonthImpl
    implements _TrainerSchedulesWithPrevMonth {
  _$TrainerSchedulesWithPrevMonthImpl(
      {required final List<TrainerWithScheduleModel> currentMonth,
      required final List<TrainerWithScheduleModel> previousMonth})
      : _currentMonth = currentMonth,
        _previousMonth = previousMonth;

  factory _$TrainerSchedulesWithPrevMonthImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrainerSchedulesWithPrevMonthImplFromJson(json);

  final List<TrainerWithScheduleModel> _currentMonth;
  @override
  List<TrainerWithScheduleModel> get currentMonth {
    if (_currentMonth is EqualUnmodifiableListView) return _currentMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentMonth);
  }

  final List<TrainerWithScheduleModel> _previousMonth;
  @override
  List<TrainerWithScheduleModel> get previousMonth {
    if (_previousMonth is EqualUnmodifiableListView) return _previousMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousMonth);
  }

  @override
  String toString() {
    return 'TrainerSchedulesWithPrevMonth(currentMonth: $currentMonth, previousMonth: $previousMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerSchedulesWithPrevMonthImpl &&
            const DeepCollectionEquality()
                .equals(other._currentMonth, _currentMonth) &&
            const DeepCollectionEquality()
                .equals(other._previousMonth, _previousMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentMonth),
      const DeepCollectionEquality().hash(_previousMonth));

  /// Create a copy of TrainerSchedulesWithPrevMonth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerSchedulesWithPrevMonthImplCopyWith<
          _$TrainerSchedulesWithPrevMonthImpl>
      get copyWith => __$$TrainerSchedulesWithPrevMonthImplCopyWithImpl<
          _$TrainerSchedulesWithPrevMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerSchedulesWithPrevMonthImplToJson(
      this,
    );
  }
}

abstract class _TrainerSchedulesWithPrevMonth
    implements TrainerSchedulesWithPrevMonth {
  factory _TrainerSchedulesWithPrevMonth(
          {required final List<TrainerWithScheduleModel> currentMonth,
          required final List<TrainerWithScheduleModel> previousMonth}) =
      _$TrainerSchedulesWithPrevMonthImpl;

  factory _TrainerSchedulesWithPrevMonth.fromJson(Map<String, dynamic> json) =
      _$TrainerSchedulesWithPrevMonthImpl.fromJson;

  @override
  List<TrainerWithScheduleModel> get currentMonth;
  @override
  List<TrainerWithScheduleModel> get previousMonth;

  /// Create a copy of TrainerSchedulesWithPrevMonth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerSchedulesWithPrevMonthImplCopyWith<
          _$TrainerSchedulesWithPrevMonthImpl>
      get copyWith => throw _privateConstructorUsedError;
}
