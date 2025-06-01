// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleModel {
  ClassScheduleStatusModel get schedulePresentCondition =>
      throw _privateConstructorUsedError;
  List<DailyScheduleModel> get dateScheduleInfoDtoList =>
      throw _privateConstructorUsedError;

  /// Serializes this ScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res, ScheduleModel>;
  @useResult
  $Res call(
      {ClassScheduleStatusModel schedulePresentCondition,
      List<DailyScheduleModel> dateScheduleInfoDtoList});

  $ClassScheduleStatusModelCopyWith<$Res> get schedulePresentCondition;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res, $Val extends ScheduleModel>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulePresentCondition = null,
    Object? dateScheduleInfoDtoList = null,
  }) {
    return _then(_value.copyWith(
      schedulePresentCondition: null == schedulePresentCondition
          ? _value.schedulePresentCondition
          : schedulePresentCondition // ignore: cast_nullable_to_non_nullable
              as ClassScheduleStatusModel,
      dateScheduleInfoDtoList: null == dateScheduleInfoDtoList
          ? _value.dateScheduleInfoDtoList
          : dateScheduleInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<DailyScheduleModel>,
    ) as $Val);
  }

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassScheduleStatusModelCopyWith<$Res> get schedulePresentCondition {
    return $ClassScheduleStatusModelCopyWith<$Res>(
        _value.schedulePresentCondition, (value) {
      return _then(_value.copyWith(schedulePresentCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleModelImplCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$ScheduleModelImplCopyWith(
          _$ScheduleModelImpl value, $Res Function(_$ScheduleModelImpl) then) =
      __$$ScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassScheduleStatusModel schedulePresentCondition,
      List<DailyScheduleModel> dateScheduleInfoDtoList});

  @override
  $ClassScheduleStatusModelCopyWith<$Res> get schedulePresentCondition;
}

/// @nodoc
class __$$ScheduleModelImplCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res, _$ScheduleModelImpl>
    implements _$$ScheduleModelImplCopyWith<$Res> {
  __$$ScheduleModelImplCopyWithImpl(
      _$ScheduleModelImpl _value, $Res Function(_$ScheduleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulePresentCondition = null,
    Object? dateScheduleInfoDtoList = null,
  }) {
    return _then(_$ScheduleModelImpl(
      schedulePresentCondition: null == schedulePresentCondition
          ? _value.schedulePresentCondition
          : schedulePresentCondition // ignore: cast_nullable_to_non_nullable
              as ClassScheduleStatusModel,
      dateScheduleInfoDtoList: null == dateScheduleInfoDtoList
          ? _value._dateScheduleInfoDtoList
          : dateScheduleInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<DailyScheduleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleModelImpl implements _ScheduleModel {
  _$ScheduleModelImpl(
      {this.schedulePresentCondition = const ClassScheduleStatusModel(),
      final List<DailyScheduleModel> dateScheduleInfoDtoList = const []})
      : _dateScheduleInfoDtoList = dateScheduleInfoDtoList;

  factory _$ScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleModelImplFromJson(json);

  @override
  @JsonKey()
  final ClassScheduleStatusModel schedulePresentCondition;
  final List<DailyScheduleModel> _dateScheduleInfoDtoList;
  @override
  @JsonKey()
  List<DailyScheduleModel> get dateScheduleInfoDtoList {
    if (_dateScheduleInfoDtoList is EqualUnmodifiableListView)
      return _dateScheduleInfoDtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateScheduleInfoDtoList);
  }

  @override
  String toString() {
    return 'ScheduleModel(schedulePresentCondition: $schedulePresentCondition, dateScheduleInfoDtoList: $dateScheduleInfoDtoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleModelImpl &&
            (identical(
                    other.schedulePresentCondition, schedulePresentCondition) ||
                other.schedulePresentCondition == schedulePresentCondition) &&
            const DeepCollectionEquality().equals(
                other._dateScheduleInfoDtoList, _dateScheduleInfoDtoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schedulePresentCondition,
      const DeepCollectionEquality().hash(_dateScheduleInfoDtoList));

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      __$$ScheduleModelImplCopyWithImpl<_$ScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  factory _ScheduleModel(
          {final ClassScheduleStatusModel schedulePresentCondition,
          final List<DailyScheduleModel> dateScheduleInfoDtoList}) =
      _$ScheduleModelImpl;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleModelImpl.fromJson;

  @override
  ClassScheduleStatusModel get schedulePresentCondition;
  @override
  List<DailyScheduleModel> get dateScheduleInfoDtoList;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassScheduleStatusModel _$ClassScheduleStatusModelFromJson(
    Map<String, dynamic> json) {
  return _ClassScheduleStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ClassScheduleStatusModel {
  int get classComplete => throw _privateConstructorUsedError;
  int get reservationWait => throw _privateConstructorUsedError;
  int get reservationComplete => throw _privateConstructorUsedError;

  /// Serializes this ClassScheduleStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassScheduleStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassScheduleStatusModelCopyWith<ClassScheduleStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassScheduleStatusModelCopyWith<$Res> {
  factory $ClassScheduleStatusModelCopyWith(ClassScheduleStatusModel value,
          $Res Function(ClassScheduleStatusModel) then) =
      _$ClassScheduleStatusModelCopyWithImpl<$Res, ClassScheduleStatusModel>;
  @useResult
  $Res call({int classComplete, int reservationWait, int reservationComplete});
}

/// @nodoc
class _$ClassScheduleStatusModelCopyWithImpl<$Res,
        $Val extends ClassScheduleStatusModel>
    implements $ClassScheduleStatusModelCopyWith<$Res> {
  _$ClassScheduleStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassScheduleStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classComplete = null,
    Object? reservationWait = null,
    Object? reservationComplete = null,
  }) {
    return _then(_value.copyWith(
      classComplete: null == classComplete
          ? _value.classComplete
          : classComplete // ignore: cast_nullable_to_non_nullable
              as int,
      reservationWait: null == reservationWait
          ? _value.reservationWait
          : reservationWait // ignore: cast_nullable_to_non_nullable
              as int,
      reservationComplete: null == reservationComplete
          ? _value.reservationComplete
          : reservationComplete // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassScheduleStatusModelImplCopyWith<$Res>
    implements $ClassScheduleStatusModelCopyWith<$Res> {
  factory _$$ClassScheduleStatusModelImplCopyWith(
          _$ClassScheduleStatusModelImpl value,
          $Res Function(_$ClassScheduleStatusModelImpl) then) =
      __$$ClassScheduleStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int classComplete, int reservationWait, int reservationComplete});
}

/// @nodoc
class __$$ClassScheduleStatusModelImplCopyWithImpl<$Res>
    extends _$ClassScheduleStatusModelCopyWithImpl<$Res,
        _$ClassScheduleStatusModelImpl>
    implements _$$ClassScheduleStatusModelImplCopyWith<$Res> {
  __$$ClassScheduleStatusModelImplCopyWithImpl(
      _$ClassScheduleStatusModelImpl _value,
      $Res Function(_$ClassScheduleStatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassScheduleStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classComplete = null,
    Object? reservationWait = null,
    Object? reservationComplete = null,
  }) {
    return _then(_$ClassScheduleStatusModelImpl(
      classComplete: null == classComplete
          ? _value.classComplete
          : classComplete // ignore: cast_nullable_to_non_nullable
              as int,
      reservationWait: null == reservationWait
          ? _value.reservationWait
          : reservationWait // ignore: cast_nullable_to_non_nullable
              as int,
      reservationComplete: null == reservationComplete
          ? _value.reservationComplete
          : reservationComplete // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassScheduleStatusModelImpl implements _ClassScheduleStatusModel {
  const _$ClassScheduleStatusModelImpl(
      {this.classComplete = 0,
      this.reservationWait = 0,
      this.reservationComplete = 0});

  factory _$ClassScheduleStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassScheduleStatusModelImplFromJson(json);

  @override
  @JsonKey()
  final int classComplete;
  @override
  @JsonKey()
  final int reservationWait;
  @override
  @JsonKey()
  final int reservationComplete;

  @override
  String toString() {
    return 'ClassScheduleStatusModel(classComplete: $classComplete, reservationWait: $reservationWait, reservationComplete: $reservationComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassScheduleStatusModelImpl &&
            (identical(other.classComplete, classComplete) ||
                other.classComplete == classComplete) &&
            (identical(other.reservationWait, reservationWait) ||
                other.reservationWait == reservationWait) &&
            (identical(other.reservationComplete, reservationComplete) ||
                other.reservationComplete == reservationComplete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, classComplete, reservationWait, reservationComplete);

  /// Create a copy of ClassScheduleStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassScheduleStatusModelImplCopyWith<_$ClassScheduleStatusModelImpl>
      get copyWith => __$$ClassScheduleStatusModelImplCopyWithImpl<
          _$ClassScheduleStatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassScheduleStatusModelImplToJson(
      this,
    );
  }
}

abstract class _ClassScheduleStatusModel implements ClassScheduleStatusModel {
  const factory _ClassScheduleStatusModel(
      {final int classComplete,
      final int reservationWait,
      final int reservationComplete}) = _$ClassScheduleStatusModelImpl;

  factory _ClassScheduleStatusModel.fromJson(Map<String, dynamic> json) =
      _$ClassScheduleStatusModelImpl.fromJson;

  @override
  int get classComplete;
  @override
  int get reservationWait;
  @override
  int get reservationComplete;

  /// Create a copy of ClassScheduleStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassScheduleStatusModelImplCopyWith<_$ClassScheduleStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
