// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_schedule_reviews_with_previous_month_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerScheduleReviewsWithPreviousMonthResponse
    _$TrainerScheduleReviewsWithPreviousMonthResponseFromJson(
        Map<String, dynamic> json) {
  return _TrainerScheduleReviewsWithPreviousMonthResponse.fromJson(json);
}

/// @nodoc
mixin _$TrainerScheduleReviewsWithPreviousMonthResponse {
  List<TrainerWithScheduleReviewsResponse> get currentMonth =>
      throw _privateConstructorUsedError;
  List<TrainerWithScheduleReviewsResponse> get previousMonth =>
      throw _privateConstructorUsedError;

  /// Serializes this TrainerScheduleReviewsWithPreviousMonthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerScheduleReviewsWithPreviousMonthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerScheduleReviewsWithPreviousMonthResponseCopyWith<
          TrainerScheduleReviewsWithPreviousMonthResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerScheduleReviewsWithPreviousMonthResponseCopyWith<$Res> {
  factory $TrainerScheduleReviewsWithPreviousMonthResponseCopyWith(
          TrainerScheduleReviewsWithPreviousMonthResponse value,
          $Res Function(TrainerScheduleReviewsWithPreviousMonthResponse) then) =
      _$TrainerScheduleReviewsWithPreviousMonthResponseCopyWithImpl<$Res,
          TrainerScheduleReviewsWithPreviousMonthResponse>;
  @useResult
  $Res call(
      {List<TrainerWithScheduleReviewsResponse> currentMonth,
      List<TrainerWithScheduleReviewsResponse> previousMonth});
}

/// @nodoc
class _$TrainerScheduleReviewsWithPreviousMonthResponseCopyWithImpl<$Res,
        $Val extends TrainerScheduleReviewsWithPreviousMonthResponse>
    implements $TrainerScheduleReviewsWithPreviousMonthResponseCopyWith<$Res> {
  _$TrainerScheduleReviewsWithPreviousMonthResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerScheduleReviewsWithPreviousMonthResponse
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
              as List<TrainerWithScheduleReviewsResponse>,
      previousMonth: null == previousMonth
          ? _value.previousMonth
          : previousMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleReviewsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWith<
        $Res>
    implements $TrainerScheduleReviewsWithPreviousMonthResponseCopyWith<$Res> {
  factory _$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWith(
          _$TrainerScheduleReviewsWithPreviousMonthResponseImpl value,
          $Res Function(_$TrainerScheduleReviewsWithPreviousMonthResponseImpl)
              then) =
      __$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TrainerWithScheduleReviewsResponse> currentMonth,
      List<TrainerWithScheduleReviewsResponse> previousMonth});
}

/// @nodoc
class __$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWithImpl<$Res>
    extends _$TrainerScheduleReviewsWithPreviousMonthResponseCopyWithImpl<$Res,
        _$TrainerScheduleReviewsWithPreviousMonthResponseImpl>
    implements
        _$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWith<$Res> {
  __$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWithImpl(
      _$TrainerScheduleReviewsWithPreviousMonthResponseImpl _value,
      $Res Function(_$TrainerScheduleReviewsWithPreviousMonthResponseImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of TrainerScheduleReviewsWithPreviousMonthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? previousMonth = null,
  }) {
    return _then(_$TrainerScheduleReviewsWithPreviousMonthResponseImpl(
      currentMonth: null == currentMonth
          ? _value._currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleReviewsResponse>,
      previousMonth: null == previousMonth
          ? _value._previousMonth
          : previousMonth // ignore: cast_nullable_to_non_nullable
              as List<TrainerWithScheduleReviewsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerScheduleReviewsWithPreviousMonthResponseImpl
    implements _TrainerScheduleReviewsWithPreviousMonthResponse {
  const _$TrainerScheduleReviewsWithPreviousMonthResponseImpl(
      {final List<TrainerWithScheduleReviewsResponse> currentMonth = const [],
      final List<TrainerWithScheduleReviewsResponse> previousMonth = const []})
      : _currentMonth = currentMonth,
        _previousMonth = previousMonth;

  factory _$TrainerScheduleReviewsWithPreviousMonthResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrainerScheduleReviewsWithPreviousMonthResponseImplFromJson(json);

  final List<TrainerWithScheduleReviewsResponse> _currentMonth;
  @override
  @JsonKey()
  List<TrainerWithScheduleReviewsResponse> get currentMonth {
    if (_currentMonth is EqualUnmodifiableListView) return _currentMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentMonth);
  }

  final List<TrainerWithScheduleReviewsResponse> _previousMonth;
  @override
  @JsonKey()
  List<TrainerWithScheduleReviewsResponse> get previousMonth {
    if (_previousMonth is EqualUnmodifiableListView) return _previousMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousMonth);
  }

  @override
  String toString() {
    return 'TrainerScheduleReviewsWithPreviousMonthResponse(currentMonth: $currentMonth, previousMonth: $previousMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerScheduleReviewsWithPreviousMonthResponseImpl &&
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

  /// Create a copy of TrainerScheduleReviewsWithPreviousMonthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWith<
          _$TrainerScheduleReviewsWithPreviousMonthResponseImpl>
      get copyWith =>
          __$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWithImpl<
                  _$TrainerScheduleReviewsWithPreviousMonthResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerScheduleReviewsWithPreviousMonthResponseImplToJson(
      this,
    );
  }
}

abstract class _TrainerScheduleReviewsWithPreviousMonthResponse
    implements TrainerScheduleReviewsWithPreviousMonthResponse {
  const factory _TrainerScheduleReviewsWithPreviousMonthResponse(
          {final List<TrainerWithScheduleReviewsResponse> currentMonth,
          final List<TrainerWithScheduleReviewsResponse> previousMonth}) =
      _$TrainerScheduleReviewsWithPreviousMonthResponseImpl;

  factory _TrainerScheduleReviewsWithPreviousMonthResponse.fromJson(
          Map<String, dynamic> json) =
      _$TrainerScheduleReviewsWithPreviousMonthResponseImpl.fromJson;

  @override
  List<TrainerWithScheduleReviewsResponse> get currentMonth;
  @override
  List<TrainerWithScheduleReviewsResponse> get previousMonth;

  /// Create a copy of TrainerScheduleReviewsWithPreviousMonthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerScheduleReviewsWithPreviousMonthResponseImplCopyWith<
          _$TrainerScheduleReviewsWithPreviousMonthResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
