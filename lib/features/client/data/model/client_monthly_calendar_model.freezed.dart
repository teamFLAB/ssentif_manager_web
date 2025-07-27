// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_monthly_calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientMonthlyCalendarModel _$ClientMonthlyCalendarModelFromJson(
    Map<String, dynamic> json) {
  return _ClientMonthlyCalendarModel.fromJson(json);
}

/// @nodoc
mixin _$ClientMonthlyCalendarModel {
  CalendarCountResponse get calendarCountResponse =>
      throw _privateConstructorUsedError;
  List<ClientCalendarDayModel> get calendarDaysV2Responses =>
      throw _privateConstructorUsedError;

  /// Serializes this ClientMonthlyCalendarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientMonthlyCalendarModelCopyWith<ClientMonthlyCalendarModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientMonthlyCalendarModelCopyWith<$Res> {
  factory $ClientMonthlyCalendarModelCopyWith(ClientMonthlyCalendarModel value,
          $Res Function(ClientMonthlyCalendarModel) then) =
      _$ClientMonthlyCalendarModelCopyWithImpl<$Res,
          ClientMonthlyCalendarModel>;
  @useResult
  $Res call(
      {CalendarCountResponse calendarCountResponse,
      List<ClientCalendarDayModel> calendarDaysV2Responses});

  $CalendarCountResponseCopyWith<$Res> get calendarCountResponse;
}

