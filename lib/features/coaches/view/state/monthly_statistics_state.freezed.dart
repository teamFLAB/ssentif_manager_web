// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_statistics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyStatisticsState {
  DateTime get selectedMonth => throw _privateConstructorUsedError;
  int get totalClassCount => throw _privateConstructorUsedError;
  int get attendanceCount => throw _privateConstructorUsedError;
  int get reservationCount => throw _privateConstructorUsedError;
  int get reservationRequestCount => throw _privateConstructorUsedError;
  int get etcCount => throw _privateConstructorUsedError;
  Map<int, int> get dailyScheduleCounts =>
      throw _privateConstructorUsedError; // 날짜별 일정 갯수
  UserEntity? get selectedCoach => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyStatisticsStateCopyWith<MonthlyStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyStatisticsStateCopyWith<$Res> {
  factory $MonthlyStatisticsStateCopyWith(MonthlyStatisticsState value,
          $Res Function(MonthlyStatisticsState) then) =
      _$MonthlyStatisticsStateCopyWithImpl<$Res, MonthlyStatisticsState>;
  @useResult
  $Res call(
      {DateTime selectedMonth,
      int totalClassCount,
      int attendanceCount,
      int reservationCount,
      int reservationRequestCount,
      int etcCount,
      Map<int, int> dailyScheduleCounts,
      UserEntity? selectedCoach});

  $UserEntityCopyWith<$Res>? get selectedCoach;
}

