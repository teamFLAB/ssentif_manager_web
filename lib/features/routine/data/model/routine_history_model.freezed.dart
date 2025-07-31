// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassRoutineDetailResponse _$ClassRoutineDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ClassRoutineDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ClassRoutineDetailResponse {
  String get scheduleTitle => throw _privateConstructorUsedError;
  String get scheduleStatus => throw _privateConstructorUsedError;
  RoutineHistoryModel? get routineDto => throw _privateConstructorUsedError;

  /// Serializes this ClassRoutineDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassRoutineDetailResponseCopyWith<ClassRoutineDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoutineDetailResponseCopyWith<$Res> {
  factory $ClassRoutineDetailResponseCopyWith(ClassRoutineDetailResponse value,
          $Res Function(ClassRoutineDetailResponse) then) =
      _$ClassRoutineDetailResponseCopyWithImpl<$Res,
          ClassRoutineDetailResponse>;
  @useResult
  $Res call(
      {String scheduleTitle,
      String scheduleStatus,
      RoutineHistoryModel? routineDto});

  $RoutineHistoryModelCopyWith<$Res>? get routineDto;
}

/// @nodoc
class _$ClassRoutineDetailResponseCopyWithImpl<$Res,
        $Val extends ClassRoutineDetailResponse>
    implements $ClassRoutineDetailResponseCopyWith<$Res> {
  _$ClassRoutineDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTitle = null,
    Object? scheduleStatus = null,
    Object? routineDto = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
      routineDto: freezed == routineDto
          ? _value.routineDto
          : routineDto // ignore: cast_nullable_to_non_nullable
              as RoutineHistoryModel?,
    ) as $Val);
  }

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineHistoryModelCopyWith<$Res>? get routineDto {
    if (_value.routineDto == null) {
      return null;
    }

    return $RoutineHistoryModelCopyWith<$Res>(_value.routineDto!, (value) {
      return _then(_value.copyWith(routineDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassRoutineDetailResponseImplCopyWith<$Res>
    implements $ClassRoutineDetailResponseCopyWith<$Res> {
  factory _$$ClassRoutineDetailResponseImplCopyWith(
          _$ClassRoutineDetailResponseImpl value,
          $Res Function(_$ClassRoutineDetailResponseImpl) then) =
      __$$ClassRoutineDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String scheduleTitle,
      String scheduleStatus,
      RoutineHistoryModel? routineDto});

  @override
  $RoutineHistoryModelCopyWith<$Res>? get routineDto;
}

/// @nodoc
class __$$ClassRoutineDetailResponseImplCopyWithImpl<$Res>
    extends _$ClassRoutineDetailResponseCopyWithImpl<$Res,
        _$ClassRoutineDetailResponseImpl>
    implements _$$ClassRoutineDetailResponseImplCopyWith<$Res> {
  __$$ClassRoutineDetailResponseImplCopyWithImpl(
      _$ClassRoutineDetailResponseImpl _value,
      $Res Function(_$ClassRoutineDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTitle = null,
    Object? scheduleStatus = null,
    Object? routineDto = freezed,
  }) {
    return _then(_$ClassRoutineDetailResponseImpl(
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
      routineDto: freezed == routineDto
          ? _value.routineDto
          : routineDto // ignore: cast_nullable_to_non_nullable
              as RoutineHistoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassRoutineDetailResponseImpl implements _ClassRoutineDetailResponse {
  _$ClassRoutineDetailResponseImpl(
      {this.scheduleTitle = "", this.scheduleStatus = "", this.routineDto});

  factory _$ClassRoutineDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassRoutineDetailResponseImplFromJson(json);

  @override
  @JsonKey()
  final String scheduleTitle;
  @override
  @JsonKey()
  final String scheduleStatus;
  @override
  final RoutineHistoryModel? routineDto;

  @override
  String toString() {
    return 'ClassRoutineDetailResponse(scheduleTitle: $scheduleTitle, scheduleStatus: $scheduleStatus, routineDto: $routineDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassRoutineDetailResponseImpl &&
            (identical(other.scheduleTitle, scheduleTitle) ||
                other.scheduleTitle == scheduleTitle) &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus) &&
            (identical(other.routineDto, routineDto) ||
                other.routineDto == routineDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, scheduleTitle, scheduleStatus, routineDto);

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassRoutineDetailResponseImplCopyWith<_$ClassRoutineDetailResponseImpl>
      get copyWith => __$$ClassRoutineDetailResponseImplCopyWithImpl<
          _$ClassRoutineDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassRoutineDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ClassRoutineDetailResponse
    implements ClassRoutineDetailResponse {
  factory _ClassRoutineDetailResponse(
          {final String scheduleTitle,
          final String scheduleStatus,
          final RoutineHistoryModel? routineDto}) =
      _$ClassRoutineDetailResponseImpl;

  factory _ClassRoutineDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ClassRoutineDetailResponseImpl.fromJson;

  @override
  String get scheduleTitle;
  @override
  String get scheduleStatus;
  @override
  RoutineHistoryModel? get routineDto;

  /// Create a copy of ClassRoutineDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassRoutineDetailResponseImplCopyWith<_$ClassRoutineDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassHistoriesResponse _$ClassHistoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _ClassHistoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$ClassHistoriesResponse {
  List<RoutineDtoWrapperModel> get classInfoDetailOfDateList =>
      throw _privateConstructorUsedError;
  int? get lastScheduleId => throw _privateConstructorUsedError;
  dynamic get hasNext => throw _privateConstructorUsedError;

  /// Serializes this ClassHistoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassHistoriesResponseCopyWith<ClassHistoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassHistoriesResponseCopyWith<$Res> {
  factory $ClassHistoriesResponseCopyWith(ClassHistoriesResponse value,
          $Res Function(ClassHistoriesResponse) then) =
      _$ClassHistoriesResponseCopyWithImpl<$Res, ClassHistoriesResponse>;
  @useResult
  $Res call(
      {List<RoutineDtoWrapperModel> classInfoDetailOfDateList,
      int? lastScheduleId,
      dynamic hasNext});
}

/// @nodoc
class _$ClassHistoriesResponseCopyWithImpl<$Res,
        $Val extends ClassHistoriesResponse>
    implements $ClassHistoriesResponseCopyWith<$Res> {
  _$ClassHistoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoDetailOfDateList = null,
    Object? lastScheduleId = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      classInfoDetailOfDateList: null == classInfoDetailOfDateList
          ? _value.classInfoDetailOfDateList
          : classInfoDetailOfDateList // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      lastScheduleId: freezed == lastScheduleId
          ? _value.lastScheduleId
          : lastScheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassHistoriesResponseImplCopyWith<$Res>
    implements $ClassHistoriesResponseCopyWith<$Res> {
  factory _$$ClassHistoriesResponseImplCopyWith(
          _$ClassHistoriesResponseImpl value,
          $Res Function(_$ClassHistoriesResponseImpl) then) =
      __$$ClassHistoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoutineDtoWrapperModel> classInfoDetailOfDateList,
      int? lastScheduleId,
      dynamic hasNext});
}

/// @nodoc
class __$$ClassHistoriesResponseImplCopyWithImpl<$Res>
    extends _$ClassHistoriesResponseCopyWithImpl<$Res,
        _$ClassHistoriesResponseImpl>
    implements _$$ClassHistoriesResponseImplCopyWith<$Res> {
  __$$ClassHistoriesResponseImplCopyWithImpl(
      _$ClassHistoriesResponseImpl _value,
      $Res Function(_$ClassHistoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoDetailOfDateList = null,
    Object? lastScheduleId = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_$ClassHistoriesResponseImpl(
      classInfoDetailOfDateList: null == classInfoDetailOfDateList
          ? _value._classInfoDetailOfDateList
          : classInfoDetailOfDateList // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      lastScheduleId: freezed == lastScheduleId
          ? _value.lastScheduleId
          : lastScheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext ? _value.hasNext! : hasNext,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassHistoriesResponseImpl implements _ClassHistoriesResponse {
  _$ClassHistoriesResponseImpl(
      {final List<RoutineDtoWrapperModel> classInfoDetailOfDateList = const [],
      this.lastScheduleId,
      this.hasNext = false})
      : _classInfoDetailOfDateList = classInfoDetailOfDateList;

  factory _$ClassHistoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassHistoriesResponseImplFromJson(json);

  final List<RoutineDtoWrapperModel> _classInfoDetailOfDateList;
  @override
  @JsonKey()
  List<RoutineDtoWrapperModel> get classInfoDetailOfDateList {
    if (_classInfoDetailOfDateList is EqualUnmodifiableListView)
      return _classInfoDetailOfDateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classInfoDetailOfDateList);
  }

  @override
  final int? lastScheduleId;
  @override
  @JsonKey()
  final dynamic hasNext;

  @override
  String toString() {
    return 'ClassHistoriesResponse(classInfoDetailOfDateList: $classInfoDetailOfDateList, lastScheduleId: $lastScheduleId, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassHistoriesResponseImpl &&
            const DeepCollectionEquality().equals(
                other._classInfoDetailOfDateList, _classInfoDetailOfDateList) &&
            (identical(other.lastScheduleId, lastScheduleId) ||
                other.lastScheduleId == lastScheduleId) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classInfoDetailOfDateList),
      lastScheduleId,
      const DeepCollectionEquality().hash(hasNext));

  /// Create a copy of ClassHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassHistoriesResponseImplCopyWith<_$ClassHistoriesResponseImpl>
      get copyWith => __$$ClassHistoriesResponseImplCopyWithImpl<
          _$ClassHistoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassHistoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _ClassHistoriesResponse implements ClassHistoriesResponse {
  factory _ClassHistoriesResponse(
      {final List<RoutineDtoWrapperModel> classInfoDetailOfDateList,
      final int? lastScheduleId,
      final dynamic hasNext}) = _$ClassHistoriesResponseImpl;

  factory _ClassHistoriesResponse.fromJson(Map<String, dynamic> json) =
      _$ClassHistoriesResponseImpl.fromJson;

  @override
  List<RoutineDtoWrapperModel> get classInfoDetailOfDateList;
  @override
  int? get lastScheduleId;
  @override
  dynamic get hasNext;

  /// Create a copy of ClassHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassHistoriesResponseImplCopyWith<_$ClassHistoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IndividualWorkoutHistoriesResponse _$IndividualWorkoutHistoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _IndividualWorkoutHistoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$IndividualWorkoutHistoriesResponse {
  List<RoutineDtoWrapperModel> get workoutResponses =>
      throw _privateConstructorUsedError;
  int? get lastWorkoutId => throw _privateConstructorUsedError;
  dynamic get hasNext => throw _privateConstructorUsedError;

  /// Serializes this IndividualWorkoutHistoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndividualWorkoutHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndividualWorkoutHistoriesResponseCopyWith<
          IndividualWorkoutHistoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualWorkoutHistoriesResponseCopyWith<$Res> {
  factory $IndividualWorkoutHistoriesResponseCopyWith(
          IndividualWorkoutHistoriesResponse value,
          $Res Function(IndividualWorkoutHistoriesResponse) then) =
      _$IndividualWorkoutHistoriesResponseCopyWithImpl<$Res,
          IndividualWorkoutHistoriesResponse>;
  @useResult
  $Res call(
      {List<RoutineDtoWrapperModel> workoutResponses,
      int? lastWorkoutId,
      dynamic hasNext});
}

/// @nodoc
class _$IndividualWorkoutHistoriesResponseCopyWithImpl<$Res,
        $Val extends IndividualWorkoutHistoriesResponse>
    implements $IndividualWorkoutHistoriesResponseCopyWith<$Res> {
  _$IndividualWorkoutHistoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndividualWorkoutHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutResponses = null,
    Object? lastWorkoutId = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      workoutResponses: null == workoutResponses
          ? _value.workoutResponses
          : workoutResponses // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      lastWorkoutId: freezed == lastWorkoutId
          ? _value.lastWorkoutId
          : lastWorkoutId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndividualWorkoutHistoriesResponseImplCopyWith<$Res>
    implements $IndividualWorkoutHistoriesResponseCopyWith<$Res> {
  factory _$$IndividualWorkoutHistoriesResponseImplCopyWith(
          _$IndividualWorkoutHistoriesResponseImpl value,
          $Res Function(_$IndividualWorkoutHistoriesResponseImpl) then) =
      __$$IndividualWorkoutHistoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoutineDtoWrapperModel> workoutResponses,
      int? lastWorkoutId,
      dynamic hasNext});
}

/// @nodoc
class __$$IndividualWorkoutHistoriesResponseImplCopyWithImpl<$Res>
    extends _$IndividualWorkoutHistoriesResponseCopyWithImpl<$Res,
        _$IndividualWorkoutHistoriesResponseImpl>
    implements _$$IndividualWorkoutHistoriesResponseImplCopyWith<$Res> {
  __$$IndividualWorkoutHistoriesResponseImplCopyWithImpl(
      _$IndividualWorkoutHistoriesResponseImpl _value,
      $Res Function(_$IndividualWorkoutHistoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of IndividualWorkoutHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutResponses = null,
    Object? lastWorkoutId = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_$IndividualWorkoutHistoriesResponseImpl(
      workoutResponses: null == workoutResponses
          ? _value._workoutResponses
          : workoutResponses // ignore: cast_nullable_to_non_nullable
              as List<RoutineDtoWrapperModel>,
      lastWorkoutId: freezed == lastWorkoutId
          ? _value.lastWorkoutId
          : lastWorkoutId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext ? _value.hasNext! : hasNext,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndividualWorkoutHistoriesResponseImpl
    implements _IndividualWorkoutHistoriesResponse {
  _$IndividualWorkoutHistoriesResponseImpl(
      {final List<RoutineDtoWrapperModel> workoutResponses = const [],
      this.lastWorkoutId,
      this.hasNext = false})
      : _workoutResponses = workoutResponses;

  factory _$IndividualWorkoutHistoriesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$IndividualWorkoutHistoriesResponseImplFromJson(json);

  final List<RoutineDtoWrapperModel> _workoutResponses;
  @override
  @JsonKey()
  List<RoutineDtoWrapperModel> get workoutResponses {
    if (_workoutResponses is EqualUnmodifiableListView)
      return _workoutResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutResponses);
  }

  @override
  final int? lastWorkoutId;
  @override
  @JsonKey()
  final dynamic hasNext;

  @override
  String toString() {
    return 'IndividualWorkoutHistoriesResponse(workoutResponses: $workoutResponses, lastWorkoutId: $lastWorkoutId, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndividualWorkoutHistoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._workoutResponses, _workoutResponses) &&
            (identical(other.lastWorkoutId, lastWorkoutId) ||
                other.lastWorkoutId == lastWorkoutId) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_workoutResponses),
      lastWorkoutId,
      const DeepCollectionEquality().hash(hasNext));

  /// Create a copy of IndividualWorkoutHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndividualWorkoutHistoriesResponseImplCopyWith<
          _$IndividualWorkoutHistoriesResponseImpl>
      get copyWith => __$$IndividualWorkoutHistoriesResponseImplCopyWithImpl<
          _$IndividualWorkoutHistoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualWorkoutHistoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _IndividualWorkoutHistoriesResponse
    implements IndividualWorkoutHistoriesResponse {
  factory _IndividualWorkoutHistoriesResponse(
      {final List<RoutineDtoWrapperModel> workoutResponses,
      final int? lastWorkoutId,
      final dynamic hasNext}) = _$IndividualWorkoutHistoriesResponseImpl;

  factory _IndividualWorkoutHistoriesResponse.fromJson(
          Map<String, dynamic> json) =
      _$IndividualWorkoutHistoriesResponseImpl.fromJson;

  @override
  List<RoutineDtoWrapperModel> get workoutResponses;
  @override
  int? get lastWorkoutId;
  @override
  dynamic get hasNext;

  /// Create a copy of IndividualWorkoutHistoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndividualWorkoutHistoriesResponseImplCopyWith<
          _$IndividualWorkoutHistoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoutineDtoWrapperModel _$RoutineDtoWrapperModelFromJson(
    Map<String, dynamic> json) {
  return _RoutineDtoWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineDtoWrapperModel {
  RoutineHistoryModel get routineDto => throw _privateConstructorUsedError;

  /// Serializes this RoutineDtoWrapperModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineDtoWrapperModelCopyWith<RoutineDtoWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineDtoWrapperModelCopyWith<$Res> {
  factory $RoutineDtoWrapperModelCopyWith(RoutineDtoWrapperModel value,
          $Res Function(RoutineDtoWrapperModel) then) =
      _$RoutineDtoWrapperModelCopyWithImpl<$Res, RoutineDtoWrapperModel>;
  @useResult
  $Res call({RoutineHistoryModel routineDto});

  $RoutineHistoryModelCopyWith<$Res> get routineDto;
}

/// @nodoc
class _$RoutineDtoWrapperModelCopyWithImpl<$Res,
        $Val extends RoutineDtoWrapperModel>
    implements $RoutineDtoWrapperModelCopyWith<$Res> {
  _$RoutineDtoWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineDto = null,
  }) {
    return _then(_value.copyWith(
      routineDto: null == routineDto
          ? _value.routineDto
          : routineDto // ignore: cast_nullable_to_non_nullable
              as RoutineHistoryModel,
    ) as $Val);
  }

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineHistoryModelCopyWith<$Res> get routineDto {
    return $RoutineHistoryModelCopyWith<$Res>(_value.routineDto, (value) {
      return _then(_value.copyWith(routineDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutineDtoWrapperModelImplCopyWith<$Res>
    implements $RoutineDtoWrapperModelCopyWith<$Res> {
  factory _$$RoutineDtoWrapperModelImplCopyWith(
          _$RoutineDtoWrapperModelImpl value,
          $Res Function(_$RoutineDtoWrapperModelImpl) then) =
      __$$RoutineDtoWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RoutineHistoryModel routineDto});

  @override
  $RoutineHistoryModelCopyWith<$Res> get routineDto;
}

/// @nodoc
class __$$RoutineDtoWrapperModelImplCopyWithImpl<$Res>
    extends _$RoutineDtoWrapperModelCopyWithImpl<$Res,
        _$RoutineDtoWrapperModelImpl>
    implements _$$RoutineDtoWrapperModelImplCopyWith<$Res> {
  __$$RoutineDtoWrapperModelImplCopyWithImpl(
      _$RoutineDtoWrapperModelImpl _value,
      $Res Function(_$RoutineDtoWrapperModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineDto = null,
  }) {
    return _then(_$RoutineDtoWrapperModelImpl(
      null == routineDto
          ? _value.routineDto
          : routineDto // ignore: cast_nullable_to_non_nullable
              as RoutineHistoryModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineDtoWrapperModelImpl implements _RoutineDtoWrapperModel {
  _$RoutineDtoWrapperModelImpl(this.routineDto);

  factory _$RoutineDtoWrapperModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineDtoWrapperModelImplFromJson(json);

  @override
  final RoutineHistoryModel routineDto;

  @override
  String toString() {
    return 'RoutineDtoWrapperModel(routineDto: $routineDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineDtoWrapperModelImpl &&
            (identical(other.routineDto, routineDto) ||
                other.routineDto == routineDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routineDto);

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineDtoWrapperModelImplCopyWith<_$RoutineDtoWrapperModelImpl>
      get copyWith => __$$RoutineDtoWrapperModelImplCopyWithImpl<
          _$RoutineDtoWrapperModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineDtoWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineDtoWrapperModel implements RoutineDtoWrapperModel {
  factory _RoutineDtoWrapperModel(final RoutineHistoryModel routineDto) =
      _$RoutineDtoWrapperModelImpl;

  factory _RoutineDtoWrapperModel.fromJson(Map<String, dynamic> json) =
      _$RoutineDtoWrapperModelImpl.fromJson;

  @override
  RoutineHistoryModel get routineDto;

  /// Create a copy of RoutineDtoWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineDtoWrapperModelImplCopyWith<_$RoutineDtoWrapperModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoutineHistoryModel _$RoutineHistoryModelFromJson(Map<String, dynamic> json) {
  return _RoutineHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineHistoryModel {
  int get routineId => throw _privateConstructorUsedError;
  String get routineName => throw _privateConstructorUsedError;
  String get clientMemo => throw _privateConstructorUsedError;
  int get routineNumberOfExercise => throw _privateConstructorUsedError;
  List<String> get exercisePartsList => throw _privateConstructorUsedError;
  int get exerciseIntensity => throw _privateConstructorUsedError;
  String get exerciseComment => throw _privateConstructorUsedError;
  List<RoutineHistoryExerciseModel> get routinesExerciseDtos =>
      throw _privateConstructorUsedError;
  String get classStartDate => throw _privateConstructorUsedError;
  int get daysAgo => throw _privateConstructorUsedError;
  String get feedBack => throw _privateConstructorUsedError;
  String get routineStatus => throw _privateConstructorUsedError;
  int? get trainerId => throw _privateConstructorUsedError;
  String? get trainerName => throw _privateConstructorUsedError;
  String? get trainerProfile => throw _privateConstructorUsedError;
  int? get clientId => throw _privateConstructorUsedError;
  String? get clientName => throw _privateConstructorUsedError;
  String? get clientProfile => throw _privateConstructorUsedError;

  /// Serializes this RoutineHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoryModelCopyWith<RoutineHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoryModelCopyWith<$Res> {
  factory $RoutineHistoryModelCopyWith(
          RoutineHistoryModel value, $Res Function(RoutineHistoryModel) then) =
      _$RoutineHistoryModelCopyWithImpl<$Res, RoutineHistoryModel>;
  @useResult
  $Res call(
      {int routineId,
      String routineName,
      String clientMemo,
      int routineNumberOfExercise,
      List<String> exercisePartsList,
      int exerciseIntensity,
      String exerciseComment,
      List<RoutineHistoryExerciseModel> routinesExerciseDtos,
      String classStartDate,
      int daysAgo,
      String feedBack,
      String routineStatus,
      int? trainerId,
      String? trainerName,
      String? trainerProfile,
      int? clientId,
      String? clientName,
      String? clientProfile});
}

/// @nodoc
class _$RoutineHistoryModelCopyWithImpl<$Res, $Val extends RoutineHistoryModel>
    implements $RoutineHistoryModelCopyWith<$Res> {
  _$RoutineHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? routineName = null,
    Object? clientMemo = null,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseIntensity = null,
    Object? exerciseComment = null,
    Object? routinesExerciseDtos = null,
    Object? classStartDate = null,
    Object? daysAgo = null,
    Object? feedBack = null,
    Object? routineStatus = null,
    Object? trainerId = freezed,
    Object? trainerName = freezed,
    Object? trainerProfile = freezed,
    Object? clientId = freezed,
    Object? clientName = freezed,
    Object? clientProfile = freezed,
  }) {
    return _then(_value.copyWith(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value.exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exerciseIntensity: null == exerciseIntensity
          ? _value.exerciseIntensity
          : exerciseIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      routinesExerciseDtos: null == routinesExerciseDtos
          ? _value.routinesExerciseDtos
          : routinesExerciseDtos // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryExerciseModel>,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
              as String,
      routineStatus: null == routineStatus
          ? _value.routineStatus
          : routineStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: freezed == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: freezed == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
      trainerProfile: freezed == trainerProfile
          ? _value.trainerProfile
          : trainerProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientProfile: freezed == clientProfile
          ? _value.clientProfile
          : clientProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineHistoryModelImplCopyWith<$Res>
    implements $RoutineHistoryModelCopyWith<$Res> {
  factory _$$RoutineHistoryModelImplCopyWith(_$RoutineHistoryModelImpl value,
          $Res Function(_$RoutineHistoryModelImpl) then) =
      __$$RoutineHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int routineId,
      String routineName,
      String clientMemo,
      int routineNumberOfExercise,
      List<String> exercisePartsList,
      int exerciseIntensity,
      String exerciseComment,
      List<RoutineHistoryExerciseModel> routinesExerciseDtos,
      String classStartDate,
      int daysAgo,
      String feedBack,
      String routineStatus,
      int? trainerId,
      String? trainerName,
      String? trainerProfile,
      int? clientId,
      String? clientName,
      String? clientProfile});
}

/// @nodoc
class __$$RoutineHistoryModelImplCopyWithImpl<$Res>
    extends _$RoutineHistoryModelCopyWithImpl<$Res, _$RoutineHistoryModelImpl>
    implements _$$RoutineHistoryModelImplCopyWith<$Res> {
  __$$RoutineHistoryModelImplCopyWithImpl(_$RoutineHistoryModelImpl _value,
      $Res Function(_$RoutineHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? routineName = null,
    Object? clientMemo = null,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseIntensity = null,
    Object? exerciseComment = null,
    Object? routinesExerciseDtos = null,
    Object? classStartDate = null,
    Object? daysAgo = null,
    Object? feedBack = null,
    Object? routineStatus = null,
    Object? trainerId = freezed,
    Object? trainerName = freezed,
    Object? trainerProfile = freezed,
    Object? clientId = freezed,
    Object? clientName = freezed,
    Object? clientProfile = freezed,
  }) {
    return _then(_$RoutineHistoryModelImpl(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value._exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exerciseIntensity: null == exerciseIntensity
          ? _value.exerciseIntensity
          : exerciseIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      routinesExerciseDtos: null == routinesExerciseDtos
          ? _value._routinesExerciseDtos
          : routinesExerciseDtos // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryExerciseModel>,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
              as String,
      routineStatus: null == routineStatus
          ? _value.routineStatus
          : routineStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: freezed == trainerId
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: freezed == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
      trainerProfile: freezed == trainerProfile
          ? _value.trainerProfile
          : trainerProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientProfile: freezed == clientProfile
          ? _value.clientProfile
          : clientProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineHistoryModelImpl implements _RoutineHistoryModel {
  const _$RoutineHistoryModelImpl(
      {this.routineId = -1,
      this.routineName = "",
      this.clientMemo = "",
      this.routineNumberOfExercise = 0,
      final List<String> exercisePartsList = const [],
      this.exerciseIntensity = 0,
      this.exerciseComment = "",
      final List<RoutineHistoryExerciseModel> routinesExerciseDtos = const [],
      this.classStartDate = "",
      this.daysAgo = 0,
      this.feedBack = "",
      this.routineStatus = "",
      this.trainerId = -1,
      this.trainerName = "",
      this.trainerProfile = "",
      this.clientId = -1,
      this.clientName = "",
      this.clientProfile = ""})
      : _exercisePartsList = exercisePartsList,
        _routinesExerciseDtos = routinesExerciseDtos;

  factory _$RoutineHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineHistoryModelImplFromJson(json);

  @override
  @JsonKey()
  final int routineId;
  @override
  @JsonKey()
  final String routineName;
  @override
  @JsonKey()
  final String clientMemo;
  @override
  @JsonKey()
  final int routineNumberOfExercise;
  final List<String> _exercisePartsList;
  @override
  @JsonKey()
  List<String> get exercisePartsList {
    if (_exercisePartsList is EqualUnmodifiableListView)
      return _exercisePartsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisePartsList);
  }

  @override
  @JsonKey()
  final int exerciseIntensity;
  @override
  @JsonKey()
  final String exerciseComment;
  final List<RoutineHistoryExerciseModel> _routinesExerciseDtos;
  @override
  @JsonKey()
  List<RoutineHistoryExerciseModel> get routinesExerciseDtos {
    if (_routinesExerciseDtos is EqualUnmodifiableListView)
      return _routinesExerciseDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routinesExerciseDtos);
  }

  @override
  @JsonKey()
  final String classStartDate;
  @override
  @JsonKey()
  final int daysAgo;
  @override
  @JsonKey()
  final String feedBack;
  @override
  @JsonKey()
  final String routineStatus;
  @override
  @JsonKey()
  final int? trainerId;
  @override
  @JsonKey()
  final String? trainerName;
  @override
  @JsonKey()
  final String? trainerProfile;
  @override
  @JsonKey()
  final int? clientId;
  @override
  @JsonKey()
  final String? clientName;
  @override
  @JsonKey()
  final String? clientProfile;

  @override
  String toString() {
    return 'RoutineHistoryModel(routineId: $routineId, routineName: $routineName, clientMemo: $clientMemo, routineNumberOfExercise: $routineNumberOfExercise, exercisePartsList: $exercisePartsList, exerciseIntensity: $exerciseIntensity, exerciseComment: $exerciseComment, routinesExerciseDtos: $routinesExerciseDtos, classStartDate: $classStartDate, daysAgo: $daysAgo, feedBack: $feedBack, routineStatus: $routineStatus, trainerId: $trainerId, trainerName: $trainerName, trainerProfile: $trainerProfile, clientId: $clientId, clientName: $clientName, clientProfile: $clientProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoryModelImpl &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.clientMemo, clientMemo) ||
                other.clientMemo == clientMemo) &&
            (identical(
                    other.routineNumberOfExercise, routineNumberOfExercise) ||
                other.routineNumberOfExercise == routineNumberOfExercise) &&
            const DeepCollectionEquality()
                .equals(other._exercisePartsList, _exercisePartsList) &&
            (identical(other.exerciseIntensity, exerciseIntensity) ||
                other.exerciseIntensity == exerciseIntensity) &&
            (identical(other.exerciseComment, exerciseComment) ||
                other.exerciseComment == exerciseComment) &&
            const DeepCollectionEquality()
                .equals(other._routinesExerciseDtos, _routinesExerciseDtos) &&
            (identical(other.classStartDate, classStartDate) ||
                other.classStartDate == classStartDate) &&
            (identical(other.daysAgo, daysAgo) || other.daysAgo == daysAgo) &&
            (identical(other.feedBack, feedBack) ||
                other.feedBack == feedBack) &&
            (identical(other.routineStatus, routineStatus) ||
                other.routineStatus == routineStatus) &&
            (identical(other.trainerId, trainerId) ||
                other.trainerId == trainerId) &&
            (identical(other.trainerName, trainerName) ||
                other.trainerName == trainerName) &&
            (identical(other.trainerProfile, trainerProfile) ||
                other.trainerProfile == trainerProfile) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientProfile, clientProfile) ||
                other.clientProfile == clientProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      routineId,
      routineName,
      clientMemo,
      routineNumberOfExercise,
      const DeepCollectionEquality().hash(_exercisePartsList),
      exerciseIntensity,
      exerciseComment,
      const DeepCollectionEquality().hash(_routinesExerciseDtos),
      classStartDate,
      daysAgo,
      feedBack,
      routineStatus,
      trainerId,
      trainerName,
      trainerProfile,
      clientId,
      clientName,
      clientProfile);

  /// Create a copy of RoutineHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoryModelImplCopyWith<_$RoutineHistoryModelImpl> get copyWith =>
      __$$RoutineHistoryModelImplCopyWithImpl<_$RoutineHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineHistoryModel implements RoutineHistoryModel {
  const factory _RoutineHistoryModel(
      {final int routineId,
      final String routineName,
      final String clientMemo,
      final int routineNumberOfExercise,
      final List<String> exercisePartsList,
      final int exerciseIntensity,
      final String exerciseComment,
      final List<RoutineHistoryExerciseModel> routinesExerciseDtos,
      final String classStartDate,
      final int daysAgo,
      final String feedBack,
      final String routineStatus,
      final int? trainerId,
      final String? trainerName,
      final String? trainerProfile,
      final int? clientId,
      final String? clientName,
      final String? clientProfile}) = _$RoutineHistoryModelImpl;

  factory _RoutineHistoryModel.fromJson(Map<String, dynamic> json) =
      _$RoutineHistoryModelImpl.fromJson;

  @override
  int get routineId;
  @override
  String get routineName;
  @override
  String get clientMemo;
  @override
  int get routineNumberOfExercise;
  @override
  List<String> get exercisePartsList;
  @override
  int get exerciseIntensity;
  @override
  String get exerciseComment;
  @override
  List<RoutineHistoryExerciseModel> get routinesExerciseDtos;
  @override
  String get classStartDate;
  @override
  int get daysAgo;
  @override
  String get feedBack;
  @override
  String get routineStatus;
  @override
  int? get trainerId;
  @override
  String? get trainerName;
  @override
  String? get trainerProfile;
  @override
  int? get clientId;
  @override
  String? get clientName;
  @override
  String? get clientProfile;

  /// Create a copy of RoutineHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoryModelImplCopyWith<_$RoutineHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoutineHistoryExerciseModel _$RoutineHistoryExerciseModelFromJson(
    Map<String, dynamic> json) {
  return _RoutineHistoryExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineHistoryExerciseModel {
  int get routinesExerciseId => throw _privateConstructorUsedError;
  String get routinesExerciseName => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  String get exerciseType => throw _privateConstructorUsedError;
  String get exerciseParts => throw _privateConstructorUsedError;
  String get motion => throw _privateConstructorUsedError;
  String? get performMemo => throw _privateConstructorUsedError;
  List<ExerciseSetModel> get exerciseSets => throw _privateConstructorUsedError;
  List<String> get routineImagesList => throw _privateConstructorUsedError;
  List<FileUrlModel> get routinesImagesListWithType =>
      throw _privateConstructorUsedError;
  String get routinesExerciseMemo => throw _privateConstructorUsedError;

  /// Serializes this RoutineHistoryExerciseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoryExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoryExerciseModelCopyWith<RoutineHistoryExerciseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoryExerciseModelCopyWith<$Res> {
  factory $RoutineHistoryExerciseModelCopyWith(
          RoutineHistoryExerciseModel value,
          $Res Function(RoutineHistoryExerciseModel) then) =
      _$RoutineHistoryExerciseModelCopyWithImpl<$Res,
          RoutineHistoryExerciseModel>;
  @useResult
  $Res call(
      {int routinesExerciseId,
      String routinesExerciseName,
      int exerciseId,
      String exerciseType,
      String exerciseParts,
      String motion,
      String? performMemo,
      List<ExerciseSetModel> exerciseSets,
      List<String> routineImagesList,
      List<FileUrlModel> routinesImagesListWithType,
      String routinesExerciseMemo});
}

/// @nodoc
class _$RoutineHistoryExerciseModelCopyWithImpl<$Res,
        $Val extends RoutineHistoryExerciseModel>
    implements $RoutineHistoryExerciseModelCopyWith<$Res> {
  _$RoutineHistoryExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoryExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = null,
    Object? routinesExerciseName = null,
    Object? exerciseId = null,
    Object? exerciseType = null,
    Object? exerciseParts = null,
    Object? motion = null,
    Object? performMemo = freezed,
    Object? exerciseSets = null,
    Object? routineImagesList = null,
    Object? routinesImagesListWithType = null,
    Object? routinesExerciseMemo = null,
  }) {
    return _then(_value.copyWith(
      routinesExerciseId: null == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      routinesExerciseName: null == routinesExerciseName
          ? _value.routinesExerciseName
          : routinesExerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseParts: null == exerciseParts
          ? _value.exerciseParts
          : exerciseParts // ignore: cast_nullable_to_non_nullable
              as String,
      motion: null == motion
          ? _value.motion
          : motion // ignore: cast_nullable_to_non_nullable
              as String,
      performMemo: freezed == performMemo
          ? _value.performMemo
          : performMemo // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseSets: null == exerciseSets
          ? _value.exerciseSets
          : exerciseSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetModel>,
      routineImagesList: null == routineImagesList
          ? _value.routineImagesList
          : routineImagesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      routinesImagesListWithType: null == routinesImagesListWithType
          ? _value.routinesImagesListWithType
          : routinesImagesListWithType // ignore: cast_nullable_to_non_nullable
              as List<FileUrlModel>,
      routinesExerciseMemo: null == routinesExerciseMemo
          ? _value.routinesExerciseMemo
          : routinesExerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineHistoryExerciseModelImplCopyWith<$Res>
    implements $RoutineHistoryExerciseModelCopyWith<$Res> {
  factory _$$RoutineHistoryExerciseModelImplCopyWith(
          _$RoutineHistoryExerciseModelImpl value,
          $Res Function(_$RoutineHistoryExerciseModelImpl) then) =
      __$$RoutineHistoryExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int routinesExerciseId,
      String routinesExerciseName,
      int exerciseId,
      String exerciseType,
      String exerciseParts,
      String motion,
      String? performMemo,
      List<ExerciseSetModel> exerciseSets,
      List<String> routineImagesList,
      List<FileUrlModel> routinesImagesListWithType,
      String routinesExerciseMemo});
}

/// @nodoc
class __$$RoutineHistoryExerciseModelImplCopyWithImpl<$Res>
    extends _$RoutineHistoryExerciseModelCopyWithImpl<$Res,
        _$RoutineHistoryExerciseModelImpl>
    implements _$$RoutineHistoryExerciseModelImplCopyWith<$Res> {
  __$$RoutineHistoryExerciseModelImplCopyWithImpl(
      _$RoutineHistoryExerciseModelImpl _value,
      $Res Function(_$RoutineHistoryExerciseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoryExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = null,
    Object? routinesExerciseName = null,
    Object? exerciseId = null,
    Object? exerciseType = null,
    Object? exerciseParts = null,
    Object? motion = null,
    Object? performMemo = freezed,
    Object? exerciseSets = null,
    Object? routineImagesList = null,
    Object? routinesImagesListWithType = null,
    Object? routinesExerciseMemo = null,
  }) {
    return _then(_$RoutineHistoryExerciseModelImpl(
      routinesExerciseId: null == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      routinesExerciseName: null == routinesExerciseName
          ? _value.routinesExerciseName
          : routinesExerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseParts: null == exerciseParts
          ? _value.exerciseParts
          : exerciseParts // ignore: cast_nullable_to_non_nullable
              as String,
      motion: null == motion
          ? _value.motion
          : motion // ignore: cast_nullable_to_non_nullable
              as String,
      performMemo: freezed == performMemo
          ? _value.performMemo
          : performMemo // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseSets: null == exerciseSets
          ? _value._exerciseSets
          : exerciseSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetModel>,
      routineImagesList: null == routineImagesList
          ? _value._routineImagesList
          : routineImagesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      routinesImagesListWithType: null == routinesImagesListWithType
          ? _value._routinesImagesListWithType
          : routinesImagesListWithType // ignore: cast_nullable_to_non_nullable
              as List<FileUrlModel>,
      routinesExerciseMemo: null == routinesExerciseMemo
          ? _value.routinesExerciseMemo
          : routinesExerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineHistoryExerciseModelImpl
    implements _RoutineHistoryExerciseModel {
  _$RoutineHistoryExerciseModelImpl(
      {this.routinesExerciseId = -1,
      this.routinesExerciseName = "",
      this.exerciseId = -1,
      this.exerciseType = "",
      this.exerciseParts = "",
      this.motion = "",
      this.performMemo = "",
      final List<ExerciseSetModel> exerciseSets = const [],
      final List<String> routineImagesList = const [],
      final List<FileUrlModel> routinesImagesListWithType = const [],
      this.routinesExerciseMemo = ""})
      : _exerciseSets = exerciseSets,
        _routineImagesList = routineImagesList,
        _routinesImagesListWithType = routinesImagesListWithType;

  factory _$RoutineHistoryExerciseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RoutineHistoryExerciseModelImplFromJson(json);

  @override
  @JsonKey()
  final int routinesExerciseId;
  @override
  @JsonKey()
  final String routinesExerciseName;
  @override
  @JsonKey()
  final int exerciseId;
  @override
  @JsonKey()
  final String exerciseType;
  @override
  @JsonKey()
  final String exerciseParts;
  @override
  @JsonKey()
  final String motion;
  @override
  @JsonKey()
  final String? performMemo;
  final List<ExerciseSetModel> _exerciseSets;
  @override
  @JsonKey()
  List<ExerciseSetModel> get exerciseSets {
    if (_exerciseSets is EqualUnmodifiableListView) return _exerciseSets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseSets);
  }

  final List<String> _routineImagesList;
  @override
  @JsonKey()
  List<String> get routineImagesList {
    if (_routineImagesList is EqualUnmodifiableListView)
      return _routineImagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routineImagesList);
  }

  final List<FileUrlModel> _routinesImagesListWithType;
  @override
  @JsonKey()
  List<FileUrlModel> get routinesImagesListWithType {
    if (_routinesImagesListWithType is EqualUnmodifiableListView)
      return _routinesImagesListWithType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routinesImagesListWithType);
  }

  @override
  @JsonKey()
  final String routinesExerciseMemo;

  @override
  String toString() {
    return 'RoutineHistoryExerciseModel(routinesExerciseId: $routinesExerciseId, routinesExerciseName: $routinesExerciseName, exerciseId: $exerciseId, exerciseType: $exerciseType, exerciseParts: $exerciseParts, motion: $motion, performMemo: $performMemo, exerciseSets: $exerciseSets, routineImagesList: $routineImagesList, routinesImagesListWithType: $routinesImagesListWithType, routinesExerciseMemo: $routinesExerciseMemo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoryExerciseModelImpl &&
            (identical(other.routinesExerciseId, routinesExerciseId) ||
                other.routinesExerciseId == routinesExerciseId) &&
            (identical(other.routinesExerciseName, routinesExerciseName) ||
                other.routinesExerciseName == routinesExerciseName) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.exerciseType, exerciseType) ||
                other.exerciseType == exerciseType) &&
            (identical(other.exerciseParts, exerciseParts) ||
                other.exerciseParts == exerciseParts) &&
            (identical(other.motion, motion) || other.motion == motion) &&
            (identical(other.performMemo, performMemo) ||
                other.performMemo == performMemo) &&
            const DeepCollectionEquality()
                .equals(other._exerciseSets, _exerciseSets) &&
            const DeepCollectionEquality()
                .equals(other._routineImagesList, _routineImagesList) &&
            const DeepCollectionEquality().equals(
                other._routinesImagesListWithType,
                _routinesImagesListWithType) &&
            (identical(other.routinesExerciseMemo, routinesExerciseMemo) ||
                other.routinesExerciseMemo == routinesExerciseMemo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      routinesExerciseId,
      routinesExerciseName,
      exerciseId,
      exerciseType,
      exerciseParts,
      motion,
      performMemo,
      const DeepCollectionEquality().hash(_exerciseSets),
      const DeepCollectionEquality().hash(_routineImagesList),
      const DeepCollectionEquality().hash(_routinesImagesListWithType),
      routinesExerciseMemo);

  /// Create a copy of RoutineHistoryExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoryExerciseModelImplCopyWith<_$RoutineHistoryExerciseModelImpl>
      get copyWith => __$$RoutineHistoryExerciseModelImplCopyWithImpl<
          _$RoutineHistoryExerciseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineHistoryExerciseModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineHistoryExerciseModel
    implements RoutineHistoryExerciseModel {
  factory _RoutineHistoryExerciseModel(
      {final int routinesExerciseId,
      final String routinesExerciseName,
      final int exerciseId,
      final String exerciseType,
      final String exerciseParts,
      final String motion,
      final String? performMemo,
      final List<ExerciseSetModel> exerciseSets,
      final List<String> routineImagesList,
      final List<FileUrlModel> routinesImagesListWithType,
      final String routinesExerciseMemo}) = _$RoutineHistoryExerciseModelImpl;

  factory _RoutineHistoryExerciseModel.fromJson(Map<String, dynamic> json) =
      _$RoutineHistoryExerciseModelImpl.fromJson;

  @override
  int get routinesExerciseId;
  @override
  String get routinesExerciseName;
  @override
  int get exerciseId;
  @override
  String get exerciseType;
  @override
  String get exerciseParts;
  @override
  String get motion;
  @override
  String? get performMemo;
  @override
  List<ExerciseSetModel> get exerciseSets;
  @override
  List<String> get routineImagesList;
  @override
  List<FileUrlModel> get routinesImagesListWithType;
  @override
  String get routinesExerciseMemo;

  /// Create a copy of RoutineHistoryExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoryExerciseModelImplCopyWith<_$RoutineHistoryExerciseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
