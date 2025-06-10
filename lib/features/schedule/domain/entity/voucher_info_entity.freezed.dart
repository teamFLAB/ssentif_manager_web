// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherInfoEntity {
  int get voucherId => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get voucherColor => throw _privateConstructorUsedError;
  String get runningTime => throw _privateConstructorUsedError;
  bool get isUsed => throw _privateConstructorUsedError;
  String get voucherType => throw _privateConstructorUsedError;

  /// Create a copy of VoucherInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherInfoEntityCopyWith<VoucherInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherInfoEntityCopyWith<$Res> {
  factory $VoucherInfoEntityCopyWith(
          VoucherInfoEntity value, $Res Function(VoucherInfoEntity) then) =
      _$VoucherInfoEntityCopyWithImpl<$Res, VoucherInfoEntity>;
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String voucherColor,
      String runningTime,
      bool isUsed,
      String voucherType});
}

/// @nodoc
class _$VoucherInfoEntityCopyWithImpl<$Res, $Val extends VoucherInfoEntity>
    implements $VoucherInfoEntityCopyWith<$Res> {
  _$VoucherInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? voucherColor = null,
    Object? runningTime = null,
    Object? isUsed = null,
    Object? voucherType = null,
  }) {
    return _then(_value.copyWith(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as String,
      isUsed: null == isUsed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherInfoEntityImplCopyWith<$Res>
    implements $VoucherInfoEntityCopyWith<$Res> {
  factory _$$VoucherInfoEntityImplCopyWith(_$VoucherInfoEntityImpl value,
          $Res Function(_$VoucherInfoEntityImpl) then) =
      __$$VoucherInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String voucherColor,
      String runningTime,
      bool isUsed,
      String voucherType});
}

/// @nodoc
class __$$VoucherInfoEntityImplCopyWithImpl<$Res>
    extends _$VoucherInfoEntityCopyWithImpl<$Res, _$VoucherInfoEntityImpl>
    implements _$$VoucherInfoEntityImplCopyWith<$Res> {
  __$$VoucherInfoEntityImplCopyWithImpl(_$VoucherInfoEntityImpl _value,
      $Res Function(_$VoucherInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? voucherColor = null,
    Object? runningTime = null,
    Object? isUsed = null,
    Object? voucherType = null,
  }) {
    return _then(_$VoucherInfoEntityImpl(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as String,
      isUsed: null == isUsed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VoucherInfoEntityImpl implements _VoucherInfoEntity {
  const _$VoucherInfoEntityImpl(
      {this.voucherId = -1,
      this.voucherName = "",
      this.voucherColor = "",
      this.runningTime = "",
      this.isUsed = false,
      this.voucherType = ""});

  @override
  @JsonKey()
  final int voucherId;
  @override
  @JsonKey()
  final String voucherName;
  @override
  @JsonKey()
  final String voucherColor;
  @override
  @JsonKey()
  final String runningTime;
  @override
  @JsonKey()
  final bool isUsed;
  @override
  @JsonKey()
  final String voucherType;

  @override
  String toString() {
    return 'VoucherInfoEntity(voucherId: $voucherId, voucherName: $voucherName, voucherColor: $voucherColor, runningTime: $runningTime, isUsed: $isUsed, voucherType: $voucherType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherInfoEntityImpl &&
            (identical(other.voucherId, voucherId) ||
                other.voucherId == voucherId) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.voucherColor, voucherColor) ||
                other.voucherColor == voucherColor) &&
            (identical(other.runningTime, runningTime) ||
                other.runningTime == runningTime) &&
            (identical(other.isUsed, isUsed) || other.isUsed == isUsed) &&
            (identical(other.voucherType, voucherType) ||
                other.voucherType == voucherType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucherId, voucherName,
      voucherColor, runningTime, isUsed, voucherType);

  /// Create a copy of VoucherInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherInfoEntityImplCopyWith<_$VoucherInfoEntityImpl> get copyWith =>
      __$$VoucherInfoEntityImplCopyWithImpl<_$VoucherInfoEntityImpl>(
          this, _$identity);
}

abstract class _VoucherInfoEntity implements VoucherInfoEntity {
  const factory _VoucherInfoEntity(
      {final int voucherId,
      final String voucherName,
      final String voucherColor,
      final String runningTime,
      final bool isUsed,
      final String voucherType}) = _$VoucherInfoEntityImpl;

  @override
  int get voucherId;
  @override
  String get voucherName;
  @override
  String get voucherColor;
  @override
  String get runningTime;
  @override
  bool get isUsed;
  @override
  String get voucherType;

  /// Create a copy of VoucherInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherInfoEntityImplCopyWith<_$VoucherInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
