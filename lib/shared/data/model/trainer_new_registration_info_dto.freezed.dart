// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_new_registration_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerNewRegistrationInfoDto _$TrainerNewRegistrationInfoDtoFromJson(
    Map<String, dynamic> json) {
  return _TrainerNewRegistrationInfoDto.fromJson(json);
}

/// @nodoc
mixin _$TrainerNewRegistrationInfoDto {
  UserProfileModel get trainer => throw _privateConstructorUsedError;
  int get newRegistrationCount => throw _privateConstructorUsedError;

  /// Serializes this TrainerNewRegistrationInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerNewRegistrationInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerNewRegistrationInfoDtoCopyWith<TrainerNewRegistrationInfoDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerNewRegistrationInfoDtoCopyWith<$Res> {
  factory $TrainerNewRegistrationInfoDtoCopyWith(
          TrainerNewRegistrationInfoDto value,
          $Res Function(TrainerNewRegistrationInfoDto) then) =
      _$TrainerNewRegistrationInfoDtoCopyWithImpl<$Res,
          TrainerNewRegistrationInfoDto>;
  @useResult
  $Res call({UserProfileModel trainer, int newRegistrationCount});

  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class _$TrainerNewRegistrationInfoDtoCopyWithImpl<$Res,
        $Val extends TrainerNewRegistrationInfoDto>
    implements $TrainerNewRegistrationInfoDtoCopyWith<$Res> {
  _$TrainerNewRegistrationInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerNewRegistrationInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? newRegistrationCount = null,
  }) {
    return _then(_value.copyWith(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      newRegistrationCount: null == newRegistrationCount
          ? _value.newRegistrationCount
          : newRegistrationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TrainerNewRegistrationInfoDto
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
abstract class _$$TrainerNewRegistrationInfoDtoImplCopyWith<$Res>
    implements $TrainerNewRegistrationInfoDtoCopyWith<$Res> {
  factory _$$TrainerNewRegistrationInfoDtoImplCopyWith(
          _$TrainerNewRegistrationInfoDtoImpl value,
          $Res Function(_$TrainerNewRegistrationInfoDtoImpl) then) =
      __$$TrainerNewRegistrationInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileModel trainer, int newRegistrationCount});

  @override
  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class __$$TrainerNewRegistrationInfoDtoImplCopyWithImpl<$Res>
    extends _$TrainerNewRegistrationInfoDtoCopyWithImpl<$Res,
        _$TrainerNewRegistrationInfoDtoImpl>
    implements _$$TrainerNewRegistrationInfoDtoImplCopyWith<$Res> {
  __$$TrainerNewRegistrationInfoDtoImplCopyWithImpl(
      _$TrainerNewRegistrationInfoDtoImpl _value,
      $Res Function(_$TrainerNewRegistrationInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerNewRegistrationInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? newRegistrationCount = null,
  }) {
    return _then(_$TrainerNewRegistrationInfoDtoImpl(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      newRegistrationCount: null == newRegistrationCount
          ? _value.newRegistrationCount
          : newRegistrationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerNewRegistrationInfoDtoImpl
    implements _TrainerNewRegistrationInfoDto {
  const _$TrainerNewRegistrationInfoDtoImpl(
      {required this.trainer, this.newRegistrationCount = 0});

  factory _$TrainerNewRegistrationInfoDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrainerNewRegistrationInfoDtoImplFromJson(json);

  @override
  final UserProfileModel trainer;
  @override
  @JsonKey()
  final int newRegistrationCount;

  @override
  String toString() {
    return 'TrainerNewRegistrationInfoDto(trainer: $trainer, newRegistrationCount: $newRegistrationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerNewRegistrationInfoDtoImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            (identical(other.newRegistrationCount, newRegistrationCount) ||
                other.newRegistrationCount == newRegistrationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trainer, newRegistrationCount);

  /// Create a copy of TrainerNewRegistrationInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerNewRegistrationInfoDtoImplCopyWith<
          _$TrainerNewRegistrationInfoDtoImpl>
      get copyWith => __$$TrainerNewRegistrationInfoDtoImplCopyWithImpl<
          _$TrainerNewRegistrationInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerNewRegistrationInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _TrainerNewRegistrationInfoDto
    implements TrainerNewRegistrationInfoDto {
  const factory _TrainerNewRegistrationInfoDto(
      {required final UserProfileModel trainer,
      final int newRegistrationCount}) = _$TrainerNewRegistrationInfoDtoImpl;

  factory _TrainerNewRegistrationInfoDto.fromJson(Map<String, dynamic> json) =
      _$TrainerNewRegistrationInfoDtoImpl.fromJson;

  @override
  UserProfileModel get trainer;
  @override
  int get newRegistrationCount;

  /// Create a copy of TrainerNewRegistrationInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerNewRegistrationInfoDtoImplCopyWith<
          _$TrainerNewRegistrationInfoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
