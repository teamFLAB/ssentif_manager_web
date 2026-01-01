// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_with_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerWithScheduleModel _$TrainerWithScheduleModelFromJson(
    Map<String, dynamic> json) {
  return _TrainerWithScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$TrainerWithScheduleModel {
  UserProfileModel get trainer => throw _privateConstructorUsedError;
  List<ScheduleDetailHasRoutineModel>? get schedules =>
      throw _privateConstructorUsedError;

  /// Serializes this TrainerWithScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerWithScheduleModelCopyWith<TrainerWithScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerWithScheduleModelCopyWith<$Res> {
  factory $TrainerWithScheduleModelCopyWith(TrainerWithScheduleModel value,
          $Res Function(TrainerWithScheduleModel) then) =
      _$TrainerWithScheduleModelCopyWithImpl<$Res, TrainerWithScheduleModel>;
  @useResult
  $Res call(
      {UserProfileModel trainer,
      List<ScheduleDetailHasRoutineModel>? schedules});

  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class _$TrainerWithScheduleModelCopyWithImpl<$Res,
        $Val extends TrainerWithScheduleModel>
    implements $TrainerWithScheduleModelCopyWith<$Res> {
  _$TrainerWithScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? schedules = freezed,
  }) {
    return _then(_value.copyWith(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailHasRoutineModel>?,
    ) as $Val);
  }

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get trainer {
    return $UserProfileModelCopyWith<$Res>(_value.trainer, (value) {
      return _then(_value.copyWith(trainer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrainerWithScheduleModelImplCopyWith<$Res>
    implements $TrainerWithScheduleModelCopyWith<$Res> {
  factory _$$TrainerWithScheduleModelImplCopyWith(
          _$TrainerWithScheduleModelImpl value,
          $Res Function(_$TrainerWithScheduleModelImpl) then) =
      __$$TrainerWithScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileModel trainer,
      List<ScheduleDetailHasRoutineModel>? schedules});

  @override
  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class __$$TrainerWithScheduleModelImplCopyWithImpl<$Res>
    extends _$TrainerWithScheduleModelCopyWithImpl<$Res,
        _$TrainerWithScheduleModelImpl>
    implements _$$TrainerWithScheduleModelImplCopyWith<$Res> {
  __$$TrainerWithScheduleModelImplCopyWithImpl(
      _$TrainerWithScheduleModelImpl _value,
      $Res Function(_$TrainerWithScheduleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? schedules = freezed,
  }) {
    return _then(_$TrainerWithScheduleModelImpl(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailHasRoutineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerWithScheduleModelImpl implements _TrainerWithScheduleModel {
  const _$TrainerWithScheduleModelImpl(
      {required this.trainer,
      required final List<ScheduleDetailHasRoutineModel>? schedules})
      : _schedules = schedules;

  factory _$TrainerWithScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainerWithScheduleModelImplFromJson(json);

  @override
  final UserProfileModel trainer;
  final List<ScheduleDetailHasRoutineModel>? _schedules;
  @override
  List<ScheduleDetailHasRoutineModel>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrainerWithScheduleModel(trainer: $trainer, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerWithScheduleModelImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, trainer, const DeepCollectionEquality().hash(_schedules));

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerWithScheduleModelImplCopyWith<_$TrainerWithScheduleModelImpl>
      get copyWith => __$$TrainerWithScheduleModelImplCopyWithImpl<
          _$TrainerWithScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerWithScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _TrainerWithScheduleModel implements TrainerWithScheduleModel {
  const factory _TrainerWithScheduleModel(
          {required final UserProfileModel trainer,
          required final List<ScheduleDetailHasRoutineModel>? schedules}) =
      _$TrainerWithScheduleModelImpl;

  factory _TrainerWithScheduleModel.fromJson(Map<String, dynamic> json) =
      _$TrainerWithScheduleModelImpl.fromJson;

  @override
  UserProfileModel get trainer;
  @override
  List<ScheduleDetailHasRoutineModel>? get schedules;

  /// Create a copy of TrainerWithScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerWithScheduleModelImplCopyWith<_$TrainerWithScheduleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
