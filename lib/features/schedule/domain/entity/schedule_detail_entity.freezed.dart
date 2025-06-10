// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleDetailEntity {
  int get scheduleId => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get runningTime => throw _privateConstructorUsedError;
  String get scheduleTitle => throw _privateConstructorUsedError;
  String get scheduleMemo => throw _privateConstructorUsedError;
  ScheduleStatusType? get scheduleStatusType =>
      throw _privateConstructorUsedError;
  ScheduleType? get scheduleType => throw _privateConstructorUsedError;
  int get totalNumberOfTime => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;
  String get schedulePrecautions => throw _privateConstructorUsedError;
  int get classInfoId => throw _privateConstructorUsedError;
  String get repeatName => throw _privateConstructorUsedError;
  int get voucherMatchingId => throw _privateConstructorUsedError;
  VoucherInfoEntity get voucherInfoEntity => throw _privateConstructorUsedError;
  UserInfoEntity get userInfo => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDetailEntityCopyWith<ScheduleDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailEntityCopyWith<$Res> {
  factory $ScheduleDetailEntityCopyWith(ScheduleDetailEntity value,
          $Res Function(ScheduleDetailEntity) then) =
      _$ScheduleDetailEntityCopyWithImpl<$Res, ScheduleDetailEntity>;
  @useResult
  $Res call(
      {int scheduleId,
      String startDate,
      String endDate,
      String startTime,
      String endTime,
      int runningTime,
      String scheduleTitle,
      String scheduleMemo,
      ScheduleStatusType? scheduleStatusType,
      ScheduleType? scheduleType,
      int totalNumberOfTime,
      int leftNumberOfTime,
      String schedulePrecautions,
      int classInfoId,
      String repeatName,
      int voucherMatchingId,
      VoucherInfoEntity voucherInfoEntity,
      UserInfoEntity userInfo});

  $VoucherInfoEntityCopyWith<$Res> get voucherInfoEntity;
  $UserInfoEntityCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$ScheduleDetailEntityCopyWithImpl<$Res,
        $Val extends ScheduleDetailEntity>
    implements $ScheduleDetailEntityCopyWith<$Res> {
  _$ScheduleDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? runningTime = null,
    Object? scheduleTitle = null,
    Object? scheduleMemo = null,
    Object? scheduleStatusType = freezed,
    Object? scheduleType = freezed,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? schedulePrecautions = null,
    Object? classInfoId = null,
    Object? repeatName = null,
    Object? voucherMatchingId = null,
    Object? voucherInfoEntity = null,
    Object? userInfo = null,
  }) {
    return _then(_value.copyWith(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleMemo: null == scheduleMemo
          ? _value.scheduleMemo
          : scheduleMemo // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatusType: freezed == scheduleStatusType
          ? _value.scheduleStatusType
          : scheduleStatusType // ignore: cast_nullable_to_non_nullable
              as ScheduleStatusType?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      totalNumberOfTime: null == totalNumberOfTime
          ? _value.totalNumberOfTime
          : totalNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      schedulePrecautions: null == schedulePrecautions
          ? _value.schedulePrecautions
          : schedulePrecautions // ignore: cast_nullable_to_non_nullable
              as String,
      classInfoId: null == classInfoId
          ? _value.classInfoId
          : classInfoId // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: null == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherInfoEntity: null == voucherInfoEntity
          ? _value.voucherInfoEntity
          : voucherInfoEntity // ignore: cast_nullable_to_non_nullable
              as VoucherInfoEntity,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity,
    ) as $Val);
  }

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoucherInfoEntityCopyWith<$Res> get voucherInfoEntity {
    return $VoucherInfoEntityCopyWith<$Res>(_value.voucherInfoEntity, (value) {
      return _then(_value.copyWith(voucherInfoEntity: value) as $Val);
    });
  }

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoEntityCopyWith<$Res> get userInfo {
    return $UserInfoEntityCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleDetailEntityImplCopyWith<$Res>
    implements $ScheduleDetailEntityCopyWith<$Res> {
  factory _$$ScheduleDetailEntityImplCopyWith(_$ScheduleDetailEntityImpl value,
          $Res Function(_$ScheduleDetailEntityImpl) then) =
      __$$ScheduleDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int scheduleId,
      String startDate,
      String endDate,
      String startTime,
      String endTime,
      int runningTime,
      String scheduleTitle,
      String scheduleMemo,
      ScheduleStatusType? scheduleStatusType,
      ScheduleType? scheduleType,
      int totalNumberOfTime,
      int leftNumberOfTime,
      String schedulePrecautions,
      int classInfoId,
      String repeatName,
      int voucherMatchingId,
      VoucherInfoEntity voucherInfoEntity,
      UserInfoEntity userInfo});

  @override
  $VoucherInfoEntityCopyWith<$Res> get voucherInfoEntity;
  @override
  $UserInfoEntityCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$ScheduleDetailEntityImplCopyWithImpl<$Res>
    extends _$ScheduleDetailEntityCopyWithImpl<$Res, _$ScheduleDetailEntityImpl>
    implements _$$ScheduleDetailEntityImplCopyWith<$Res> {
  __$$ScheduleDetailEntityImplCopyWithImpl(_$ScheduleDetailEntityImpl _value,
      $Res Function(_$ScheduleDetailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? runningTime = null,
    Object? scheduleTitle = null,
    Object? scheduleMemo = null,
    Object? scheduleStatusType = freezed,
    Object? scheduleType = freezed,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? schedulePrecautions = null,
    Object? classInfoId = null,
    Object? repeatName = null,
    Object? voucherMatchingId = null,
    Object? voucherInfoEntity = null,
    Object? userInfo = null,
  }) {
    return _then(_$ScheduleDetailEntityImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleMemo: null == scheduleMemo
          ? _value.scheduleMemo
          : scheduleMemo // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatusType: freezed == scheduleStatusType
          ? _value.scheduleStatusType
          : scheduleStatusType // ignore: cast_nullable_to_non_nullable
              as ScheduleStatusType?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      totalNumberOfTime: null == totalNumberOfTime
          ? _value.totalNumberOfTime
          : totalNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      schedulePrecautions: null == schedulePrecautions
          ? _value.schedulePrecautions
          : schedulePrecautions // ignore: cast_nullable_to_non_nullable
              as String,
      classInfoId: null == classInfoId
          ? _value.classInfoId
          : classInfoId // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: null == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherInfoEntity: null == voucherInfoEntity
          ? _value.voucherInfoEntity
          : voucherInfoEntity // ignore: cast_nullable_to_non_nullable
              as VoucherInfoEntity,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity,
    ));
  }
}

