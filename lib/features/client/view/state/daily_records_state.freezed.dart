// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_records_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyRecordsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RoutineHistoryModel> get workoutRecords =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get dietRecord => throw _privateConstructorUsedError;
  List<RoutineDtoWrapperModel> get classRecords =>
      throw _privateConstructorUsedError;
  ScheduleDetailEntity? get scheduleDetail =>
      throw _privateConstructorUsedError;
  ClientCalendarEventType get selectedCategory =>
      throw _privateConstructorUsedError;

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyRecordsStateCopyWith<DailyRecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyRecordsStateCopyWith<$Res> {
  factory $DailyRecordsStateCopyWith(
          DailyRecordsState value, $Res Function(DailyRecordsState) then) =
      _$DailyRecordsStateCopyWithImpl<$Res, DailyRecordsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<RoutineHistoryModel> workoutRecords,
      Map<String, dynamic>? dietRecord,
      List<RoutineDtoWrapperModel> classRecords,
      ScheduleDetailEntity? scheduleDetail,
      ClientCalendarEventType selectedCategory});

  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail;
}

/// @nodoc
class _$DailyRecordsStateCopyWithImpl<$Res, $Val extends DailyRecordsState>
    implements $DailyRecordsStateCopyWith<$Res> {
  _$DailyRecordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? workoutRecords = null,
    Object? dietRecord = freezed,
    Object? classRecords = null,
    Object? scheduleDetail = freezed,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      workoutRecords: null == workoutRecords
          ? _value.workoutRecords
          : workoutRecords // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryModel>,
      dietRecord: freezed == dietRecord
          ? _value.dietRecord
          : dietRecord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      classRecords: null == classRecords
          ? _value.classRecords
          : classRecords // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      scheduleDetail: freezed == scheduleDetail
          ? _value.scheduleDetail
          : scheduleDetail // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailEntity?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ClientCalendarEventType,
    ) as $Val);
  }

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail {
    if (_value.scheduleDetail == null) {
      return null;
    }

    return $ScheduleDetailEntityCopyWith<$Res>(_value.scheduleDetail!, (value) {
      return _then(_value.copyWith(scheduleDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyRecordsStateImplCopyWith<$Res>
    implements $DailyRecordsStateCopyWith<$Res> {
  factory _$$DailyRecordsStateImplCopyWith(_$DailyRecordsStateImpl value,
          $Res Function(_$DailyRecordsStateImpl) then) =
      __$$DailyRecordsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<RoutineHistoryModel> workoutRecords,
      Map<String, dynamic>? dietRecord,
      List<RoutineDtoWrapperModel> classRecords,
      ScheduleDetailEntity? scheduleDetail,
      ClientCalendarEventType selectedCategory});

  @override
  $ScheduleDetailEntityCopyWith<$Res>? get scheduleDetail;
}

/// @nodoc
class __$$DailyRecordsStateImplCopyWithImpl<$Res>
    extends _$DailyRecordsStateCopyWithImpl<$Res, _$DailyRecordsStateImpl>
    implements _$$DailyRecordsStateImplCopyWith<$Res> {
  __$$DailyRecordsStateImplCopyWithImpl(_$DailyRecordsStateImpl _value,
      $Res Function(_$DailyRecordsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? workoutRecords = null,
    Object? dietRecord = freezed,
    Object? classRecords = null,
    Object? scheduleDetail = freezed,
    Object? selectedCategory = null,
  }) {
    return _then(_$DailyRecordsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      workoutRecords: null == workoutRecords
          ? _value._workoutRecords
          : workoutRecords // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryModel>,
      dietRecord: freezed == dietRecord
          ? _value._dietRecord
          : dietRecord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      classRecords: null == classRecords
          ? _value._classRecords
          : classRecords // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      scheduleDetail: freezed == scheduleDetail
          ? _value.scheduleDetail
          : scheduleDetail // ignore: cast_nullable_to_non_nullable
              as ScheduleDetailEntity?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ClientCalendarEventType,
    ));
  }
}

/// @nodoc

class _$DailyRecordsStateImpl implements _DailyRecordsState {
  const _$DailyRecordsStateImpl(
      {this.isLoading = false,
      final List<RoutineHistoryModel> workoutRecords = const [],
      final Map<String, dynamic>? dietRecord,
      final List<RoutineDtoWrapperModel> classRecords = const [],
      this.scheduleDetail,
      this.selectedCategory = ClientCalendarEventType.classEvent})
      : _workoutRecords = workoutRecords,
        _dietRecord = dietRecord,
        _classRecords = classRecords;

  @override
  @JsonKey()
  final bool isLoading;
  final List<RoutineHistoryModel> _workoutRecords;
  @override
  @JsonKey()
  List<RoutineHistoryModel> get workoutRecords {
    if (_workoutRecords is EqualUnmodifiableListView) return _workoutRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutRecords);
  }

  final Map<String, dynamic>? _dietRecord;
  @override
  Map<String, dynamic>? get dietRecord {
    final value = _dietRecord;
    if (value == null) return null;
    if (_dietRecord is EqualUnmodifiableMapView) return _dietRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<RoutineDtoWrapperModel> _classRecords;
  @override
  @JsonKey()
  List<RoutineDtoWrapperModel> get classRecords {
    if (_classRecords is EqualUnmodifiableListView) return _classRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classRecords);
  }

  @override
  final ScheduleDetailEntity? scheduleDetail;
  @override
  @JsonKey()
  final ClientCalendarEventType selectedCategory;

  @override
  String toString() {
    return 'DailyRecordsState(isLoading: $isLoading, workoutRecords: $workoutRecords, dietRecord: $dietRecord, classRecords: $classRecords, scheduleDetail: $scheduleDetail, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyRecordsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._workoutRecords, _workoutRecords) &&
            const DeepCollectionEquality()
                .equals(other._dietRecord, _dietRecord) &&
            const DeepCollectionEquality()
                .equals(other._classRecords, _classRecords) &&
            (identical(other.scheduleDetail, scheduleDetail) ||
                other.scheduleDetail == scheduleDetail) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_workoutRecords),
      const DeepCollectionEquality().hash(_dietRecord),
      const DeepCollectionEquality().hash(_classRecords),
      scheduleDetail,
      selectedCategory);

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyRecordsStateImplCopyWith<_$DailyRecordsStateImpl> get copyWith =>
      __$$DailyRecordsStateImplCopyWithImpl<_$DailyRecordsStateImpl>(
          this, _$identity);
}

abstract class _DailyRecordsState implements DailyRecordsState {
  const factory _DailyRecordsState(
          {final bool isLoading,
          final List<RoutineHistoryModel> workoutRecords,
          final Map<String, dynamic>? dietRecord,
          final List<RoutineDtoWrapperModel> classRecords,
          final ScheduleDetailEntity? scheduleDetail,
          final ClientCalendarEventType selectedCategory}) =
      _$DailyRecordsStateImpl;

  @override
  bool get isLoading;
  @override
  List<RoutineHistoryModel> get workoutRecords;
  @override
  Map<String, dynamic>? get dietRecord;
  @override
  List<RoutineDtoWrapperModel> get classRecords;
  @override
  ScheduleDetailEntity? get scheduleDetail;
  @override
  ClientCalendarEventType get selectedCategory;

  /// Create a copy of DailyRecordsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyRecordsStateImplCopyWith<_$DailyRecordsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
