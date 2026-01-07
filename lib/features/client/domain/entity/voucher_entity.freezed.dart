// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherEntity {
  int get voucherId => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get expiredDate => throw _privateConstructorUsedError;
  int get runningTime => throw _privateConstructorUsedError;
  int get remainCount => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  VoucherColorType get voucherColorType => throw _privateConstructorUsedError;
  int get reservationCount => throw _privateConstructorUsedError;
  int get voucherMatchingId => throw _privateConstructorUsedError;
  VoucherType get voucherType => throw _privateConstructorUsedError;
  VoucherStatusType get voucherStatusType => throw _privateConstructorUsedError;
  String get priceOfVoucher => throw _privateConstructorUsedError;
  String get feePerSession => throw _privateConstructorUsedError;
  bool get isGroupVoucher => throw _privateConstructorUsedError;
  List<UserEntity> get groupClients => throw _privateConstructorUsedError;
  PurchaseType? get purchaseType => throw _privateConstructorUsedError;

  /// Create a copy of VoucherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherEntityCopyWith<VoucherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherEntityCopyWith<$Res> {
  factory $VoucherEntityCopyWith(
          VoucherEntity value, $Res Function(VoucherEntity) then) =
      _$VoucherEntityCopyWithImpl<$Res, VoucherEntity>;
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String expiredDate,
      int runningTime,
      int remainCount,
      int totalCount,
      VoucherColorType voucherColorType,
      int reservationCount,
      int voucherMatchingId,
      VoucherType voucherType,
      VoucherStatusType voucherStatusType,
      String priceOfVoucher,
      String feePerSession,
      bool isGroupVoucher,
      List<UserEntity> groupClients,
      PurchaseType? purchaseType});
}

/// @nodoc
class _$VoucherEntityCopyWithImpl<$Res, $Val extends VoucherEntity>
    implements $VoucherEntityCopyWith<$Res> {
  _$VoucherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? expiredDate = null,
    Object? runningTime = null,
    Object? remainCount = null,
    Object? totalCount = null,
    Object? voucherColorType = null,
    Object? reservationCount = null,
    Object? voucherMatchingId = null,
    Object? voucherType = null,
    Object? voucherStatusType = null,
    Object? priceOfVoucher = null,
    Object? feePerSession = null,
    Object? isGroupVoucher = null,
    Object? groupClients = null,
    Object? purchaseType = freezed,
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
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as int,
      remainCount: null == remainCount
          ? _value.remainCount
          : remainCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      voucherColorType: null == voucherColorType
          ? _value.voucherColorType
          : voucherColorType // ignore: cast_nullable_to_non_nullable
              as VoucherColorType,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as VoucherType,
      voucherStatusType: null == voucherStatusType
          ? _value.voucherStatusType
          : voucherStatusType // ignore: cast_nullable_to_non_nullable
              as VoucherStatusType,
      priceOfVoucher: null == priceOfVoucher
          ? _value.priceOfVoucher
          : priceOfVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      feePerSession: null == feePerSession
          ? _value.feePerSession
          : feePerSession // ignore: cast_nullable_to_non_nullable
              as String,
      isGroupVoucher: null == isGroupVoucher
          ? _value.isGroupVoucher
          : isGroupVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      groupClients: null == groupClients
          ? _value.groupClients
          : groupClients // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      purchaseType: freezed == purchaseType
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as PurchaseType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherEntityImplCopyWith<$Res>
    implements $VoucherEntityCopyWith<$Res> {
  factory _$$VoucherEntityImplCopyWith(
          _$VoucherEntityImpl value, $Res Function(_$VoucherEntityImpl) then) =
      __$$VoucherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int voucherId,
      String voucherName,
      String expiredDate,
      int runningTime,
      int remainCount,
      int totalCount,
      VoucherColorType voucherColorType,
      int reservationCount,
      int voucherMatchingId,
      VoucherType voucherType,
      VoucherStatusType voucherStatusType,
      String priceOfVoucher,
      String feePerSession,
      bool isGroupVoucher,
      List<UserEntity> groupClients,
      PurchaseType? purchaseType});
}

