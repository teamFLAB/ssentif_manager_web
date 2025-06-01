// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarScheduleModel _$CalendarScheduleModelFromJson(
    Map<String, dynamic> json) {
  return _CalendarScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$CalendarScheduleModel {
  int get scheduleId => throw _privateConstructorUsedError;
  String get scheduleStatus => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get scheduleReservationStartDateTime =>
      throw _privateConstructorUsedError;
  String get scheduleReservationEndDateTime =>
      throw _privateConstructorUsedError;
  int get timeRequired => throw _privateConstructorUsedError;
  String? get repeatName => throw _privateConstructorUsedError;

  /// Serializes this CalendarScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarScheduleModelCopyWith<CalendarScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarScheduleModelCopyWith<$Res> {
  factory $CalendarScheduleModelCopyWith(CalendarScheduleModel value,
          $Res Function(CalendarScheduleModel) then) =
      _$CalendarScheduleModelCopyWithImpl<$Res, CalendarScheduleModel>;
  @useResult
  $Res call(
      {int scheduleId,
      String scheduleStatus,
      String title,
      String scheduleReservationStartDateTime,
      String scheduleReservationEndDateTime,
      int timeRequired,
      String? repeatName});
}

/// @nodoc
class _$CalendarScheduleModelCopyWithImpl<$Res,
        $Val extends CalendarScheduleModel>
    implements $CalendarScheduleModelCopyWith<$Res> {
  _$CalendarScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStatus = null,
    Object? title = null,
    Object? scheduleReservationStartDateTime = null,
    Object? scheduleReservationEndDateTime = null,
    Object? timeRequired = null,
    Object? repeatName = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleReservationStartDateTime: null == scheduleReservationStartDateTime
          ? _value.scheduleReservationStartDateTime
          : scheduleReservationStartDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleReservationEndDateTime: null == scheduleReservationEndDateTime
          ? _value.scheduleReservationEndDateTime
          : scheduleReservationEndDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: freezed == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarScheduleModelImplCopyWith<$Res>
    implements $CalendarScheduleModelCopyWith<$Res> {
  factory _$$CalendarScheduleModelImplCopyWith(
          _$CalendarScheduleModelImpl value,
          $Res Function(_$CalendarScheduleModelImpl) then) =
      __$$CalendarScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int scheduleId,
      String scheduleStatus,
      String title,
      String scheduleReservationStartDateTime,
      String scheduleReservationEndDateTime,
      int timeRequired,
      String? repeatName});
}

/// @nodoc
class __$$CalendarScheduleModelImplCopyWithImpl<$Res>
    extends _$CalendarScheduleModelCopyWithImpl<$Res,
        _$CalendarScheduleModelImpl>
    implements _$$CalendarScheduleModelImplCopyWith<$Res> {
  __$$CalendarScheduleModelImplCopyWithImpl(_$CalendarScheduleModelImpl _value,
      $Res Function(_$CalendarScheduleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStatus = null,
    Object? title = null,
    Object? scheduleReservationStartDateTime = null,
    Object? scheduleReservationEndDateTime = null,
    Object? timeRequired = null,
    Object? repeatName = freezed,
  }) {
    return _then(_$CalendarScheduleModelImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleReservationStartDateTime: null == scheduleReservationStartDateTime
          ? _value.scheduleReservationStartDateTime
          : scheduleReservationStartDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleReservationEndDateTime: null == scheduleReservationEndDateTime
          ? _value.scheduleReservationEndDateTime
          : scheduleReservationEndDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: freezed == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarScheduleModelImpl implements _CalendarScheduleModel {
  const _$CalendarScheduleModelImpl(
      {this.scheduleId = -1,
      this.scheduleStatus = "",
      this.title = "",
      this.scheduleReservationStartDateTime = "",
      this.scheduleReservationEndDateTime = "",
      this.timeRequired = 0,
      this.repeatName = ""});

  factory _$CalendarScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarScheduleModelImplFromJson(json);

  @override
  @JsonKey()
  final int scheduleId;
  @override
  @JsonKey()
  final String scheduleStatus;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String scheduleReservationStartDateTime;
  @override
  @JsonKey()
  final String scheduleReservationEndDateTime;
  @override
  @JsonKey()
  final int timeRequired;
  @override
  @JsonKey()
  final String? repeatName;

  @override
  String toString() {
    return 'CalendarScheduleModel(scheduleId: $scheduleId, scheduleStatus: $scheduleStatus, title: $title, scheduleReservationStartDateTime: $scheduleReservationStartDateTime, scheduleReservationEndDateTime: $scheduleReservationEndDateTime, timeRequired: $timeRequired, repeatName: $repeatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarScheduleModelImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.scheduleReservationStartDateTime,
                    scheduleReservationStartDateTime) ||
                other.scheduleReservationStartDateTime ==
                    scheduleReservationStartDateTime) &&
            (identical(other.scheduleReservationEndDateTime,
                    scheduleReservationEndDateTime) ||
                other.scheduleReservationEndDateTime ==
                    scheduleReservationEndDateTime) &&
            (identical(other.timeRequired, timeRequired) ||
                other.timeRequired == timeRequired) &&
            (identical(other.repeatName, repeatName) ||
                other.repeatName == repeatName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scheduleId,
      scheduleStatus,
      title,
      scheduleReservationStartDateTime,
      scheduleReservationEndDateTime,
      timeRequired,
      repeatName);

  /// Create a copy of CalendarScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarScheduleModelImplCopyWith<_$CalendarScheduleModelImpl>
      get copyWith => __$$CalendarScheduleModelImplCopyWithImpl<
          _$CalendarScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _CalendarScheduleModel implements CalendarScheduleModel {
  const factory _CalendarScheduleModel(
      {final int scheduleId,
      final String scheduleStatus,
      final String title,
      final String scheduleReservationStartDateTime,
      final String scheduleReservationEndDateTime,
      final int timeRequired,
      final String? repeatName}) = _$CalendarScheduleModelImpl;

  factory _CalendarScheduleModel.fromJson(Map<String, dynamic> json) =
      _$CalendarScheduleModelImpl.fromJson;

  @override
  int get scheduleId;
  @override
  String get scheduleStatus;
  @override
  String get title;
  @override
  String get scheduleReservationStartDateTime;
  @override
  String get scheduleReservationEndDateTime;
  @override
  int get timeRequired;
  @override
  String? get repeatName;

  /// Create a copy of CalendarScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarScheduleModelImplCopyWith<_$CalendarScheduleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
