// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientProfileEntity {
  UserInfoEntity get searchUserInfoDto => throw _privateConstructorUsedError;
  MatchingInfoEntity get matchingInfoSimpleDto =>
      throw _privateConstructorUsedError;
  ClassInfoEntity get classInfoDto => throw _privateConstructorUsedError;

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientProfileEntityCopyWith<ClientProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientProfileEntityCopyWith<$Res> {
  factory $ClientProfileEntityCopyWith(
          ClientProfileEntity value, $Res Function(ClientProfileEntity) then) =
      _$ClientProfileEntityCopyWithImpl<$Res, ClientProfileEntity>;
  @useResult
  $Res call(
      {UserInfoEntity searchUserInfoDto,
      MatchingInfoEntity matchingInfoSimpleDto,
      ClassInfoEntity classInfoDto});

  $UserInfoEntityCopyWith<$Res> get searchUserInfoDto;
  $MatchingInfoEntityCopyWith<$Res> get matchingInfoSimpleDto;
  $ClassInfoEntityCopyWith<$Res> get classInfoDto;
}

/// @nodoc
class _$ClientProfileEntityCopyWithImpl<$Res, $Val extends ClientProfileEntity>
    implements $ClientProfileEntityCopyWith<$Res> {
  _$ClientProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientProfileEntity
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
              as UserInfoEntity,
      matchingInfoSimpleDto: null == matchingInfoSimpleDto
          ? _value.matchingInfoSimpleDto
          : matchingInfoSimpleDto // ignore: cast_nullable_to_non_nullable
              as MatchingInfoEntity,
      classInfoDto: null == classInfoDto
          ? _value.classInfoDto
          : classInfoDto // ignore: cast_nullable_to_non_nullable
              as ClassInfoEntity,
    ) as $Val);
  }

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoEntityCopyWith<$Res> get searchUserInfoDto {
    return $UserInfoEntityCopyWith<$Res>(_value.searchUserInfoDto, (value) {
      return _then(_value.copyWith(searchUserInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchingInfoEntityCopyWith<$Res> get matchingInfoSimpleDto {
    return $MatchingInfoEntityCopyWith<$Res>(_value.matchingInfoSimpleDto,
        (value) {
      return _then(_value.copyWith(matchingInfoSimpleDto: value) as $Val);
    });
  }

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoEntityCopyWith<$Res> get classInfoDto {
    return $ClassInfoEntityCopyWith<$Res>(_value.classInfoDto, (value) {
      return _then(_value.copyWith(classInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientProfileEntityImplCopyWith<$Res>
    implements $ClientProfileEntityCopyWith<$Res> {
  factory _$$ClientProfileEntityImplCopyWith(_$ClientProfileEntityImpl value,
          $Res Function(_$ClientProfileEntityImpl) then) =
      __$$ClientProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoEntity searchUserInfoDto,
      MatchingInfoEntity matchingInfoSimpleDto,
      ClassInfoEntity classInfoDto});

  @override
  $UserInfoEntityCopyWith<$Res> get searchUserInfoDto;
  @override
  $MatchingInfoEntityCopyWith<$Res> get matchingInfoSimpleDto;
  @override
  $ClassInfoEntityCopyWith<$Res> get classInfoDto;
}

/// @nodoc
class __$$ClientProfileEntityImplCopyWithImpl<$Res>
    extends _$ClientProfileEntityCopyWithImpl<$Res, _$ClientProfileEntityImpl>
    implements _$$ClientProfileEntityImplCopyWith<$Res> {
  __$$ClientProfileEntityImplCopyWithImpl(_$ClientProfileEntityImpl _value,
      $Res Function(_$ClientProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchUserInfoDto = null,
    Object? matchingInfoSimpleDto = null,
    Object? classInfoDto = null,
  }) {
    return _then(_$ClientProfileEntityImpl(
      searchUserInfoDto: null == searchUserInfoDto
          ? _value.searchUserInfoDto
          : searchUserInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity,
      matchingInfoSimpleDto: null == matchingInfoSimpleDto
          ? _value.matchingInfoSimpleDto
          : matchingInfoSimpleDto // ignore: cast_nullable_to_non_nullable
              as MatchingInfoEntity,
      classInfoDto: null == classInfoDto
          ? _value.classInfoDto
          : classInfoDto // ignore: cast_nullable_to_non_nullable
              as ClassInfoEntity,
    ));
  }
}

/// @nodoc

class _$ClientProfileEntityImpl implements _ClientProfileEntity {
  _$ClientProfileEntityImpl(
      {this.searchUserInfoDto = const UserInfoEntity(),
      this.matchingInfoSimpleDto = const MatchingInfoEntity(),
      this.classInfoDto = const ClassInfoEntity()});

  @override
  @JsonKey()
  final UserInfoEntity searchUserInfoDto;
  @override
  @JsonKey()
  final MatchingInfoEntity matchingInfoSimpleDto;
  @override
  @JsonKey()
  final ClassInfoEntity classInfoDto;

  @override
  String toString() {
    return 'ClientProfileEntity(searchUserInfoDto: $searchUserInfoDto, matchingInfoSimpleDto: $matchingInfoSimpleDto, classInfoDto: $classInfoDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientProfileEntityImpl &&
            (identical(other.searchUserInfoDto, searchUserInfoDto) ||
                other.searchUserInfoDto == searchUserInfoDto) &&
            (identical(other.matchingInfoSimpleDto, matchingInfoSimpleDto) ||
                other.matchingInfoSimpleDto == matchingInfoSimpleDto) &&
            (identical(other.classInfoDto, classInfoDto) ||
                other.classInfoDto == classInfoDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchUserInfoDto, matchingInfoSimpleDto, classInfoDto);

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientProfileEntityImplCopyWith<_$ClientProfileEntityImpl> get copyWith =>
      __$$ClientProfileEntityImplCopyWithImpl<_$ClientProfileEntityImpl>(
          this, _$identity);
}

abstract class _ClientProfileEntity implements ClientProfileEntity {
  factory _ClientProfileEntity(
      {final UserInfoEntity searchUserInfoDto,
      final MatchingInfoEntity matchingInfoSimpleDto,
      final ClassInfoEntity classInfoDto}) = _$ClientProfileEntityImpl;

  @override
  UserInfoEntity get searchUserInfoDto;
  @override
  MatchingInfoEntity get matchingInfoSimpleDto;
  @override
  ClassInfoEntity get classInfoDto;

  /// Create a copy of ClientProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientProfileEntityImplCopyWith<_$ClientProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MatchingInfoEntity {
  int get leftNumberOfTime => throw _privateConstructorUsedError;
  String get matchingMemo => throw _privateConstructorUsedError;

  /// Create a copy of MatchingInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchingInfoEntityCopyWith<MatchingInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchingInfoEntityCopyWith<$Res> {
  factory $MatchingInfoEntityCopyWith(
          MatchingInfoEntity value, $Res Function(MatchingInfoEntity) then) =
      _$MatchingInfoEntityCopyWithImpl<$Res, MatchingInfoEntity>;
  @useResult
  $Res call({int leftNumberOfTime, String matchingMemo});
}

/// @nodoc
class _$MatchingInfoEntityCopyWithImpl<$Res, $Val extends MatchingInfoEntity>
    implements $MatchingInfoEntityCopyWith<$Res> {
  _$MatchingInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchingInfoEntity
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
abstract class _$$MatchingInfoEntityImplCopyWith<$Res>
    implements $MatchingInfoEntityCopyWith<$Res> {
  factory _$$MatchingInfoEntityImplCopyWith(_$MatchingInfoEntityImpl value,
          $Res Function(_$MatchingInfoEntityImpl) then) =
      __$$MatchingInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int leftNumberOfTime, String matchingMemo});
}

/// @nodoc
class __$$MatchingInfoEntityImplCopyWithImpl<$Res>
    extends _$MatchingInfoEntityCopyWithImpl<$Res, _$MatchingInfoEntityImpl>
    implements _$$MatchingInfoEntityImplCopyWith<$Res> {
  __$$MatchingInfoEntityImplCopyWithImpl(_$MatchingInfoEntityImpl _value,
      $Res Function(_$MatchingInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchingInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftNumberOfTime = null,
    Object? matchingMemo = null,
  }) {
    return _then(_$MatchingInfoEntityImpl(
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

class _$MatchingInfoEntityImpl implements _MatchingInfoEntity {
  const _$MatchingInfoEntityImpl(
      {this.leftNumberOfTime = 0, this.matchingMemo = ""});

  @override
  @JsonKey()
  final int leftNumberOfTime;
  @override
  @JsonKey()
  final String matchingMemo;

  @override
  String toString() {
    return 'MatchingInfoEntity(leftNumberOfTime: $leftNumberOfTime, matchingMemo: $matchingMemo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchingInfoEntityImpl &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime) &&
            (identical(other.matchingMemo, matchingMemo) ||
                other.matchingMemo == matchingMemo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leftNumberOfTime, matchingMemo);

  /// Create a copy of MatchingInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchingInfoEntityImplCopyWith<_$MatchingInfoEntityImpl> get copyWith =>
      __$$MatchingInfoEntityImplCopyWithImpl<_$MatchingInfoEntityImpl>(
          this, _$identity);
}

abstract class _MatchingInfoEntity implements MatchingInfoEntity {
  const factory _MatchingInfoEntity(
      {final int leftNumberOfTime,
      final String matchingMemo}) = _$MatchingInfoEntityImpl;

  @override
  int get leftNumberOfTime;
  @override
  String get matchingMemo;

  /// Create a copy of MatchingInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchingInfoEntityImplCopyWith<_$MatchingInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassInfoEntity {
  int get totalClassCounts => throw _privateConstructorUsedError;
  int get totalDaysCounts => throw _privateConstructorUsedError;

  /// Create a copy of ClassInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassInfoEntityCopyWith<ClassInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoEntityCopyWith<$Res> {
  factory $ClassInfoEntityCopyWith(
          ClassInfoEntity value, $Res Function(ClassInfoEntity) then) =
      _$ClassInfoEntityCopyWithImpl<$Res, ClassInfoEntity>;
  @useResult
  $Res call({int totalClassCounts, int totalDaysCounts});
}

/// @nodoc
class _$ClassInfoEntityCopyWithImpl<$Res, $Val extends ClassInfoEntity>
    implements $ClassInfoEntityCopyWith<$Res> {
  _$ClassInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassInfoEntity
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
abstract class _$$ClassInfoEntityImplCopyWith<$Res>
    implements $ClassInfoEntityCopyWith<$Res> {
  factory _$$ClassInfoEntityImplCopyWith(_$ClassInfoEntityImpl value,
          $Res Function(_$ClassInfoEntityImpl) then) =
      __$$ClassInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalClassCounts, int totalDaysCounts});
}

/// @nodoc
class __$$ClassInfoEntityImplCopyWithImpl<$Res>
    extends _$ClassInfoEntityCopyWithImpl<$Res, _$ClassInfoEntityImpl>
    implements _$$ClassInfoEntityImplCopyWith<$Res> {
  __$$ClassInfoEntityImplCopyWithImpl(
      _$ClassInfoEntityImpl _value, $Res Function(_$ClassInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalClassCounts = null,
    Object? totalDaysCounts = null,
  }) {
    return _then(_$ClassInfoEntityImpl(
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

class _$ClassInfoEntityImpl implements _ClassInfoEntity {
  const _$ClassInfoEntityImpl(
      {this.totalClassCounts = 0, this.totalDaysCounts = 0});

  @override
  @JsonKey()
  final int totalClassCounts;
  @override
  @JsonKey()
  final int totalDaysCounts;

  @override
  String toString() {
    return 'ClassInfoEntity(totalClassCounts: $totalClassCounts, totalDaysCounts: $totalDaysCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassInfoEntityImpl &&
            (identical(other.totalClassCounts, totalClassCounts) ||
                other.totalClassCounts == totalClassCounts) &&
            (identical(other.totalDaysCounts, totalDaysCounts) ||
                other.totalDaysCounts == totalDaysCounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalClassCounts, totalDaysCounts);

  /// Create a copy of ClassInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassInfoEntityImplCopyWith<_$ClassInfoEntityImpl> get copyWith =>
      __$$ClassInfoEntityImplCopyWithImpl<_$ClassInfoEntityImpl>(
          this, _$identity);
}

abstract class _ClassInfoEntity implements ClassInfoEntity {
  const factory _ClassInfoEntity(
      {final int totalClassCounts,
      final int totalDaysCounts}) = _$ClassInfoEntityImpl;

  @override
  int get totalClassCounts;
  @override
  int get totalDaysCounts;

  /// Create a copy of ClassInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassInfoEntityImplCopyWith<_$ClassInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