/// @nodoc
class __$$VoucherEntityImplCopyWithImpl<$Res>
    extends _$VoucherEntityCopyWithImpl<$Res, _$VoucherEntityImpl>
    implements _$$VoucherEntityImplCopyWith<$Res> {
  __$$VoucherEntityImplCopyWithImpl(
      _$VoucherEntityImpl _value, $Res Function(_$VoucherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = null,
    Object? expiredDate = null,
    Object? runningTime = null,
    Object? remainCount = null,
    Object? totalCount = null,
    Object? voucherColorType = null,
    Object? reservationCount = null,
    Object? voucherMatchingId = null,
    Object? voucherType = null,
    Object? voucherStatusType = null,
    Object? priceOfVoucher = null,
    Object? feePerSession = null,
    Object? isGroupVoucher = null,
    Object? groupClients = null,
    Object? purchaseType = freezed,
  }) {
    return _then(_$VoucherEntityImpl(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as int,
      remainCount: null == remainCount
          ? _value.remainCount
          : remainCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      voucherColorType: null == voucherColorType
          ? _value.voucherColorType
          : voucherColorType // ignore: cast_nullable_to_non_nullable
              as VoucherColorType,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as VoucherType,
      voucherStatusType: null == voucherStatusType
          ? _value.voucherStatusType
          : voucherStatusType // ignore: cast_nullable_to_non_nullable
              as VoucherStatusType,
      priceOfVoucher: null == priceOfVoucher
          ? _value.priceOfVoucher
          : priceOfVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      feePerSession: null == feePerSession
          ? _value.feePerSession
          : feePerSession // ignore: cast_nullable_to_non_nullable
              as String,
      isGroupVoucher: null == isGroupVoucher
          ? _value.isGroupVoucher
          : isGroupVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
      groupClients: null == groupClients
          ? _value._groupClients
          : groupClients // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      purchaseType: freezed == purchaseType
          ? _value.purchaseType
          : purchaseType // ignore: cast_nullable_to_non_nullable
              as PurchaseType?,
    ));
  }
}

/// @nodoc

class _$VoucherEntityImpl implements _VoucherEntity {
  _$VoucherEntityImpl(
      {this.voucherId = -1,
      this.voucherName = "",
      this.expiredDate = "",
      this.runningTime = 0,
      this.remainCount = 0,
      this.totalCount = 0,
      this.voucherColorType = VoucherColorType.blue,
      this.reservationCount = 0,
      this.voucherMatchingId = -1,
      this.voucherType = VoucherType.offline,
      this.voucherStatusType = VoucherStatusType.wait,
      this.priceOfVoucher = "",
      this.feePerSession = "",
      this.isGroupVoucher = false,
      final List<UserEntity> groupClients = const [],
      this.purchaseType})
      : _groupClients = groupClients;

