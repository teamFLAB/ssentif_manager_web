// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherHistoryEntity {
  int get classInfoId => throw _privateConstructorUsedError;
  String get classStartDate => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  int get currentLessonCount => throw _privateConstructorUsedError;
  String get routineName => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;

  /// Create a copy of VoucherHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherHistoryEntityCopyWith<VoucherHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherHistoryEntityCopyWith<$Res> {
  factory $VoucherHistoryEntityCopyWith(VoucherHistoryEntity value,
          $Res Function(VoucherHistoryEntity) then) =
      _$VoucherHistoryEntityCopyWithImpl<$Res, VoucherHistoryEntity>;
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
class _$VoucherHistoryEntityCopyWithImpl<$Res,
        $Val extends VoucherHistoryEntity>
    implements $VoucherHistoryEntityCopyWith<$Res> {
  _$VoucherHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherHistoryEntity
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
abstract class _$$VoucherHistoryEntityImplCopyWith<$Res>
    implements $VoucherHistoryEntityCopyWith<$Res> {
  factory _$$VoucherHistoryEntityImplCopyWith(_$VoucherHistoryEntityImpl value,
          $Res Function(_$VoucherHistoryEntityImpl) then) =
      __$$VoucherHistoryEntityImplCopyWithImpl<$Res>;
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
class __$$VoucherHistoryEntityImplCopyWithImpl<$Res>
    extends _$VoucherHistoryEntityCopyWithImpl<$Res, _$VoucherHistoryEntityImpl>
    implements _$$VoucherHistoryEntityImplCopyWith<$Res> {
  __$$VoucherHistoryEntityImplCopyWithImpl(_$VoucherHistoryEntityImpl _value,
      $Res Function(_$VoucherHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherHistoryEntity
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
    return _then(_$VoucherHistoryEntityImpl(
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

class _$VoucherHistoryEntityImpl implements _VoucherHistoryEntity {
  _$VoucherHistoryEntityImpl(
      {this.classInfoId = -1,
      this.classStartDate = "",
      this.time = "",
      this.currentLessonCount = 0,
      this.routineName = "",
      this.leftNumberOfTime = 0});

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
    return 'VoucherHistoryEntity(classInfoId: $classInfoId, classStartDate: $classStartDate, time: $time, currentLessonCount: $currentLessonCount, routineName: $routineName, leftNumberOfTime: $leftNumberOfTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherHistoryEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, classInfoId, classStartDate,
      time, currentLessonCount, routineName, leftNumberOfTime);

  /// Create a copy of VoucherHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherHistoryEntityImplCopyWith<_$VoucherHistoryEntityImpl>
      get copyWith =>
          __$$VoucherHistoryEntityImplCopyWithImpl<_$VoucherHistoryEntityImpl>(
              this, _$identity);
}

abstract class _VoucherHistoryEntity implements VoucherHistoryEntity {
  factory _VoucherHistoryEntity(
      {final int classInfoId,
      final String classStartDate,
      final String time,
      final int currentLessonCount,
      final String routineName,
      final int leftNumberOfTime}) = _$VoucherHistoryEntityImpl;

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

  /// Create a copy of VoucherHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherHistoryEntityImplCopyWith<_$VoucherHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
