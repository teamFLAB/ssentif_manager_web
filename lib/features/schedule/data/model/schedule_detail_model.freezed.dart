// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDetailModel _$ScheduleDetailModelFromJson(Map<String, dynamic> json) {
  return _ScheduleDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDetailModel {
  int get scheduleId => throw _privateConstructorUsedError;
  String get scheduleStartDateTime => throw _privateConstructorUsedError;
  String get scheduleEndDateTime => throw _privateConstructorUsedError;
  int get timeRequired => throw _privateConstructorUsedError;
  String get scheduleTitle => throw _privateConstructorUsedError;
  String get scheduleMemo => throw _privateConstructorUsedError;
  String get scheduleStatus => throw _privateConstructorUsedError;
  String get scheduleType => throw _privateConstructorUsedError;
  UserInfoModel get userInfoDto => throw _privateConstructorUsedError;
  VoucherInfoModel get voucherInfoDto => throw _privateConstructorUsedError;
  int get totalNumberOfTime => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;
  String get schedulePrecautions => throw _privateConstructorUsedError;
  int get classInfoId => throw _privateConstructorUsedError;
  List<String> get weeks => throw _privateConstructorUsedError;
  int get voucherMatchingId => throw _privateConstructorUsedError;
  String get repeatName => throw _privateConstructorUsedError;

  /// Serializes this ScheduleDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDetailModelCopyWith<ScheduleDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailModelCopyWith<$Res> {
  factory $ScheduleDetailModelCopyWith(
          ScheduleDetailModel value, $Res Function(ScheduleDetailModel) then) =
      _$ScheduleDetailModelCopyWithImpl<$Res, ScheduleDetailModel>;
  @useResult
  $Res call(
      {int scheduleId,
      String scheduleStartDateTime,
      String scheduleEndDateTime,
      int timeRequired,
      String scheduleTitle,
      String scheduleMemo,
      String scheduleStatus,
      String scheduleType,
      UserInfoModel userInfoDto,
      VoucherInfoModel voucherInfoDto,
      int totalNumberOfTime,
      int leftNumberOfTime,
      String schedulePrecautions,
      int classInfoId,
      List<String> weeks,
      int voucherMatchingId,
      String repeatName});

  $UserInfoModelCopyWith<$Res> get userInfoDto;
  $VoucherInfoModelCopyWith<$Res> get voucherInfoDto;
}