  @override
  @JsonKey()
  final int voucherId;
  @override
  @JsonKey()
  final String voucherName;
  @override
  @JsonKey()
  final String expiredDate;
  @override
  @JsonKey()
  final int runningTime;
  @override
  @JsonKey()
  final int remainCount;
  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final VoucherColorType voucherColorType;
  @override
  @JsonKey()
  final int reservationCount;
  @override
  @JsonKey()
  final int voucherMatchingId;
  @override
  @JsonKey()
  final VoucherType voucherType;
  @override
  @JsonKey()
  final VoucherStatusType voucherStatusType;
  @override
  @JsonKey()
  final String priceOfVoucher;
  @override
  @JsonKey()
  final String feePerSession;
  @override
  @JsonKey()
  final bool isGroupVoucher;
  final List<UserEntity> _groupClients;
  @override
  @JsonKey()
  List<UserEntity> get groupClients {
    if (_groupClients is EqualUnmodifiableListView) return _groupClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupClients);
  }

  @override
  final PurchaseType? purchaseType;

  @override
  String toString() {
    return 'VoucherEntity(voucherId: $voucherId, voucherName: $voucherName, expiredDate: $expiredDate, runningTime: $runningTime, remainCount: $remainCount, totalCount: $totalCount, voucherColorType: $voucherColorType, reservationCount: $reservationCount, voucherMatchingId: $voucherMatchingId, voucherType: $voucherType, voucherStatusType: $voucherStatusType, priceOfVoucher: $priceOfVoucher, feePerSession: $feePerSession, isGroupVoucher: $isGroupVoucher, groupClients: $groupClients, purchaseType: $purchaseType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherEntityImpl &&
            (identical(other.voucherId, voucherId) ||
                other.voucherId == voucherId) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate) &&
            (identical(other.runningTime, runningTime) ||
                other.runningTime == runningTime) &&
            (identical(other.remainCount, remainCount) ||
                other.remainCount == remainCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.voucherColorType, voucherColorType) ||
                other.voucherColorType == voucherColorType) &&
            (identical(other.reservationCount, reservationCount) ||
                other.reservationCount == reservationCount) &&
            (identical(other.voucherMatchingId, voucherMatchingId) ||
                other.voucherMatchingId == voucherMatchingId) &&
            (identical(other.voucherType, voucherType) ||
                other.voucherType == voucherType) &&
            (identical(other.voucherStatusType, voucherStatusType) ||
                other.voucherStatusType == voucherStatusType) &&
            (identical(other.priceOfVoucher, priceOfVoucher) ||
                other.priceOfVoucher == priceOfVoucher) &&
            (identical(other.feePerSession, feePerSession) ||
                other.feePerSession == feePerSession) &&
            (identical(other.isGroupVoucher, isGroupVoucher) ||
                other.isGroupVoucher == isGroupVoucher) &&
            const DeepCollectionEquality()
                .equals(other._groupClients, _groupClients) &&
            (identical(other.purchaseType, purchaseType) ||
                other.purchaseType == purchaseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      voucherId,
      voucherName,
      expiredDate,
      runningTime,
      remainCount,
      totalCount,
      voucherColorType,
      reservationCount,
      voucherMatchingId,
      voucherType,
      voucherStatusType,
      priceOfVoucher,
      feePerSession,
      isGroupVoucher,
      const DeepCollectionEquality().hash(_groupClients),
      purchaseType);

  /// Create a copy of VoucherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherEntityImplCopyWith<_$VoucherEntityImpl> get copyWith =>
      __$$VoucherEntityImplCopyWithImpl<_$VoucherEntityImpl>(this, _$identity);
}

abstract class _VoucherEntity implements VoucherEntity {
  factory _VoucherEntity(
      {final int voucherId,
      final String voucherName,
      final String expiredDate,
      final int runningTime,
      final int remainCount,
      final int totalCount,
      final VoucherColorType voucherColorType,
      final int reservationCount,
      final int voucherMatchingId,
      final VoucherType voucherType,
      final VoucherStatusType voucherStatusType,
      final String priceOfVoucher,
      final String feePerSession,
      final bool isGroupVoucher,
      final List<UserEntity> groupClients,
      final PurchaseType? purchaseType}) = _$VoucherEntityImpl;

  @override
  int get voucherId;
  @override
  String get voucherName;
  @override
  String get expiredDate;
  @override
  int get runningTime;
  @override
  int get remainCount;
  @override
  int get totalCount;
  @override
  VoucherColorType get voucherColorType;
  @override
  int get reservationCount;
  @override
  int get voucherMatchingId;
  @override
  VoucherType get voucherType;
  @override
  VoucherStatusType get voucherStatusType;
  @override
  String get priceOfVoucher;
  @override
  String get feePerSession;
  @override
  bool get isGroupVoucher;
  @override
  List<UserEntity> get groupClients;
  @override
  PurchaseType? get purchaseType;

  /// Create a copy of VoucherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherEntityImplCopyWith<_$VoucherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