/// @nodoc
class _$ClientMonthlyCalendarModelCopyWithImpl<$Res,
        $Val extends ClientMonthlyCalendarModel>
    implements $ClientMonthlyCalendarModelCopyWith<$Res> {
  _$ClientMonthlyCalendarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarCountResponse = null,
    Object? calendarDaysV2Responses = null,
  }) {
    return _then(_value.copyWith(
      calendarCountResponse: null == calendarCountResponse
          ? _value.calendarCountResponse
          : calendarCountResponse // ignore: cast_nullable_to_non_nullable
              as CalendarCountResponse,
      calendarDaysV2Responses: null == calendarDaysV2Responses
          ? _value.calendarDaysV2Responses
          : calendarDaysV2Responses // ignore: cast_nullable_to_non_nullable
              as List<ClientCalendarDayModel>,
    ) as $Val);
  }

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CalendarCountResponseCopyWith<$Res> get calendarCountResponse {
    return $CalendarCountResponseCopyWith<$Res>(_value.calendarCountResponse,
        (value) {
      return _then(_value.copyWith(calendarCountResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientMonthlyCalendarModelImplCopyWith<$Res>
    implements $ClientMonthlyCalendarModelCopyWith<$Res> {
  factory _$$ClientMonthlyCalendarModelImplCopyWith(
          _$ClientMonthlyCalendarModelImpl value,
          $Res Function(_$ClientMonthlyCalendarModelImpl) then) =
      __$$ClientMonthlyCalendarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CalendarCountResponse calendarCountResponse,
      List<ClientCalendarDayModel> calendarDaysV2Responses});

  @override
  $CalendarCountResponseCopyWith<$Res> get calendarCountResponse;
}

/// @nodoc
class __$$ClientMonthlyCalendarModelImplCopyWithImpl<$Res>
    extends _$ClientMonthlyCalendarModelCopyWithImpl<$Res,
        _$ClientMonthlyCalendarModelImpl>
    implements _$$ClientMonthlyCalendarModelImplCopyWith<$Res> {
  __$$ClientMonthlyCalendarModelImplCopyWithImpl(
      _$ClientMonthlyCalendarModelImpl _value,
      $Res Function(_$ClientMonthlyCalendarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarCountResponse = null,
    Object? calendarDaysV2Responses = null,
  }) {
    return _then(_$ClientMonthlyCalendarModelImpl(
      calendarCountResponse: null == calendarCountResponse
          ? _value.calendarCountResponse
          : calendarCountResponse // ignore: cast_nullable_to_non_nullable
              as CalendarCountResponse,
      calendarDaysV2Responses: null == calendarDaysV2Responses
          ? _value._calendarDaysV2Responses
          : calendarDaysV2Responses // ignore: cast_nullable_to_non_nullable
              as List<ClientCalendarDayModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientMonthlyCalendarModelImpl implements _ClientMonthlyCalendarModel {
  const _$ClientMonthlyCalendarModelImpl(
      {this.calendarCountResponse = const CalendarCountResponse(),
      final List<ClientCalendarDayModel> calendarDaysV2Responses = const []})
      : _calendarDaysV2Responses = calendarDaysV2Responses;

  factory _$ClientMonthlyCalendarModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientMonthlyCalendarModelImplFromJson(json);

  @override
  @JsonKey()
  final CalendarCountResponse calendarCountResponse;
  final List<ClientCalendarDayModel> _calendarDaysV2Responses;
  @override
  @JsonKey()
  List<ClientCalendarDayModel> get calendarDaysV2Responses {
    if (_calendarDaysV2Responses is EqualUnmodifiableListView)
      return _calendarDaysV2Responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendarDaysV2Responses);
  }

  @override
  String toString() {
    return 'ClientMonthlyCalendarModel(calendarCountResponse: $calendarCountResponse, calendarDaysV2Responses: $calendarDaysV2Responses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientMonthlyCalendarModelImpl &&
            (identical(other.calendarCountResponse, calendarCountResponse) ||
                other.calendarCountResponse == calendarCountResponse) &&
            const DeepCollectionEquality().equals(
                other._calendarDaysV2Responses, _calendarDaysV2Responses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calendarCountResponse,
      const DeepCollectionEquality().hash(_calendarDaysV2Responses));

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientMonthlyCalendarModelImplCopyWith<_$ClientMonthlyCalendarModelImpl>
      get copyWith => __$$ClientMonthlyCalendarModelImplCopyWithImpl<
          _$ClientMonthlyCalendarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientMonthlyCalendarModelImplToJson(
      this,
    );
  }
}

abstract class _ClientMonthlyCalendarModel
    implements ClientMonthlyCalendarModel {
  const factory _ClientMonthlyCalendarModel(
          {final CalendarCountResponse calendarCountResponse,
          final List<ClientCalendarDayModel> calendarDaysV2Responses}) =
      _$ClientMonthlyCalendarModelImpl;

  factory _ClientMonthlyCalendarModel.fromJson(Map<String, dynamic> json) =
      _$ClientMonthlyCalendarModelImpl.fromJson;

  @override
  CalendarCountResponse get calendarCountResponse;
  @override
  List<ClientCalendarDayModel> get calendarDaysV2Responses;

  /// Create a copy of ClientMonthlyCalendarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientMonthlyCalendarModelImplCopyWith<_$ClientMonthlyCalendarModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalendarCountResponse _$CalendarCountResponseFromJson(
    Map<String, dynamic> json) {
  return _CalendarCountResponse.fromJson(json);
}

/// @nodoc
mixin _$CalendarCountResponse {
  int get workoutCounts => throw _privateConstructorUsedError;
  int get scheduleCounts => throw _privateConstructorUsedError;
  int get dietCounts => throw _privateConstructorUsedError;

  /// Serializes this CalendarCountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarCountResponseCopyWith<CalendarCountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCountResponseCopyWith<$Res> {
  factory $CalendarCountResponseCopyWith(CalendarCountResponse value,
          $Res Function(CalendarCountResponse) then) =
      _$CalendarCountResponseCopyWithImpl<$Res, CalendarCountResponse>;
  @useResult
  $Res call({int workoutCounts, int scheduleCounts, int dietCounts});
}

/// @nodoc
class _$CalendarCountResponseCopyWithImpl<$Res,
        $Val extends CalendarCountResponse>
    implements $CalendarCountResponseCopyWith<$Res> {
  _$CalendarCountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutCounts = null,
    Object? scheduleCounts = null,
    Object? dietCounts = null,
  }) {
    return _then(_value.copyWith(
      workoutCounts: null == workoutCounts
          ? _value.workoutCounts
          : workoutCounts // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleCounts: null == scheduleCounts
          ? _value.scheduleCounts
          : scheduleCounts // ignore: cast_nullable_to_non_nullable
              as int,
      dietCounts: null == dietCounts
          ? _value.dietCounts
          : dietCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarCountResponseImplCopyWith<$Res>
    implements $CalendarCountResponseCopyWith<$Res> {
  factory _$$CalendarCountResponseImplCopyWith(
          _$CalendarCountResponseImpl value,
          $Res Function(_$CalendarCountResponseImpl) then) =
      __$$CalendarCountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int workoutCounts, int scheduleCounts, int dietCounts});
}

/// @nodoc
class __$$CalendarCountResponseImplCopyWithImpl<$Res>
    extends _$CalendarCountResponseCopyWithImpl<$Res,
        _$CalendarCountResponseImpl>
    implements _$$CalendarCountResponseImplCopyWith<$Res> {
  __$$CalendarCountResponseImplCopyWithImpl(_$CalendarCountResponseImpl _value,
      $Res Function(_$CalendarCountResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutCounts = null,
    Object? scheduleCounts = null,
    Object? dietCounts = null,
  }) {
    return _then(_$CalendarCountResponseImpl(
      workoutCounts: null == workoutCounts
          ? _value.workoutCounts
          : workoutCounts // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleCounts: null == scheduleCounts
          ? _value.scheduleCounts
          : scheduleCounts // ignore: cast_nullable_to_non_nullable
              as int,
      dietCounts: null == dietCounts
          ? _value.dietCounts
          : dietCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarCountResponseImpl implements _CalendarCountResponse {
  const _$CalendarCountResponseImpl(
      {this.workoutCounts = 0, this.scheduleCounts = 0, this.dietCounts = 0});

  factory _$CalendarCountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarCountResponseImplFromJson(json);

  @override
  @JsonKey()
  final int workoutCounts;
  @override
  @JsonKey()
  final int scheduleCounts;
  @override
  @JsonKey()
  final int dietCounts;

  @override
  String toString() {
    return 'CalendarCountResponse(workoutCounts: $workoutCounts, scheduleCounts: $scheduleCounts, dietCounts: $dietCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarCountResponseImpl &&
            (identical(other.workoutCounts, workoutCounts) ||
                other.workoutCounts == workoutCounts) &&
            (identical(other.scheduleCounts, scheduleCounts) ||
                other.scheduleCounts == scheduleCounts) &&
            (identical(other.dietCounts, dietCounts) ||
                other.dietCounts == dietCounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, workoutCounts, scheduleCounts, dietCounts);

  /// Create a copy of CalendarCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarCountResponseImplCopyWith<_$CalendarCountResponseImpl>
      get copyWith => __$$CalendarCountResponseImplCopyWithImpl<
          _$CalendarCountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarCountResponseImplToJson(
      this,
    );
  }
}

abstract class _CalendarCountResponse implements CalendarCountResponse {
  const factory _CalendarCountResponse(
      {final int workoutCounts,
      final int scheduleCounts,
      final int dietCounts}) = _$CalendarCountResponseImpl;

  factory _CalendarCountResponse.fromJson(Map<String, dynamic> json) =
      _$CalendarCountResponseImpl.fromJson;

  @override
  int get workoutCounts;
  @override
  int get scheduleCounts;
  @override
  int get dietCounts;

  /// Create a copy of CalendarCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarCountResponseImplCopyWith<_$CalendarCountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientCalendarDayModel _$ClientCalendarDayModelFromJson(
    Map<String, dynamic> json) {
  return _ClientCalendarDayModel.fromJson(json);
}

/// @nodoc
mixin _$ClientCalendarDayModel {
  String get day => throw _privateConstructorUsedError;
  List<int> get workoutIds => throw _privateConstructorUsedError;
  List<ScheduleEventModel> get schedules => throw _privateConstructorUsedError;
  int get dietId => throw _privateConstructorUsedError;

  /// Serializes this ClientCalendarDayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientCalendarDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientCalendarDayModelCopyWith<ClientCalendarDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCalendarDayModelCopyWith<$Res> {
  factory $ClientCalendarDayModelCopyWith(ClientCalendarDayModel value,
          $Res Function(ClientCalendarDayModel) then) =
      _$ClientCalendarDayModelCopyWithImpl<$Res, ClientCalendarDayModel>;
  @useResult
  $Res call(
      {String day,
      List<int> workoutIds,
      List<ScheduleEventModel> schedules,
      int dietId});
}

/// @nodoc
class _$ClientCalendarDayModelCopyWithImpl<$Res,
        $Val extends ClientCalendarDayModel>
    implements $ClientCalendarDayModelCopyWith<$Res> {
  _$ClientCalendarDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientCalendarDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? workoutIds = null,
    Object? schedules = null,
    Object? dietId = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      workoutIds: null == workoutIds
          ? _value.workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEventModel>,
      dietId: null == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientCalendarDayModelImplCopyWith<$Res>
    implements $ClientCalendarDayModelCopyWith<$Res> {
  factory _$$ClientCalendarDayModelImplCopyWith(
          _$ClientCalendarDayModelImpl value,
          $Res Function(_$ClientCalendarDayModelImpl) then) =
      __$$ClientCalendarDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String day,
      List<int> workoutIds,
      List<ScheduleEventModel> schedules,
      int dietId});
}

/// @nodoc
class __$$ClientCalendarDayModelImplCopyWithImpl<$Res>
    extends _$ClientCalendarDayModelCopyWithImpl<$Res,
        _$ClientCalendarDayModelImpl>
    implements _$$ClientCalendarDayModelImplCopyWith<$Res> {
  __$$ClientCalendarDayModelImplCopyWithImpl(
      _$ClientCalendarDayModelImpl _value,
      $Res Function(_$ClientCalendarDayModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientCalendarDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? workoutIds = null,
    Object? schedules = null,
    Object? dietId = null,
  }) {
    return _then(_$ClientCalendarDayModelImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      workoutIds: null == workoutIds
          ? _value._workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEventModel>,
      dietId: null == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientCalendarDayModelImpl implements _ClientCalendarDayModel {
  const _$ClientCalendarDayModelImpl(
      {this.day = "",
      final List<int> workoutIds = const [],
      final List<ScheduleEventModel> schedules = const [],
      this.dietId = -1})
      : _workoutIds = workoutIds,
        _schedules = schedules;

  factory _$ClientCalendarDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientCalendarDayModelImplFromJson(json);

  @override
  @JsonKey()
  final String day;
  final List<int> _workoutIds;
  @override
  @JsonKey()
  List<int> get workoutIds {
    if (_workoutIds is EqualUnmodifiableListView) return _workoutIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutIds);
  }

  final List<ScheduleEventModel> _schedules;
  @override
  @JsonKey()
  List<ScheduleEventModel> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  @JsonKey()
  final int dietId;

  @override
  String toString() {
    return 'ClientCalendarDayModel(day: $day, workoutIds: $workoutIds, schedules: $schedules, dietId: $dietId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCalendarDayModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality()
                .equals(other._workoutIds, _workoutIds) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            (identical(other.dietId, dietId) || other.dietId == dietId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      day,
      const DeepCollectionEquality().hash(_workoutIds),
      const DeepCollectionEquality().hash(_schedules),
      dietId);

  /// Create a copy of ClientCalendarDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientCalendarDayModelImplCopyWith<_$ClientCalendarDayModelImpl>
      get copyWith => __$$ClientCalendarDayModelImplCopyWithImpl<
          _$ClientCalendarDayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientCalendarDayModelImplToJson(
      this,
    );
  }
}

abstract class _ClientCalendarDayModel implements ClientCalendarDayModel {
  const factory _ClientCalendarDayModel(
      {final String day,
      final List<int> workoutIds,
      final List<ScheduleEventModel> schedules,
      final int dietId}) = _$ClientCalendarDayModelImpl;

  factory _ClientCalendarDayModel.fromJson(Map<String, dynamic> json) =
      _$ClientCalendarDayModelImpl.fromJson;

  @override
  String get day;
  @override
  List<int> get workoutIds;
  @override
  List<ScheduleEventModel> get schedules;
  @override
  int get dietId;

  /// Create a copy of ClientCalendarDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientCalendarDayModelImplCopyWith<_$ClientCalendarDayModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScheduleEventModel _$ScheduleEventModelFromJson(Map<String, dynamic> json) {
  return _ScheduleEventModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEventModel {
  int get scheduleId => throw _privateConstructorUsedError;
  String get scheduleStatus => throw _privateConstructorUsedError;

  /// Serializes this ScheduleEventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleEventModelCopyWith<ScheduleEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventModelCopyWith<$Res> {
  factory $ScheduleEventModelCopyWith(
          ScheduleEventModel value, $Res Function(ScheduleEventModel) then) =
      _$ScheduleEventModelCopyWithImpl<$Res, ScheduleEventModel>;
  @useResult
  $Res call({int scheduleId, String scheduleStatus});
}

/// @nodoc
class _$ScheduleEventModelCopyWithImpl<$Res, $Val extends ScheduleEventModel>
    implements $ScheduleEventModelCopyWith<$Res> {
  _$ScheduleEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStatus = null,
  }) {
    return _then(_value.copyWith(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleEventModelImplCopyWith<$Res>
    implements $ScheduleEventModelCopyWith<$Res> {
  factory _$$ScheduleEventModelImplCopyWith(_$ScheduleEventModelImpl value,
          $Res Function(_$ScheduleEventModelImpl) then) =
      __$$ScheduleEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int scheduleId, String scheduleStatus});
}

/// @nodoc
class __$$ScheduleEventModelImplCopyWithImpl<$Res>
    extends _$ScheduleEventModelCopyWithImpl<$Res, _$ScheduleEventModelImpl>
    implements _$$ScheduleEventModelImplCopyWith<$Res> {
  __$$ScheduleEventModelImplCopyWithImpl(_$ScheduleEventModelImpl _value,
      $Res Function(_$ScheduleEventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStatus = null,
  }) {
    return _then(_$ScheduleEventModelImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleEventModelImpl implements _ScheduleEventModel {
  const _$ScheduleEventModelImpl(
      {this.scheduleId = -1, this.scheduleStatus = ""});

  factory _$ScheduleEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleEventModelImplFromJson(json);

  @override
  @JsonKey()
  final int scheduleId;
  @override
  @JsonKey()
  final String scheduleStatus;

  @override
  String toString() {
    return 'ScheduleEventModel(scheduleId: $scheduleId, scheduleStatus: $scheduleStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventModelImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scheduleId, scheduleStatus);

  /// Create a copy of ScheduleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventModelImplCopyWith<_$ScheduleEventModelImpl> get copyWith =>
      __$$ScheduleEventModelImplCopyWithImpl<_$ScheduleEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleEventModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleEventModel implements ScheduleEventModel {
  const factory _ScheduleEventModel(
      {final int scheduleId,
      final String scheduleStatus}) = _$ScheduleEventModelImpl;

  factory _ScheduleEventModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleEventModelImpl.fromJson;

  @override
  int get scheduleId;
  @override
  String get scheduleStatus;

  /// Create a copy of ScheduleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventModelImplCopyWith<_$ScheduleEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