/// @nodoc

class _$ScheduleDetailEntityImpl implements _ScheduleDetailEntity {
  const _$ScheduleDetailEntityImpl(
      {this.scheduleId = -1,
      this.startDate = "",
      this.endDate = "",
      this.startTime = "",
      this.endTime = "",
      this.runningTime = 0,
      this.scheduleTitle = "",
      this.scheduleMemo = "",
      this.scheduleStatusType = null,
      this.scheduleType = null,
      this.totalNumberOfTime = -1,
      this.leftNumberOfTime = -1,
      this.schedulePrecautions = "",
      this.classInfoId = -1,
      this.repeatName = "",
      this.voucherMatchingId = -1,
      this.voucherInfoEntity = const VoucherInfoEntity(),
      this.userInfo = const UserInfoEntity()});

  @override
  @JsonKey()
  final int scheduleId;
  @override
  @JsonKey()
  final String startDate;
  @override
  @JsonKey()
  final String endDate;
  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey()
  final int runningTime;
  @override
  @JsonKey()
  final String scheduleTitle;
  @override
  @JsonKey()
  final String scheduleMemo;
  @override
  @JsonKey()
  final ScheduleStatusType? scheduleStatusType;
  @override
  @JsonKey()
  final ScheduleType? scheduleType;
  @override
  @JsonKey()
  final int totalNumberOfTime;
  @override
  @JsonKey()
  final int leftNumberOfTime;
  @override
  @JsonKey()
  final String schedulePrecautions;
  @override
  @JsonKey()
  final int classInfoId;
  @override
  @JsonKey()
  final String repeatName;
  @override
  @JsonKey()
  final int voucherMatchingId;
  @override
  @JsonKey()
  final VoucherInfoEntity voucherInfoEntity;
  @override
  @JsonKey()
  final UserInfoEntity userInfo;