/// @nodoc
class _$MonthlyStatisticsStateCopyWithImpl<$Res,
        $Val extends MonthlyStatisticsState>
    implements $MonthlyStatisticsStateCopyWith<$Res> {
  _$MonthlyStatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMonth = null,
    Object? totalClassCount = null,
    Object? attendanceCount = null,
    Object? reservationCount = null,
    Object? reservationRequestCount = null,
    Object? etcCount = null,
    Object? dailyScheduleCounts = null,
    Object? selectedCoach = freezed,
  }) {
    return _then(_value.copyWith(
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalClassCount: null == totalClassCount
          ? _value.totalClassCount
          : totalClassCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceCount: null == attendanceCount
          ? _value.attendanceCount
          : attendanceCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationRequestCount: null == reservationRequestCount
          ? _value.reservationRequestCount
          : reservationRequestCount // ignore: cast_nullable_to_non_nullable
              as int,
      etcCount: null == etcCount
          ? _value.etcCount
          : etcCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyScheduleCounts: null == dailyScheduleCounts
          ? _value.dailyScheduleCounts
          : dailyScheduleCounts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get selectedCoach {
    if (_value.selectedCoach == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.selectedCoach!, (value) {
      return _then(_value.copyWith(selectedCoach: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonthlyStatisticsStateImplCopyWith<$Res>
    implements $MonthlyStatisticsStateCopyWith<$Res> {
  factory _$$MonthlyStatisticsStateImplCopyWith(
          _$MonthlyStatisticsStateImpl value,
          $Res Function(_$MonthlyStatisticsStateImpl) then) =
      __$$MonthlyStatisticsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedMonth,
      int totalClassCount,
      int attendanceCount,
      int reservationCount,
      int reservationRequestCount,
      int etcCount,
      Map<int, int> dailyScheduleCounts,
      UserEntity? selectedCoach});

  @override
  $UserEntityCopyWith<$Res>? get selectedCoach;
}

/// @nodoc
class __$$MonthlyStatisticsStateImplCopyWithImpl<$Res>
    extends _$MonthlyStatisticsStateCopyWithImpl<$Res,
        _$MonthlyStatisticsStateImpl>
    implements _$$MonthlyStatisticsStateImplCopyWith<$Res> {
  __$$MonthlyStatisticsStateImplCopyWithImpl(
      _$MonthlyStatisticsStateImpl _value,
      $Res Function(_$MonthlyStatisticsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMonth = null,
    Object? totalClassCount = null,
    Object? attendanceCount = null,
    Object? reservationCount = null,
    Object? reservationRequestCount = null,
    Object? etcCount = null,
    Object? dailyScheduleCounts = null,
    Object? selectedCoach = freezed,
  }) {
    return _then(_$MonthlyStatisticsStateImpl(
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalClassCount: null == totalClassCount
          ? _value.totalClassCount
          : totalClassCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceCount: null == attendanceCount
          ? _value.attendanceCount
          : attendanceCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      reservationRequestCount: null == reservationRequestCount
          ? _value.reservationRequestCount
          : reservationRequestCount // ignore: cast_nullable_to_non_nullable
              as int,
      etcCount: null == etcCount
          ? _value.etcCount
          : etcCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyScheduleCounts: null == dailyScheduleCounts
          ? _value._dailyScheduleCounts
          : dailyScheduleCounts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$MonthlyStatisticsStateImpl implements _MonthlyStatisticsState {
  const _$MonthlyStatisticsStateImpl(
      {required this.selectedMonth,
      this.totalClassCount = 0,
      this.attendanceCount = 0,
      this.reservationCount = 0,
      this.reservationRequestCount = 0,
      this.etcCount = 0,
      final Map<int, int> dailyScheduleCounts = const {},
      this.selectedCoach})
      : _dailyScheduleCounts = dailyScheduleCounts;

  @override
  final DateTime selectedMonth;
  @override
  @JsonKey()
  final int totalClassCount;
  @override
  @JsonKey()
  final int attendanceCount;
  @override
  @JsonKey()
  final int reservationCount;
  @override
  @JsonKey()
  final int reservationRequestCount;
  @override
  @JsonKey()
  final int etcCount;
  final Map<int, int> _dailyScheduleCounts;
  @override
  @JsonKey()
  Map<int, int> get dailyScheduleCounts {
    if (_dailyScheduleCounts is EqualUnmodifiableMapView)
      return _dailyScheduleCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dailyScheduleCounts);
  }

// 날짜별 일정 갯수
  @override
  final UserEntity? selectedCoach;

  @override
  String toString() {
    return 'MonthlyStatisticsState(selectedMonth: $selectedMonth, totalClassCount: $totalClassCount, attendanceCount: $attendanceCount, reservationCount: $reservationCount, reservationRequestCount: $reservationRequestCount, etcCount: $etcCount, dailyScheduleCounts: $dailyScheduleCounts, selectedCoach: $selectedCoach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyStatisticsStateImpl &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth) &&
            (identical(other.totalClassCount, totalClassCount) ||
                other.totalClassCount == totalClassCount) &&
            (identical(other.attendanceCount, attendanceCount) ||
                other.attendanceCount == attendanceCount) &&
            (identical(other.reservationCount, reservationCount) ||
                other.reservationCount == reservationCount) &&
            (identical(
                    other.reservationRequestCount, reservationRequestCount) ||
                other.reservationRequestCount == reservationRequestCount) &&
            (identical(other.etcCount, etcCount) ||
                other.etcCount == etcCount) &&
            const DeepCollectionEquality()
                .equals(other._dailyScheduleCounts, _dailyScheduleCounts) &&
            (identical(other.selectedCoach, selectedCoach) ||
                other.selectedCoach == selectedCoach));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedMonth,
      totalClassCount,
      attendanceCount,
      reservationCount,
      reservationRequestCount,
      etcCount,
      const DeepCollectionEquality().hash(_dailyScheduleCounts),
      selectedCoach);

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyStatisticsStateImplCopyWith<_$MonthlyStatisticsStateImpl>
      get copyWith => __$$MonthlyStatisticsStateImplCopyWithImpl<
          _$MonthlyStatisticsStateImpl>(this, _$identity);
}

abstract class _MonthlyStatisticsState implements MonthlyStatisticsState {
  const factory _MonthlyStatisticsState(
      {required final DateTime selectedMonth,
      final int totalClassCount,
      final int attendanceCount,
      final int reservationCount,
      final int reservationRequestCount,
      final int etcCount,
      final Map<int, int> dailyScheduleCounts,
      final UserEntity? selectedCoach}) = _$MonthlyStatisticsStateImpl;

  @override
  DateTime get selectedMonth;
  @override
  int get totalClassCount;
  @override
  int get attendanceCount;
  @override
  int get reservationCount;
  @override
  int get reservationRequestCount;
  @override
  int get etcCount;
  @override
  Map<int, int> get dailyScheduleCounts; // 날짜별 일정 갯수
  @override
  UserEntity? get selectedCoach;

  /// Create a copy of MonthlyStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyStatisticsStateImplCopyWith<_$MonthlyStatisticsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
