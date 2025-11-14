// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_with_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainerWithScheduleEntity {
  UserEntity get trainer => throw _privateConstructorUsedError;
  List<ScheduleDetailEntity> get schedules =>
      throw _privateConstructorUsedError;

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerWithScheduleEntityCopyWith<TrainerWithScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerWithScheduleEntityCopyWith<$Res> {
  factory $TrainerWithScheduleEntityCopyWith(TrainerWithScheduleEntity value,
          $Res Function(TrainerWithScheduleEntity) then) =
      _$TrainerWithScheduleEntityCopyWithImpl<$Res, TrainerWithScheduleEntity>;
  @useResult
  $Res call({UserEntity trainer, List<ScheduleDetailEntity> schedules});

  $UserEntityCopyWith<$Res> get trainer;
}

/// @nodoc
class _$TrainerWithScheduleEntityCopyWithImpl<$Res,
        $Val extends TrainerWithScheduleEntity>
    implements $TrainerWithScheduleEntityCopyWith<$Res> {
  _$TrainerWithScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? schedules = null,
  }) {
    return _then(_value.copyWith(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailEntity>,
    ) as $Val);
  }

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get trainer {
    return $UserEntityCopyWith<$Res>(_value.trainer, (value) {
      return _then(_value.copyWith(trainer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrainerWithScheduleEntityImplCopyWith<$Res>
    implements $TrainerWithScheduleEntityCopyWith<$Res> {
  factory _$$TrainerWithScheduleEntityImplCopyWith(
          _$TrainerWithScheduleEntityImpl value,
          $Res Function(_$TrainerWithScheduleEntityImpl) then) =
      __$$TrainerWithScheduleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity trainer, List<ScheduleDetailEntity> schedules});

  @override
  $UserEntityCopyWith<$Res> get trainer;
}

/// @nodoc
class __$$TrainerWithScheduleEntityImplCopyWithImpl<$Res>
    extends _$TrainerWithScheduleEntityCopyWithImpl<$Res,
        _$TrainerWithScheduleEntityImpl>
    implements _$$TrainerWithScheduleEntityImplCopyWith<$Res> {
  __$$TrainerWithScheduleEntityImplCopyWithImpl(
      _$TrainerWithScheduleEntityImpl _value,
      $Res Function(_$TrainerWithScheduleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? schedules = null,
  }) {
    return _then(_$TrainerWithScheduleEntityImpl(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailEntity>,
    ));
  }
}

/// @nodoc

class _$TrainerWithScheduleEntityImpl implements _TrainerWithScheduleEntity {
  const _$TrainerWithScheduleEntityImpl(
      {required this.trainer,
      final List<ScheduleDetailEntity> schedules = const []})
      : _schedules = schedules;

  @override
  final UserEntity trainer;
  final List<ScheduleDetailEntity> _schedules;
  @override
  @JsonKey()
  List<ScheduleDetailEntity> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'TrainerWithScheduleEntity(trainer: $trainer, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerWithScheduleEntityImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, trainer, const DeepCollectionEquality().hash(_schedules));

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerWithScheduleEntityImplCopyWith<_$TrainerWithScheduleEntityImpl>
      get copyWith => __$$TrainerWithScheduleEntityImplCopyWithImpl<
          _$TrainerWithScheduleEntityImpl>(this, _$identity);
}

abstract class _TrainerWithScheduleEntity implements TrainerWithScheduleEntity {
  const factory _TrainerWithScheduleEntity(
          {required final UserEntity trainer,
          final List<ScheduleDetailEntity> schedules}) =
      _$TrainerWithScheduleEntityImpl;

  @override
  UserEntity get trainer;
  @override
  List<ScheduleDetailEntity> get schedules;

  /// Create a copy of TrainerWithScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerWithScheduleEntityImplCopyWith<_$TrainerWithScheduleEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