  @override
  String toString() {
    return 'ScheduleDetailEntity(scheduleId: $scheduleId, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, runningTime: $runningTime, scheduleTitle: $scheduleTitle, scheduleMemo: $scheduleMemo, scheduleStatusType: $scheduleStatusType, scheduleType: $scheduleType, totalNumberOfTime: $totalNumberOfTime, leftNumberOfTime: $leftNumberOfTime, schedulePrecautions: $schedulePrecautions, classInfoId: $classInfoId, repeatName: $repeatName, voucherMatchingId: $voucherMatchingId, voucherInfoEntity: $voucherInfoEntity, userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDetailEntityImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.runningTime, runningTime) ||
                other.runningTime == runningTime) &&
            (identical(other.scheduleTitle, scheduleTitle) ||
                other.scheduleTitle == scheduleTitle) &&
            (identical(other.scheduleMemo, scheduleMemo) ||
                other.scheduleMemo == scheduleMemo) &&
            (identical(other.scheduleStatusType, scheduleStatusType) ||
                other.scheduleStatusType == scheduleStatusType) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.totalNumberOfTime, totalNumberOfTime) ||
                other.totalNumberOfTime == totalNumberOfTime) &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime) &&
            (identical(other.schedulePrecautions, schedulePrecautions) ||
                other.schedulePrecautions == schedulePrecautions) &&
            (identical(other.classInfoId, classInfoId) ||
                other.classInfoId == classInfoId) &&
            (identical(other.repeatName, repeatName) ||
                other.repeatName == repeatName) &&
            (identical(other.voucherMatchingId, voucherMatchingId) ||
                other.voucherMatchingId == voucherMatchingId) &&
            (identical(other.voucherInfoEntity, voucherInfoEntity) ||
                other.voucherInfoEntity == voucherInfoEntity) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      scheduleId,
      startDate,
      endDate,
      startTime,
      endTime,
      runningTime,
      scheduleTitle,
      scheduleMemo,
      scheduleStatusType,
      scheduleType,
      totalNumberOfTime,
      leftNumberOfTime,
      schedulePrecautions,
      classInfoId,
      repeatName,
      voucherMatchingId,
      voucherInfoEntity,
      userInfo);

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDetailEntityImplCopyWith<_$ScheduleDetailEntityImpl>
      get copyWith =>
          __$$ScheduleDetailEntityImplCopyWithImpl<_$ScheduleDetailEntityImpl>(
              this, _$identity);
}

abstract class _ScheduleDetailEntity implements ScheduleDetailEntity {
  const factory _ScheduleDetailEntity(
      {final int scheduleId,
      final String startDate,
      final String endDate,
      final String startTime,
      final String endTime,
      final int runningTime,
      final String scheduleTitle,
      final String scheduleMemo,
      final ScheduleStatusType? scheduleStatusType,
      final ScheduleType? scheduleType,
      final int totalNumberOfTime,
      final int leftNumberOfTime,
      final String schedulePrecautions,
      final int classInfoId,
      final String repeatName,
      final int voucherMatchingId,
      final VoucherInfoEntity voucherInfoEntity,
      final UserInfoEntity userInfo}) = _$ScheduleDetailEntityImpl;

  @override
  int get scheduleId;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  int get runningTime;
  @override
  String get scheduleTitle;
  @override
  String get scheduleMemo;
  @override
  ScheduleStatusType? get scheduleStatusType;
  @override
  ScheduleType? get scheduleType;
  @override
  int get totalNumberOfTime;
  @override
  int get leftNumberOfTime;
  @override
  String get schedulePrecautions;
  @override
  int get classInfoId;
  @override
  String get repeatName;
  @override
  int get voucherMatchingId;
  @override
  VoucherInfoEntity get voucherInfoEntity;
  @override
  UserInfoEntity get userInfo;

  /// Create a copy of ScheduleDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDetailEntityImplCopyWith<_$ScheduleDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
