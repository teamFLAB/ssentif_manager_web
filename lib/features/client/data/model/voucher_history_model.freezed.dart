// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VoucherHistoryModel _$VoucherHistoryModelFromJson(Map<String, dynamic> json) {
  return _VoucherHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$VoucherHistoryModel {
  int get classInfoId => throw _privateConstructorUsedError;
  String get classStartDate => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  int get currentLessonCount => throw _privateConstructorUsedError;
  String get routineName => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;

  /// Serializes this VoucherHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoucherHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherHistoryModelCopyWith<VoucherHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherHistoryModelCopyWith<$Res> {
  factory $VoucherHistoryModelCopyWith(
          VoucherHistoryModel value, $Res Function(VoucherHistoryModel) then) =
      _$VoucherHistoryModelCopyWithImpl<$Res, VoucherHistoryModel>;
  @useResult
  $Res call(
      {int classInfoId,
      String classStartDate,
      String time,
      int currentLessonCount,
      String routineName,
      int leftNumberOfTime});
}

/// @nodoc
class _$VoucherHistoryModelCopyWithImpl<$Res, $Val extends VoucherHistoryModel>
    implements $VoucherHistoryModelCopyWith<$Res> {
  _$VoucherHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoId = null,
    Object? classStartDate = null,
    Object? time = null,
    Object? currentLessonCount = null,
    Object? routineName = null,
    Object? leftNumberOfTime = null,
  }) {
    return _then(_value.copyWith(
      classInfoId: null == classInfoId
          ? _value.classInfoId
          : classInfoId // ignore: cast_nullable_to_non_nullable
              as int,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      currentLessonCount: null == currentLessonCount
          ? _value.currentLessonCount
          : currentLessonCount // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherHistoryModelImplCopyWith<$Res>
    implements $VoucherHistoryModelCopyWith<$Res> {
  factory _$$VoucherHistoryModelImplCopyWith(_$VoucherHistoryModelImpl value,
          $Res Function(_$VoucherHistoryModelImpl) then) =
      __$$VoucherHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int classInfoId,
      String classStartDate,
      String time,
      int currentLessonCount,
      String routineName,
      int leftNumberOfTime});
}

/// @nodoc
class __$$VoucherHistoryModelImplCopyWithImpl<$Res>
    extends _$VoucherHistoryModelCopyWithImpl<$Res, _$VoucherHistoryModelImpl>
    implements _$$VoucherHistoryModelImplCopyWith<$Res> {
  __$$VoucherHistoryModelImplCopyWithImpl(_$VoucherHistoryModelImpl _value,
      $Res Function(_$VoucherHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoId = null,
    Object? classStartDate = null,
    Object? time = null,
    Object? currentLessonCount = null,
    Object? routineName = null,
    Object? leftNumberOfTime = null,
  }) {
    return _then(_$VoucherHistoryModelImpl(
      classInfoId: null == classInfoId
          ? _value.classInfoId
          : classInfoId // ignore: cast_nullable_to_non_nullable
              as int,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      currentLessonCount: null == currentLessonCount
          ? _value.currentLessonCount
          : currentLessonCount // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoucherHistoryModelImpl implements _VoucherHistoryModel {
  _$VoucherHistoryModelImpl(
      {this.classInfoId = -1,
      this.classStartDate = "",
      this.time = "",
      this.currentLessonCount = 0,
      this.routineName = "",
      this.leftNumberOfTime = 0});

  factory _$VoucherHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherHistoryModelImplFromJson(json);

  @override
  @JsonKey()
  final int classInfoId;
  @override
  @JsonKey()
  final String classStartDate;
  @override
  @JsonKey()
  final String time;
  @override
  @JsonKey()
  final int currentLessonCount;
  @override
  @JsonKey()
  final String routineName;
  @override
  @JsonKey()
  final int leftNumberOfTime;

  @override
  String toString() {
    return 'VoucherHistoryModel(classInfoId: $classInfoId, classStartDate: $classStartDate, time: $time, currentLessonCount: $currentLessonCount, routineName: $routineName, leftNumberOfTime: $leftNumberOfTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherHistoryModelImpl &&
            (identical(other.classInfoId, classInfoId) ||
                other.classInfoId == classInfoId) &&
            (identical(other.classStartDate, classStartDate) ||
                other.classStartDate == classStartDate) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.currentLessonCount, currentLessonCount) ||
                other.currentLessonCount == currentLessonCount) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classInfoId, classStartDate,
      time, currentLessonCount, routineName, leftNumberOfTime);

  /// Create a copy of VoucherHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherHistoryModelImplCopyWith<_$VoucherHistoryModelImpl> get copyWith =>
      __$$VoucherHistoryModelImplCopyWithImpl<_$VoucherHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _VoucherHistoryModel implements VoucherHistoryModel {
  factory _VoucherHistoryModel(
      {final int classInfoId,
      final String classStartDate,
      final String time,
      final int currentLessonCount,
      final String routineName,
      final int leftNumberOfTime}) = _$VoucherHistoryModelImpl;

  factory _VoucherHistoryModel.fromJson(Map<String, dynamic> json) =
      _$VoucherHistoryModelImpl.fromJson;

  @override
  int get classInfoId;
  @override
  String get classStartDate;
  @override
  String get time;
  @override
  int get currentLessonCount;
  @override
  String get routineName;
  @override
  int get leftNumberOfTime;

  /// Create a copy of VoucherHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherHistoryModelImplCopyWith<_$VoucherHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseVoucherHistories _$ResponseVoucherHistoriesFromJson(
    Map<String, dynamic> json) {
  return _ResponseVoucherHistories.fromJson(json);
}

/// @nodoc
mixin _$ResponseVoucherHistories {
  List<VoucherHistoryModel> get classInfoSimpleDtoList =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseVoucherHistories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseVoucherHistories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseVoucherHistoriesCopyWith<ResponseVoucherHistories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseVoucherHistoriesCopyWith<$Res> {
  factory $ResponseVoucherHistoriesCopyWith(ResponseVoucherHistories value,
          $Res Function(ResponseVoucherHistories) then) =
      _$ResponseVoucherHistoriesCopyWithImpl<$Res, ResponseVoucherHistories>;
  @useResult
  $Res call({List<VoucherHistoryModel> classInfoSimpleDtoList});
}

/// @nodoc
class _$ResponseVoucherHistoriesCopyWithImpl<$Res,
        $Val extends ResponseVoucherHistories>
    implements $ResponseVoucherHistoriesCopyWith<$Res> {
  _$ResponseVoucherHistoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseVoucherHistories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoSimpleDtoList = null,
  }) {
    return _then(_value.copyWith(
      classInfoSimpleDtoList: null == classInfoSimpleDtoList
          ? _value.classInfoSimpleDtoList
          : classInfoSimpleDtoList // ignore: cast_nullable_to_non_nullable
              as List<VoucherHistoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseVoucherHistoriesImplCopyWith<$Res>
    implements $ResponseVoucherHistoriesCopyWith<$Res> {
  factory _$$ResponseVoucherHistoriesImplCopyWith(
          _$ResponseVoucherHistoriesImpl value,
          $Res Function(_$ResponseVoucherHistoriesImpl) then) =
      __$$ResponseVoucherHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VoucherHistoryModel> classInfoSimpleDtoList});
}

/// @nodoc
class __$$ResponseVoucherHistoriesImplCopyWithImpl<$Res>
    extends _$ResponseVoucherHistoriesCopyWithImpl<$Res,
        _$ResponseVoucherHistoriesImpl>
    implements _$$ResponseVoucherHistoriesImplCopyWith<$Res> {
  __$$ResponseVoucherHistoriesImplCopyWithImpl(
      _$ResponseVoucherHistoriesImpl _value,
      $Res Function(_$ResponseVoucherHistoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseVoucherHistories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoSimpleDtoList = null,
  }) {
    return _then(_$ResponseVoucherHistoriesImpl(
      classInfoSimpleDtoList: null == classInfoSimpleDtoList
          ? _value._classInfoSimpleDtoList
          : classInfoSimpleDtoList // ignore: cast_nullable_to_non_nullable
              as List<VoucherHistoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseVoucherHistoriesImpl implements _ResponseVoucherHistories {
  _$ResponseVoucherHistoriesImpl(
      {final List<VoucherHistoryModel> classInfoSimpleDtoList = const []})
      : _classInfoSimpleDtoList = classInfoSimpleDtoList;

  factory _$ResponseVoucherHistoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseVoucherHistoriesImplFromJson(json);

  final List<VoucherHistoryModel> _classInfoSimpleDtoList;
  @override
  @JsonKey()
  List<VoucherHistoryModel> get classInfoSimpleDtoList {
    if (_classInfoSimpleDtoList is EqualUnmodifiableListView)
      return _classInfoSimpleDtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classInfoSimpleDtoList);
  }

  @override
  String toString() {
    return 'ResponseVoucherHistories(classInfoSimpleDtoList: $classInfoSimpleDtoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseVoucherHistoriesImpl &&
            const DeepCollectionEquality().equals(
                other._classInfoSimpleDtoList, _classInfoSimpleDtoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_classInfoSimpleDtoList));

  /// Create a copy of ResponseVoucherHistories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseVoucherHistoriesImplCopyWith<_$ResponseVoucherHistoriesImpl>
      get copyWith => __$$ResponseVoucherHistoriesImplCopyWithImpl<
          _$ResponseVoucherHistoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseVoucherHistoriesImplToJson(
      this,
    );
  }
}

abstract class _ResponseVoucherHistories implements ResponseVoucherHistories {
  factory _ResponseVoucherHistories(
          {final List<VoucherHistoryModel> classInfoSimpleDtoList}) =
      _$ResponseVoucherHistoriesImpl;

  factory _ResponseVoucherHistories.fromJson(Map<String, dynamic> json) =
      _$ResponseVoucherHistoriesImpl.fromJson;

  @override
  List<VoucherHistoryModel> get classInfoSimpleDtoList;

  /// Create a copy of ResponseVoucherHistories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseVoucherHistoriesImplCopyWith<_$ResponseVoucherHistoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