/// @nodoc
class _$ScheduleDetailModelCopyWithImpl<$Res, $Val extends ScheduleDetailModel>
    implements $ScheduleDetailModelCopyWith<$Res> {
  _$ScheduleDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStartDateTime = null,
    Object? scheduleEndDateTime = null,
    Object? timeRequired = null,
    Object? scheduleTitle = null,
    Object? scheduleMemo = null,
    Object? scheduleStatus = null,
    Object? scheduleType = null,
    Object? userInfoDto = null,
    Object? voucherInfoDto = null,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? schedulePrecautions = null,
    Object? classInfoId = null,
    Object? weeks = null,
    Object? voucherMatchingId = null,
    Object? repeatName = null,
  }) {
    return _then(_value.copyWith(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleStartDateTime: null == scheduleStartDateTime
          ? _value.scheduleStartDateTime
          : scheduleStartDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleEndDateTime: null == scheduleEndDateTime
          ? _value.scheduleEndDateTime
          : scheduleEndDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleMemo: null == scheduleMemo
          ? _value.scheduleMemo
          : scheduleMemo // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoDto: null == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
      voucherInfoDto: null == voucherInfoDto
          ? _value.voucherInfoDto
          : voucherInfoDto // ignore: cast_nullable_to_non_nullable
              as VoucherInfoModel,
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
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: null == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res> get userInfoDto {
    return $UserInfoModelCopyWith<$Res>(_value.userInfoDto, (value) {
      return _then(_value.copyWith(userInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoucherInfoModelCopyWith<$Res> get voucherInfoDto {
    return $VoucherInfoModelCopyWith<$Res>(_value.voucherInfoDto, (value) {
      return _then(_value.copyWith(voucherInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleDetailModelImplCopyWith<$Res>
    implements $ScheduleDetailModelCopyWith<$Res> {
  factory _$$ScheduleDetailModelImplCopyWith(_$ScheduleDetailModelImpl value,
          $Res Function(_$ScheduleDetailModelImpl) then) =
      __$$ScheduleDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int scheduleId,
      String scheduleStartDateTime,
      String scheduleEndDateTime,
      int timeRequired,
      String scheduleTitle,
      String scheduleMemo,
      String scheduleStatus,
      String scheduleType,
      UserInfoModel userInfoDto,
      VoucherInfoModel voucherInfoDto,
      int totalNumberOfTime,
      int leftNumberOfTime,
      String schedulePrecautions,
      int classInfoId,
      List<String> weeks,
      int voucherMatchingId,
      String repeatName});

  @override
  $UserInfoModelCopyWith<$Res> get userInfoDto;
  @override
  $VoucherInfoModelCopyWith<$Res> get voucherInfoDto;
}

/// @nodoc
class __$$ScheduleDetailModelImplCopyWithImpl<$Res>
    extends _$ScheduleDetailModelCopyWithImpl<$Res, _$ScheduleDetailModelImpl>
    implements _$$ScheduleDetailModelImplCopyWith<$Res> {
  __$$ScheduleDetailModelImplCopyWithImpl(_$ScheduleDetailModelImpl _value,
      $Res Function(_$ScheduleDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? scheduleStartDateTime = null,
    Object? scheduleEndDateTime = null,
    Object? timeRequired = null,
    Object? scheduleTitle = null,
    Object? scheduleMemo = null,
    Object? scheduleStatus = null,
    Object? scheduleType = null,
    Object? userInfoDto = null,
    Object? voucherInfoDto = null,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? schedulePrecautions = null,
    Object? classInfoId = null,
    Object? weeks = null,
    Object? voucherMatchingId = null,
    Object? repeatName = null,
  }) {
    return _then(_$ScheduleDetailModelImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleStartDateTime: null == scheduleStartDateTime
          ? _value.scheduleStartDateTime
          : scheduleStartDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleEndDateTime: null == scheduleEndDateTime
          ? _value.scheduleEndDateTime
          : scheduleEndDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleTitle: null == scheduleTitle
          ? _value.scheduleTitle
          : scheduleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleMemo: null == scheduleMemo
          ? _value.scheduleMemo
          : scheduleMemo // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleStatus: null == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoDto: null == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
      voucherInfoDto: null == voucherInfoDto
          ? _value.voucherInfoDto
          : voucherInfoDto // ignore: cast_nullable_to_non_nullable
              as VoucherInfoModel,
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
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      repeatName: null == repeatName
          ? _value.repeatName
          : repeatName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDetailModelImpl implements _ScheduleDetailModel {
  _$ScheduleDetailModelImpl(
      {this.scheduleId = -1,
      this.scheduleStartDateTime = "",
      this.scheduleEndDateTime = "",
      this.timeRequired = -1,
      this.scheduleTitle = "",
      this.scheduleMemo = "",
      this.scheduleStatus = "",
      this.scheduleType = "",
      this.userInfoDto = const UserInfoModel(),
      this.voucherInfoDto = const VoucherInfoModel(),
      this.totalNumberOfTime = -1,
      this.leftNumberOfTime = -1,
      this.schedulePrecautions = "",
      this.classInfoId = -1,
      final List<String> weeks = const [],
      this.voucherMatchingId = -1,
      this.repeatName = ""})
      : _weeks = weeks;

  factory _$ScheduleDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDetailModelImplFromJson(json);

  @override
  @JsonKey()
  final int scheduleId;
  @override
  @JsonKey()
  final String scheduleStartDateTime;
  @override
  @JsonKey()
  final String scheduleEndDateTime;
  @override
  @JsonKey()
  final int timeRequired;
  @override
  @JsonKey()
  final String scheduleTitle;
  @override
  @JsonKey()
  final String scheduleMemo;
  @override
  @JsonKey()
  final String scheduleStatus;
  @override
  @JsonKey()
  final String scheduleType;
  @override
  @JsonKey()
  final UserInfoModel userInfoDto;
  @override
  @JsonKey()
  final VoucherInfoModel voucherInfoDto;
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
  final List<String> _weeks;
  @override
  @JsonKey()
  List<String> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  @JsonKey()
  final int voucherMatchingId;
  @override
  @JsonKey()
  final String repeatName;

  @override
  String toString() {
    return 'ScheduleDetailModel(scheduleId: $scheduleId, scheduleStartDateTime: $scheduleStartDateTime, scheduleEndDateTime: $scheduleEndDateTime, timeRequired: $timeRequired, scheduleTitle: $scheduleTitle, scheduleMemo: $scheduleMemo, scheduleStatus: $scheduleStatus, scheduleType: $scheduleType, userInfoDto: $userInfoDto, voucherInfoDto: $voucherInfoDto, totalNumberOfTime: $totalNumberOfTime, leftNumberOfTime: $leftNumberOfTime, schedulePrecautions: $schedulePrecautions, classInfoId: $classInfoId, weeks: $weeks, voucherMatchingId: $voucherMatchingId, repeatName: $repeatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDetailModelImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.scheduleStartDateTime, scheduleStartDateTime) ||
                other.scheduleStartDateTime == scheduleStartDateTime) &&
            (identical(other.scheduleEndDateTime, scheduleEndDateTime) ||
                other.scheduleEndDateTime == scheduleEndDateTime) &&
            (identical(other.timeRequired, timeRequired) ||
                other.timeRequired == timeRequired) &&
            (identical(other.scheduleTitle, scheduleTitle) ||
                other.scheduleTitle == scheduleTitle) &&
            (identical(other.scheduleMemo, scheduleMemo) ||
                other.scheduleMemo == scheduleMemo) &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.userInfoDto, userInfoDto) ||
                other.userInfoDto == userInfoDto) &&
            (identical(other.voucherInfoDto, voucherInfoDto) ||
                other.voucherInfoDto == voucherInfoDto) &&
            (identical(other.totalNumberOfTime, totalNumberOfTime) ||
                other.totalNumberOfTime == totalNumberOfTime) &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime) &&
            (identical(other.schedulePrecautions, schedulePrecautions) ||
                other.schedulePrecautions == schedulePrecautions) &&
            (identical(other.classInfoId, classInfoId) ||
                other.classInfoId == classInfoId) &&
            const DeepCollectionEquality().equals(other._weeks, _weeks) &&
            (identical(other.voucherMatchingId, voucherMatchingId) ||
                other.voucherMatchingId == voucherMatchingId) &&
            (identical(other.repeatName, repeatName) ||
                other.repeatName == repeatName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scheduleId,
      scheduleStartDateTime,
      scheduleEndDateTime,
      timeRequired,
      scheduleTitle,
      scheduleMemo,
      scheduleStatus,
      scheduleType,
      userInfoDto,
      voucherInfoDto,
      totalNumberOfTime,
      leftNumberOfTime,
      schedulePrecautions,
      classInfoId,
      const DeepCollectionEquality().hash(_weeks),
      voucherMatchingId,
      repeatName);

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDetailModelImplCopyWith<_$ScheduleDetailModelImpl> get copyWith =>
      __$$ScheduleDetailModelImplCopyWithImpl<_$ScheduleDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDetailModel implements ScheduleDetailModel {
  factory _ScheduleDetailModel(
      {final int scheduleId,
      final String scheduleStartDateTime,
      final String scheduleEndDateTime,
      final int timeRequired,
      final String scheduleTitle,
      final String scheduleMemo,
      final String scheduleStatus,
      final String scheduleType,
      final UserInfoModel userInfoDto,
      final VoucherInfoModel voucherInfoDto,
      final int totalNumberOfTime,
      final int leftNumberOfTime,
      final String schedulePrecautions,
      final int classInfoId,
      final List<String> weeks,
      final int voucherMatchingId,
      final String repeatName}) = _$ScheduleDetailModelImpl;

  factory _ScheduleDetailModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleDetailModelImpl.fromJson;

  @override
  int get scheduleId;
  @override
  String get scheduleStartDateTime;
  @override
  String get scheduleEndDateTime;
  @override
  int get timeRequired;
  @override
  String get scheduleTitle;
  @override
  String get scheduleMemo;
  @override
  String get scheduleStatus;
  @override
  String get scheduleType;
  @override
  UserInfoModel get userInfoDto;
  @override
  VoucherInfoModel get voucherInfoDto;
  @override
  int get totalNumberOfTime;
  @override
  int get leftNumberOfTime;
  @override
  String get schedulePrecautions;
  @override
  int get classInfoId;
  @override
  List<String> get weeks;
  @override
  int get voucherMatchingId;
  @override
  String get repeatName;

  /// Create a copy of ScheduleDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDetailModelImplCopyWith<_$ScheduleDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VoucherInfoModel _$VoucherInfoModelFromJson(Map<String, dynamic> json) {
  return _VoucherInfoModel.fromJson(json);
}

/// @nodoc
mixin _$VoucherInfoModel {
  int get voucherId => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get voucherColor => throw _privateConstructorUsedError;
  int get voucherTakeTime => throw _privateConstructorUsedError;
  bool get isUsing => throw _privateConstructorUsedError;
  String get voucherType => throw _privateConstructorUsedError;

  /// Serializes this VoucherInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoucherInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherInfoModelCopyWith<VoucherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherInfoModelCopyWith<$Res> {
  factory $VoucherInfoModelCopyWith(
          VoucherInfoModel value, $Res Function(VoucherInfoModel) then) =
      _$VoucherInfoModelCopyWithImpl<$Res, VoucherInfoModel>;
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String voucherColor,
      int voucherTakeTime,
      bool isUsing,
      String voucherType});
}

/// @nodoc
class _$VoucherInfoModelCopyWithImpl<$Res, $Val extends VoucherInfoModel>
    implements $VoucherInfoModelCopyWith<$Res> {
  _$VoucherInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? voucherColor = null,
    Object? voucherTakeTime = null,
    Object? isUsing = null,
    Object? voucherType = null,
  }) {
    return _then(_value.copyWith(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      voucherTakeTime: null == voucherTakeTime
          ? _value.voucherTakeTime
          : voucherTakeTime // ignore: cast_nullable_to_non_nullable
              as int,
      isUsing: null == isUsing
          ? _value.isUsing
          : isUsing // ignore: cast_nullable_to_non_nullable
              as bool,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherInfoModelImplCopyWith<$Res>
    implements $VoucherInfoModelCopyWith<$Res> {
  factory _$$VoucherInfoModelImplCopyWith(_$VoucherInfoModelImpl value,
          $Res Function(_$VoucherInfoModelImpl) then) =
      __$$VoucherInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String voucherColor,
      int voucherTakeTime,
      bool isUsing,
      String voucherType});
}

/// @nodoc
class __$$VoucherInfoModelImplCopyWithImpl<$Res>
    extends _$VoucherInfoModelCopyWithImpl<$Res, _$VoucherInfoModelImpl>
    implements _$$VoucherInfoModelImplCopyWith<$Res> {
  __$$VoucherInfoModelImplCopyWithImpl(_$VoucherInfoModelImpl _value,
      $Res Function(_$VoucherInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? voucherColor = null,
    Object? voucherTakeTime = null,
    Object? isUsing = null,
    Object? voucherType = null,
  }) {
    return _then(_$VoucherInfoModelImpl(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      voucherTakeTime: null == voucherTakeTime
          ? _value.voucherTakeTime
          : voucherTakeTime // ignore: cast_nullable_to_non_nullable
              as int,
      isUsing: null == isUsing
          ? _value.isUsing
          : isUsing // ignore: cast_nullable_to_non_nullable
              as bool,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoucherInfoModelImpl implements _VoucherInfoModel {
  const _$VoucherInfoModelImpl(
      {this.voucherId = -1,
      this.voucherName = "",
      this.voucherColor = "",
      this.voucherTakeTime = -1,
      this.isUsing = false,
      this.voucherType = ""});

  factory _$VoucherInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherInfoModelImplFromJson(json);

  @override
  @JsonKey()
  final int voucherId;
  @override
  @JsonKey()
  final String voucherName;
  @override
  @JsonKey()
  final String voucherColor;
  @override
  @JsonKey()
  final int voucherTakeTime;
  @override
  @JsonKey()
  final bool isUsing;
  @override
  @JsonKey()
  final String voucherType;

  @override
  String toString() {
    return 'VoucherInfoModel(voucherId: $voucherId, voucherName: $voucherName, voucherColor: $voucherColor, voucherTakeTime: $voucherTakeTime, isUsing: $isUsing, voucherType: $voucherType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherInfoModelImpl &&
            (identical(other.voucherId, voucherId) ||
                other.voucherId == voucherId) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.voucherColor, voucherColor) ||
                other.voucherColor == voucherColor) &&
            (identical(other.voucherTakeTime, voucherTakeTime) ||
                other.voucherTakeTime == voucherTakeTime) &&
            (identical(other.isUsing, isUsing) || other.isUsing == isUsing) &&
            (identical(other.voucherType, voucherType) ||
                other.voucherType == voucherType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, voucherId, voucherName,
      voucherColor, voucherTakeTime, isUsing, voucherType);

  /// Create a copy of VoucherInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherInfoModelImplCopyWith<_$VoucherInfoModelImpl> get copyWith =>
      __$$VoucherInfoModelImplCopyWithImpl<_$VoucherInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherInfoModelImplToJson(
      this,
    );
  }
}

abstract class _VoucherInfoModel implements VoucherInfoModel {
  const factory _VoucherInfoModel(
      {final int voucherId,
      final String voucherName,
      final String voucherColor,
      final int voucherTakeTime,
      final bool isUsing,
      final String voucherType}) = _$VoucherInfoModelImpl;

  factory _VoucherInfoModel.fromJson(Map<String, dynamic> json) =
      _$VoucherInfoModelImpl.fromJson;

  @override
  int get voucherId;
  @override
  String get voucherName;
  @override
  String get voucherColor;
  @override
  int get voucherTakeTime;
  @override
  bool get isUsing;
  @override
  String get voucherType;

  /// Create a copy of VoucherInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherInfoModelImplCopyWith<_$VoucherInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
