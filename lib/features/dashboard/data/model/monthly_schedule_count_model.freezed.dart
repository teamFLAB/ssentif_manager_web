// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_schedule_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyScheduleCountModel _$MonthlyScheduleCountModelFromJson(
    Map<String, dynamic> json) {
  return _MonthlyScheduleCountModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyScheduleCountModel {
  String get date => throw _privateConstructorUsedError;
  int get scheduleCount => throw _privateConstructorUsedError;

  /// Serializes this MonthlyScheduleCountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyScheduleCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyScheduleCountModelCopyWith<MonthlyScheduleCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyScheduleCountModelCopyWith<$Res> {
  factory $MonthlyScheduleCountModelCopyWith(MonthlyScheduleCountModel value,
          $Res Function(MonthlyScheduleCountModel) then) =
      _$MonthlyScheduleCountModelCopyWithImpl<$Res, MonthlyScheduleCountModel>;
  @useResult
  $Res call({String date, int scheduleCount});
}

/// @nodoc
class _$MonthlyScheduleCountModelCopyWithImpl<$Res,
        $Val extends MonthlyScheduleCountModel>
    implements $MonthlyScheduleCountModelCopyWith<$Res> {
  _$MonthlyScheduleCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyScheduleCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? scheduleCount = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleCount: null == scheduleCount
          ? _value.scheduleCount
          : scheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyScheduleCountModelImplCopyWith<$Res>
    implements $MonthlyScheduleCountModelCopyWith<$Res> {
  factory _$$MonthlyScheduleCountModelImplCopyWith(
          _$MonthlyScheduleCountModelImpl value,
          $Res Function(_$MonthlyScheduleCountModelImpl) then) =
      __$$MonthlyScheduleCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int scheduleCount});
}

/// @nodoc
class __$$MonthlyScheduleCountModelImplCopyWithImpl<$Res>
    extends _$MonthlyScheduleCountModelCopyWithImpl<$Res,
        _$MonthlyScheduleCountModelImpl>
    implements _$$MonthlyScheduleCountModelImplCopyWith<$Res> {
  __$$MonthlyScheduleCountModelImplCopyWithImpl(
      _$MonthlyScheduleCountModelImpl _value,
      $Res Function(_$MonthlyScheduleCountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyScheduleCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? scheduleCount = null,
  }) {
    return _then(_$MonthlyScheduleCountModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleCount: null == scheduleCount
          ? _value.scheduleCount
          : scheduleCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyScheduleCountModelImpl implements _MonthlyScheduleCountModel {
  _$MonthlyScheduleCountModelImpl(
      {required this.date, required this.scheduleCount});

  factory _$MonthlyScheduleCountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyScheduleCountModelImplFromJson(json);

  @override
  final String date;
  @override
  final int scheduleCount;

  @override
  String toString() {
    return 'MonthlyScheduleCountModel(date: $date, scheduleCount: $scheduleCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyScheduleCountModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.scheduleCount, scheduleCount) ||
                other.scheduleCount == scheduleCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, scheduleCount);

  /// Create a copy of MonthlyScheduleCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyScheduleCountModelImplCopyWith<_$MonthlyScheduleCountModelImpl>
      get copyWith => __$$MonthlyScheduleCountModelImplCopyWithImpl<
          _$MonthlyScheduleCountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyScheduleCountModelImplToJson(
      this,
    );
  }
}

abstract class _MonthlyScheduleCountModel implements MonthlyScheduleCountModel {
  factory _MonthlyScheduleCountModel(
      {required final String date,
      required final int scheduleCount}) = _$MonthlyScheduleCountModelImpl;

  factory _MonthlyScheduleCountModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyScheduleCountModelImpl.fromJson;

  @override
  String get date;
  @override
  int get scheduleCount;

  /// Create a copy of MonthlyScheduleCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyScheduleCountModelImplCopyWith<_$MonthlyScheduleCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
