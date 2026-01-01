// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_repurchase_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerRepurchaseInfoDto _$TrainerRepurchaseInfoDtoFromJson(
    Map<String, dynamic> json) {
  return _TrainerRepurchaseInfoDto.fromJson(json);
}

/// @nodoc
mixin _$TrainerRepurchaseInfoDto {
  UserProfileModel get trainer => throw _privateConstructorUsedError;
  int get reissuedCount => throw _privateConstructorUsedError;

  /// Serializes this TrainerRepurchaseInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerRepurchaseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerRepurchaseInfoDtoCopyWith<TrainerRepurchaseInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerRepurchaseInfoDtoCopyWith<$Res> {
  factory $TrainerRepurchaseInfoDtoCopyWith(TrainerRepurchaseInfoDto value,
          $Res Function(TrainerRepurchaseInfoDto) then) =
      _$TrainerRepurchaseInfoDtoCopyWithImpl<$Res, TrainerRepurchaseInfoDto>;
  @useResult
  $Res call({UserProfileModel trainer, int reissuedCount});

  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class _$TrainerRepurchaseInfoDtoCopyWithImpl<$Res,
        $Val extends TrainerRepurchaseInfoDto>
    implements $TrainerRepurchaseInfoDtoCopyWith<$Res> {
  _$TrainerRepurchaseInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerRepurchaseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? reissuedCount = null,
  }) {
    return _then(_value.copyWith(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      reissuedCount: null == reissuedCount
          ? _value.reissuedCount
          : reissuedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TrainerRepurchaseInfoDto
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
abstract class _$$TrainerRepurchaseInfoDtoImplCopyWith<$Res>
    implements $TrainerRepurchaseInfoDtoCopyWith<$Res> {
  factory _$$TrainerRepurchaseInfoDtoImplCopyWith(
          _$TrainerRepurchaseInfoDtoImpl value,
          $Res Function(_$TrainerRepurchaseInfoDtoImpl) then) =
      __$$TrainerRepurchaseInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileModel trainer, int reissuedCount});

  @override
  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class __$$TrainerRepurchaseInfoDtoImplCopyWithImpl<$Res>
    extends _$TrainerRepurchaseInfoDtoCopyWithImpl<$Res,
        _$TrainerRepurchaseInfoDtoImpl>
    implements _$$TrainerRepurchaseInfoDtoImplCopyWith<$Res> {
  __$$TrainerRepurchaseInfoDtoImplCopyWithImpl(
      _$TrainerRepurchaseInfoDtoImpl _value,
      $Res Function(_$TrainerRepurchaseInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerRepurchaseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? reissuedCount = null,
  }) {
    return _then(_$TrainerRepurchaseInfoDtoImpl(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      reissuedCount: null == reissuedCount
          ? _value.reissuedCount
          : reissuedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerRepurchaseInfoDtoImpl implements _TrainerRepurchaseInfoDto {
  const _$TrainerRepurchaseInfoDtoImpl(
      {required this.trainer, this.reissuedCount = 0});

  factory _$TrainerRepurchaseInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainerRepurchaseInfoDtoImplFromJson(json);

  @override
  final UserProfileModel trainer;
  @override
  @JsonKey()
  final int reissuedCount;

  @override
  String toString() {
    return 'TrainerRepurchaseInfoDto(trainer: $trainer, reissuedCount: $reissuedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerRepurchaseInfoDtoImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            (identical(other.reissuedCount, reissuedCount) ||
                other.reissuedCount == reissuedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trainer, reissuedCount);

  /// Create a copy of TrainerRepurchaseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerRepurchaseInfoDtoImplCopyWith<_$TrainerRepurchaseInfoDtoImpl>
      get copyWith => __$$TrainerRepurchaseInfoDtoImplCopyWithImpl<
          _$TrainerRepurchaseInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerRepurchaseInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _TrainerRepurchaseInfoDto implements TrainerRepurchaseInfoDto {
  const factory _TrainerRepurchaseInfoDto(
      {required final UserProfileModel trainer,
      final int reissuedCount}) = _$TrainerRepurchaseInfoDtoImpl;

  factory _TrainerRepurchaseInfoDto.fromJson(Map<String, dynamic> json) =
      _$TrainerRepurchaseInfoDtoImpl.fromJson;

  @override
  UserProfileModel get trainer;
  @override
  int get reissuedCount;

  /// Create a copy of TrainerRepurchaseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerRepurchaseInfoDtoImplCopyWith<_$TrainerRepurchaseInfoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
