// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientProfileModel _$ClientProfileModelFromJson(Map<String, dynamic> json) {
  return _ClientProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ClientProfileModel {
  UserInfoModel get searchUserInfoDto => throw _privateConstructorUsedError;
  MatchingInfoDto get matchingInfoSimpleDto =>
      throw _privateConstructorUsedError;
  ClassInfoDto get classInfoDto => throw _privateConstructorUsedError;

  /// Serializes this ClientProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientProfileModelCopyWith<ClientProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientProfileModelCopyWith<$Res> {
  factory $ClientProfileModelCopyWith(
          ClientProfileModel value, $Res Function(ClientProfileModel) then) =
      _$ClientProfileModelCopyWithImpl<$Res, ClientProfileModel>;
  @useResult
  $Res call(
      {UserInfoModel searchUserInfoDto,
      MatchingInfoDto matchingInfoSimpleDto,
      ClassInfoDto classInfoDto});

  $UserInfoModelCopyWith<$Res> get searchUserInfoDto;
  $MatchingInfoDtoCopyWith<$Res> get matchingInfoSimpleDto;
  $ClassInfoDtoCopyWith<$Res> get classInfoDto;
}

/// @nodoc
class _$ClientProfileModelCopyWithImpl<$Res, $Val extends ClientProfileModel>
    implements $ClientProfileModelCopyWith<$Res> {
  _$ClientProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchUserInfoDto = null,
    Object? matchingInfoSimpleDto = null,
    Object? classInfoDto = null,
  }) {
    return _then(_value.copyWith(
      searchUserInfoDto: null == searchUserInfoDto
          ? _value.searchUserInfoDto
          : searchUserInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
      matchingInfoSimpleDto: null == matchingInfoSimpleDto
          ? _value.matchingInfoSimpleDto
          : matchingInfoSimpleDto // ignore: cast_nullable_to_non_nullable
              as MatchingInfoDto,
      classInfoDto: null == classInfoDto
          ? _value.classInfoDto
          : classInfoDto // ignore: cast_nullable_to_non_nullable
              as ClassInfoDto,
    ) as $Val);
  }

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res> get searchUserInfoDto {
    return $UserInfoModelCopyWith<$Res>(_value.searchUserInfoDto, (value) {
      return _then(_value.copyWith(searchUserInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchingInfoDtoCopyWith<$Res> get matchingInfoSimpleDto {
    return $MatchingInfoDtoCopyWith<$Res>(_value.matchingInfoSimpleDto,
        (value) {
      return _then(_value.copyWith(matchingInfoSimpleDto: value) as $Val);
    });
  }

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoDtoCopyWith<$Res> get classInfoDto {
    return $ClassInfoDtoCopyWith<$Res>(_value.classInfoDto, (value) {
      return _then(_value.copyWith(classInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientProfileModelImplCopyWith<$Res>
    implements $ClientProfileModelCopyWith<$Res> {
  factory _$$ClientProfileModelImplCopyWith(_$ClientProfileModelImpl value,
          $Res Function(_$ClientProfileModelImpl) then) =
      __$$ClientProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoModel searchUserInfoDto,
      MatchingInfoDto matchingInfoSimpleDto,
      ClassInfoDto classInfoDto});

  @override
  $UserInfoModelCopyWith<$Res> get searchUserInfoDto;
  @override
  $MatchingInfoDtoCopyWith<$Res> get matchingInfoSimpleDto;
  @override
  $ClassInfoDtoCopyWith<$Res> get classInfoDto;
}

/// @nodoc
class __$$ClientProfileModelImplCopyWithImpl<$Res>
    extends _$ClientProfileModelCopyWithImpl<$Res, _$ClientProfileModelImpl>
    implements _$$ClientProfileModelImplCopyWith<$Res> {
  __$$ClientProfileModelImplCopyWithImpl(_$ClientProfileModelImpl _value,
      $Res Function(_$ClientProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchUserInfoDto = null,
    Object? matchingInfoSimpleDto = null,
    Object? classInfoDto = null,
  }) {
    return _then(_$ClientProfileModelImpl(
      searchUserInfoDto: null == searchUserInfoDto
          ? _value.searchUserInfoDto
          : searchUserInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
      matchingInfoSimpleDto: null == matchingInfoSimpleDto
          ? _value.matchingInfoSimpleDto
          : matchingInfoSimpleDto // ignore: cast_nullable_to_non_nullable
              as MatchingInfoDto,
      classInfoDto: null == classInfoDto
          ? _value.classInfoDto
          : classInfoDto // ignore: cast_nullable_to_non_nullable
              as ClassInfoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientProfileModelImpl implements _ClientProfileModel {
  _$ClientProfileModelImpl(
      {this.searchUserInfoDto = const UserInfoModel(),
      this.matchingInfoSimpleDto = const MatchingInfoDto(),
      this.classInfoDto = const ClassInfoDto()});

  factory _$ClientProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientProfileModelImplFromJson(json);

  @override
  @JsonKey()
  final UserInfoModel searchUserInfoDto;
  @override
  @JsonKey()
  final MatchingInfoDto matchingInfoSimpleDto;
  @override
  @JsonKey()
  final ClassInfoDto classInfoDto;

  @override
  String toString() {
    return 'ClientProfileModel(searchUserInfoDto: $searchUserInfoDto, matchingInfoSimpleDto: $matchingInfoSimpleDto, classInfoDto: $classInfoDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientProfileModelImpl &&
            (identical(other.searchUserInfoDto, searchUserInfoDto) ||
                other.searchUserInfoDto == searchUserInfoDto) &&
            (identical(other.matchingInfoSimpleDto, matchingInfoSimpleDto) ||
                other.matchingInfoSimpleDto == matchingInfoSimpleDto) &&
            (identical(other.classInfoDto, classInfoDto) ||
                other.classInfoDto == classInfoDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, searchUserInfoDto, matchingInfoSimpleDto, classInfoDto);

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientProfileModelImplCopyWith<_$ClientProfileModelImpl> get copyWith =>
      __$$ClientProfileModelImplCopyWithImpl<_$ClientProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ClientProfileModel implements ClientProfileModel {
  factory _ClientProfileModel(
      {final UserInfoModel searchUserInfoDto,
      final MatchingInfoDto matchingInfoSimpleDto,
      final ClassInfoDto classInfoDto}) = _$ClientProfileModelImpl;

  factory _ClientProfileModel.fromJson(Map<String, dynamic> json) =
      _$ClientProfileModelImpl.fromJson;

  @override
  UserInfoModel get searchUserInfoDto;
  @override
  MatchingInfoDto get matchingInfoSimpleDto;
  @override
  ClassInfoDto get classInfoDto;

  /// Create a copy of ClientProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientProfileModelImplCopyWith<_$ClientProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchingInfoDto _$MatchingInfoDtoFromJson(Map<String, dynamic> json) {
  return _MatchingInfoDto.fromJson(json);
}

/// @nodoc
mixin _$MatchingInfoDto {
  int get leftNumberOfTime => throw _privateConstructorUsedError;
  String get matchingMemo => throw _privateConstructorUsedError;

  /// Serializes this MatchingInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchingInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchingInfoDtoCopyWith<MatchingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchingInfoDtoCopyWith<$Res> {
  factory $MatchingInfoDtoCopyWith(
          MatchingInfoDto value, $Res Function(MatchingInfoDto) then) =
      _$MatchingInfoDtoCopyWithImpl<$Res, MatchingInfoDto>;
  @useResult
  $Res call({int leftNumberOfTime, String matchingMemo});
}

/// @nodoc
class _$MatchingInfoDtoCopyWithImpl<$Res, $Val extends MatchingInfoDto>
    implements $MatchingInfoDtoCopyWith<$Res> {
  _$MatchingInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchingInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftNumberOfTime = null,
    Object? matchingMemo = null,
  }) {
    return _then(_value.copyWith(
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      matchingMemo: null == matchingMemo
          ? _value.matchingMemo
          : matchingMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchingInfoDtoImplCopyWith<$Res>
    implements $MatchingInfoDtoCopyWith<$Res> {
  factory _$$MatchingInfoDtoImplCopyWith(_$MatchingInfoDtoImpl value,
          $Res Function(_$MatchingInfoDtoImpl) then) =
      __$$MatchingInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int leftNumberOfTime, String matchingMemo});
}

/// @nodoc
class __$$MatchingInfoDtoImplCopyWithImpl<$Res>
    extends _$MatchingInfoDtoCopyWithImpl<$Res, _$MatchingInfoDtoImpl>
    implements _$$MatchingInfoDtoImplCopyWith<$Res> {
  __$$MatchingInfoDtoImplCopyWithImpl(
      _$MatchingInfoDtoImpl _value, $Res Function(_$MatchingInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchingInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftNumberOfTime = null,
    Object? matchingMemo = null,
  }) {
    return _then(_$MatchingInfoDtoImpl(
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      matchingMemo: null == matchingMemo
          ? _value.matchingMemo
          : matchingMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchingInfoDtoImpl implements _MatchingInfoDto {
  const _$MatchingInfoDtoImpl(
      {this.leftNumberOfTime = 0, this.matchingMemo = ""});

  factory _$MatchingInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchingInfoDtoImplFromJson(json);

  @override
  @JsonKey()
  final int leftNumberOfTime;
  @override
  @JsonKey()
  final String matchingMemo;

  @override
  String toString() {
    return 'MatchingInfoDto(leftNumberOfTime: $leftNumberOfTime, matchingMemo: $matchingMemo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchingInfoDtoImpl &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime) &&
            (identical(other.matchingMemo, matchingMemo) ||
                other.matchingMemo == matchingMemo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, leftNumberOfTime, matchingMemo);

  /// Create a copy of MatchingInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchingInfoDtoImplCopyWith<_$MatchingInfoDtoImpl> get copyWith =>
      __$$MatchingInfoDtoImplCopyWithImpl<_$MatchingInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchingInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _MatchingInfoDto implements MatchingInfoDto {
  const factory _MatchingInfoDto(
      {final int leftNumberOfTime,
      final String matchingMemo}) = _$MatchingInfoDtoImpl;

  factory _MatchingInfoDto.fromJson(Map<String, dynamic> json) =
      _$MatchingInfoDtoImpl.fromJson;

  @override
  int get leftNumberOfTime;
  @override
  String get matchingMemo;

  /// Create a copy of MatchingInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchingInfoDtoImplCopyWith<_$MatchingInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassInfoDto _$ClassInfoDtoFromJson(Map<String, dynamic> json) {
  return _ClassInfoDto.fromJson(json);
}

/// @nodoc
mixin _$ClassInfoDto {
  int get totalClassCounts => throw _privateConstructorUsedError;
  int get totalDaysCounts => throw _privateConstructorUsedError;

  /// Serializes this ClassInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassInfoDtoCopyWith<ClassInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoDtoCopyWith<$Res> {
  factory $ClassInfoDtoCopyWith(
          ClassInfoDto value, $Res Function(ClassInfoDto) then) =
      _$ClassInfoDtoCopyWithImpl<$Res, ClassInfoDto>;
  @useResult
  $Res call({int totalClassCounts, int totalDaysCounts});
}

/// @nodoc
class _$ClassInfoDtoCopyWithImpl<$Res, $Val extends ClassInfoDto>
    implements $ClassInfoDtoCopyWith<$Res> {
  _$ClassInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalClassCounts = null,
    Object? totalDaysCounts = null,
  }) {
    return _then(_value.copyWith(
      totalClassCounts: null == totalClassCounts
          ? _value.totalClassCounts
          : totalClassCounts // ignore: cast_nullable_to_non_nullable
              as int,
      totalDaysCounts: null == totalDaysCounts
          ? _value.totalDaysCounts
          : totalDaysCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassInfoDtoImplCopyWith<$Res>
    implements $ClassInfoDtoCopyWith<$Res> {
  factory _$$ClassInfoDtoImplCopyWith(
          _$ClassInfoDtoImpl value, $Res Function(_$ClassInfoDtoImpl) then) =
      __$$ClassInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalClassCounts, int totalDaysCounts});
}

/// @nodoc
class __$$ClassInfoDtoImplCopyWithImpl<$Res>
    extends _$ClassInfoDtoCopyWithImpl<$Res, _$ClassInfoDtoImpl>
    implements _$$ClassInfoDtoImplCopyWith<$Res> {
  __$$ClassInfoDtoImplCopyWithImpl(
      _$ClassInfoDtoImpl _value, $Res Function(_$ClassInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalClassCounts = null,
    Object? totalDaysCounts = null,
  }) {
    return _then(_$ClassInfoDtoImpl(
      totalClassCounts: null == totalClassCounts
          ? _value.totalClassCounts
          : totalClassCounts // ignore: cast_nullable_to_non_nullable
              as int,
      totalDaysCounts: null == totalDaysCounts
          ? _value.totalDaysCounts
          : totalDaysCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassInfoDtoImpl implements _ClassInfoDto {
  const _$ClassInfoDtoImpl(
      {this.totalClassCounts = 0, this.totalDaysCounts = 0});

  factory _$ClassInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassInfoDtoImplFromJson(json);

  @override
  @JsonKey()
  final int totalClassCounts;
  @override
  @JsonKey()
  final int totalDaysCounts;

  @override
  String toString() {
    return 'ClassInfoDto(totalClassCounts: $totalClassCounts, totalDaysCounts: $totalDaysCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassInfoDtoImpl &&
            (identical(other.totalClassCounts, totalClassCounts) ||
                other.totalClassCounts == totalClassCounts) &&
            (identical(other.totalDaysCounts, totalDaysCounts) ||
                other.totalDaysCounts == totalDaysCounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalClassCounts, totalDaysCounts);

  /// Create a copy of ClassInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassInfoDtoImplCopyWith<_$ClassInfoDtoImpl> get copyWith =>
      __$$ClassInfoDtoImplCopyWithImpl<_$ClassInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _ClassInfoDto implements ClassInfoDto {
  const factory _ClassInfoDto(
      {final int totalClassCounts,
      final int totalDaysCounts}) = _$ClassInfoDtoImpl;

  factory _ClassInfoDto.fromJson(Map<String, dynamic> json) =
      _$ClassInfoDtoImpl.fromJson;

  @override
  int get totalClassCounts;
  @override
  int get totalDaysCounts;

  /// Create a copy of ClassInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassInfoDtoImplCopyWith<_$ClassInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
