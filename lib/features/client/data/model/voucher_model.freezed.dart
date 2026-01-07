// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseClientVoucherList _$ResponseClientVoucherListFromJson(
    Map<String, dynamic> json) {
  return _ResponseClientVoucherList.fromJson(json);
}

/// @nodoc
mixin _$ResponseClientVoucherList {
  String get name => throw _privateConstructorUsedError;
  List<VoucherModel> get clientsVoucherInfoDtos =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseClientVoucherList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseClientVoucherList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseClientVoucherListCopyWith<ResponseClientVoucherList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseClientVoucherListCopyWith<$Res> {
  factory $ResponseClientVoucherListCopyWith(ResponseClientVoucherList value,
          $Res Function(ResponseClientVoucherList) then) =
      _$ResponseClientVoucherListCopyWithImpl<$Res, ResponseClientVoucherList>;
  @useResult
  $Res call({String name, List<VoucherModel> clientsVoucherInfoDtos});
}

/// @nodoc
class _$ResponseClientVoucherListCopyWithImpl<$Res,
        $Val extends ResponseClientVoucherList>
    implements $ResponseClientVoucherListCopyWith<$Res> {
  _$ResponseClientVoucherListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseClientVoucherList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clientsVoucherInfoDtos = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientsVoucherInfoDtos: null == clientsVoucherInfoDtos
          ? _value.clientsVoucherInfoDtos
          : clientsVoucherInfoDtos // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseClientVoucherListImplCopyWith<$Res>
    implements $ResponseClientVoucherListCopyWith<$Res> {
  factory _$$ResponseClientVoucherListImplCopyWith(
          _$ResponseClientVoucherListImpl value,
          $Res Function(_$ResponseClientVoucherListImpl) then) =
      __$$ResponseClientVoucherListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<VoucherModel> clientsVoucherInfoDtos});
}

/// @nodoc
class __$$ResponseClientVoucherListImplCopyWithImpl<$Res>
    extends _$ResponseClientVoucherListCopyWithImpl<$Res,
        _$ResponseClientVoucherListImpl>
    implements _$$ResponseClientVoucherListImplCopyWith<$Res> {
  __$$ResponseClientVoucherListImplCopyWithImpl(
      _$ResponseClientVoucherListImpl _value,
      $Res Function(_$ResponseClientVoucherListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseClientVoucherList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clientsVoucherInfoDtos = null,
  }) {
    return _then(_$ResponseClientVoucherListImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientsVoucherInfoDtos: null == clientsVoucherInfoDtos
          ? _value._clientsVoucherInfoDtos
          : clientsVoucherInfoDtos // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseClientVoucherListImpl implements _ResponseClientVoucherList {
  _$ResponseClientVoucherListImpl(
      {this.name = "",
      final List<VoucherModel> clientsVoucherInfoDtos = const []})
      : _clientsVoucherInfoDtos = clientsVoucherInfoDtos;

  factory _$ResponseClientVoucherListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseClientVoucherListImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  final List<VoucherModel> _clientsVoucherInfoDtos;
  @override
  @JsonKey()
  List<VoucherModel> get clientsVoucherInfoDtos {
    if (_clientsVoucherInfoDtos is EqualUnmodifiableListView)
      return _clientsVoucherInfoDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clientsVoucherInfoDtos);
  }

  @override
  String toString() {
    return 'ResponseClientVoucherList(name: $name, clientsVoucherInfoDtos: $clientsVoucherInfoDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseClientVoucherListImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
                other._clientsVoucherInfoDtos, _clientsVoucherInfoDtos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_clientsVoucherInfoDtos));

  /// Create a copy of ResponseClientVoucherList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseClientVoucherListImplCopyWith<_$ResponseClientVoucherListImpl>
      get copyWith => __$$ResponseClientVoucherListImplCopyWithImpl<
          _$ResponseClientVoucherListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseClientVoucherListImplToJson(
      this,
    );
  }
}

abstract class _ResponseClientVoucherList implements ResponseClientVoucherList {
  factory _ResponseClientVoucherList(
          {final String name,
          final List<VoucherModel> clientsVoucherInfoDtos}) =
      _$ResponseClientVoucherListImpl;

  factory _ResponseClientVoucherList.fromJson(Map<String, dynamic> json) =
      _$ResponseClientVoucherListImpl.fromJson;

  @override
  String get name;
  @override
  List<VoucherModel> get clientsVoucherInfoDtos;

  /// Create a copy of ResponseClientVoucherList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseClientVoucherListImplCopyWith<_$ResponseClientVoucherListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VoucherModel _$VoucherModelFromJson(Map<String, dynamic> json) {
  return _VoucherModel.fromJson(json);
}

/// @nodoc
mixin _$VoucherModel {
  int get id => throw _privateConstructorUsedError;
  int get voucherMatchingId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get classStatus => throw _privateConstructorUsedError;
  int get totalNumberOfTime => throw _privateConstructorUsedError;
  int get leftNumberOfTime => throw _privateConstructorUsedError;
  int get reservationCount => throw _privateConstructorUsedError;
  String get expiredDate => throw _privateConstructorUsedError;
  String get voucherColor => throw _privateConstructorUsedError;
  int get voucherTakeTime => throw _privateConstructorUsedError;
  String get voucherType => throw _privateConstructorUsedError;
  String get voucherRegistrationType => throw _privateConstructorUsedError;
  int get voucherFeePerSession => throw _privateConstructorUsedError;
  int get voucherSalesPrice => throw _privateConstructorUsedError;
  List<UserInfoModel> get groupParticipants =>
      throw _privateConstructorUsedError;
  bool get isGroupVoucher => throw _privateConstructorUsedError;

  /// Serializes this VoucherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoucherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherModelCopyWith<VoucherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherModelCopyWith<$Res> {
  factory $VoucherModelCopyWith(
          VoucherModel value, $Res Function(VoucherModel) then) =
      _$VoucherModelCopyWithImpl<$Res, VoucherModel>;
  @useResult
  $Res call(
      {int id,
      int voucherMatchingId,
      String name,
      String classStatus,
      int totalNumberOfTime,
      int leftNumberOfTime,
      int reservationCount,
      String expiredDate,
      String voucherColor,
      int voucherTakeTime,
      String voucherType,
      String voucherRegistrationType,
      int voucherFeePerSession,
      int voucherSalesPrice,
      List<UserInfoModel> groupParticipants,
      bool isGroupVoucher});
}

/// @nodoc
class _$VoucherModelCopyWithImpl<$Res, $Val extends VoucherModel>
    implements $VoucherModelCopyWith<$Res> {
  _$VoucherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? voucherMatchingId = null,
    Object? name = null,
    Object? classStatus = null,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? reservationCount = null,
    Object? expiredDate = null,
    Object? voucherColor = null,
    Object? voucherTakeTime = null,
    Object? voucherType = null,
    Object? voucherRegistrationType = null,
    Object? voucherFeePerSession = null,
    Object? voucherSalesPrice = null,
    Object? groupParticipants = null,
    Object? isGroupVoucher = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classStatus: null == classStatus
          ? _value.classStatus
          : classStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalNumberOfTime: null == totalNumberOfTime
          ? _value.totalNumberOfTime
          : totalNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      voucherTakeTime: null == voucherTakeTime
          ? _value.voucherTakeTime
          : voucherTakeTime // ignore: cast_nullable_to_non_nullable
              as int,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
      voucherRegistrationType: null == voucherRegistrationType
          ? _value.voucherRegistrationType
          : voucherRegistrationType // ignore: cast_nullable_to_non_nullable
              as String,
      voucherFeePerSession: null == voucherFeePerSession
          ? _value.voucherFeePerSession
          : voucherFeePerSession // ignore: cast_nullable_to_non_nullable
              as int,
      voucherSalesPrice: null == voucherSalesPrice
          ? _value.voucherSalesPrice
          : voucherSalesPrice // ignore: cast_nullable_to_non_nullable
              as int,
      groupParticipants: null == groupParticipants
          ? _value.groupParticipants
          : groupParticipants // ignore: cast_nullable_to_non_nullable
              as List<UserInfoModel>,
      isGroupVoucher: null == isGroupVoucher
          ? _value.isGroupVoucher
          : isGroupVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherModelImplCopyWith<$Res>
    implements $VoucherModelCopyWith<$Res> {
  factory _$$VoucherModelImplCopyWith(
          _$VoucherModelImpl value, $Res Function(_$VoucherModelImpl) then) =
      __$$VoucherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int voucherMatchingId,
      String name,
      String classStatus,
      int totalNumberOfTime,
      int leftNumberOfTime,
      int reservationCount,
      String expiredDate,
      String voucherColor,
      int voucherTakeTime,
      String voucherType,
      String voucherRegistrationType,
      int voucherFeePerSession,
      int voucherSalesPrice,
      List<UserInfoModel> groupParticipants,
      bool isGroupVoucher});
}

/// @nodoc
class __$$VoucherModelImplCopyWithImpl<$Res>
    extends _$VoucherModelCopyWithImpl<$Res, _$VoucherModelImpl>
    implements _$$VoucherModelImplCopyWith<$Res> {
  __$$VoucherModelImplCopyWithImpl(
      _$VoucherModelImpl _value, $Res Function(_$VoucherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? voucherMatchingId = null,
    Object? name = null,
    Object? classStatus = null,
    Object? totalNumberOfTime = null,
    Object? leftNumberOfTime = null,
    Object? reservationCount = null,
    Object? expiredDate = null,
    Object? voucherColor = null,
    Object? voucherTakeTime = null,
    Object? voucherType = null,
    Object? voucherRegistrationType = null,
    Object? voucherFeePerSession = null,
    Object? voucherSalesPrice = null,
    Object? groupParticipants = null,
    Object? isGroupVoucher = null,
  }) {
    return _then(_$VoucherModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      voucherMatchingId: null == voucherMatchingId
          ? _value.voucherMatchingId
          : voucherMatchingId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classStatus: null == classStatus
          ? _value.classStatus
          : classStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalNumberOfTime: null == totalNumberOfTime
          ? _value.totalNumberOfTime
          : totalNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      leftNumberOfTime: null == leftNumberOfTime
          ? _value.leftNumberOfTime
          : leftNumberOfTime // ignore: cast_nullable_to_non_nullable
              as int,
      reservationCount: null == reservationCount
          ? _value.reservationCount
          : reservationCount // ignore: cast_nullable_to_non_nullable
              as int,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
      voucherColor: null == voucherColor
          ? _value.voucherColor
          : voucherColor // ignore: cast_nullable_to_non_nullable
              as String,
      voucherTakeTime: null == voucherTakeTime
          ? _value.voucherTakeTime
          : voucherTakeTime // ignore: cast_nullable_to_non_nullable
              as int,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as String,
      voucherRegistrationType: null == voucherRegistrationType
          ? _value.voucherRegistrationType
          : voucherRegistrationType // ignore: cast_nullable_to_non_nullable
              as String,
      voucherFeePerSession: null == voucherFeePerSession
          ? _value.voucherFeePerSession
          : voucherFeePerSession // ignore: cast_nullable_to_non_nullable
              as int,
      voucherSalesPrice: null == voucherSalesPrice
          ? _value.voucherSalesPrice
          : voucherSalesPrice // ignore: cast_nullable_to_non_nullable
              as int,
      groupParticipants: null == groupParticipants
          ? _value._groupParticipants
          : groupParticipants // ignore: cast_nullable_to_non_nullable
              as List<UserInfoModel>,
      isGroupVoucher: null == isGroupVoucher
          ? _value.isGroupVoucher
          : isGroupVoucher // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoucherModelImpl implements _VoucherModel {
  _$VoucherModelImpl(
      {this.id = -1,
      this.voucherMatchingId = -1,
      this.name = "",
      this.classStatus = "",
      this.totalNumberOfTime = 0,
      this.leftNumberOfTime = 0,
      this.reservationCount = 0,
      this.expiredDate = "",
      this.voucherColor = "",
      this.voucherTakeTime = -1,
      this.voucherType = "",
      this.voucherRegistrationType = "",
      this.voucherFeePerSession = 0,
      this.voucherSalesPrice = 0,
      final List<UserInfoModel> groupParticipants = const [],
      this.isGroupVoucher = false})
      : _groupParticipants = groupParticipants;

  factory _$VoucherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int voucherMatchingId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String classStatus;
  @override
  @JsonKey()
  final int totalNumberOfTime;
  @override
  @JsonKey()
  final int leftNumberOfTime;
  @override
  @JsonKey()
  final int reservationCount;
  @override
  @JsonKey()
  final String expiredDate;
  @override
  @JsonKey()
  final String voucherColor;
  @override
  @JsonKey()
  final int voucherTakeTime;
  @override
  @JsonKey()
  final String voucherType;
  @override
  @JsonKey()
  final String voucherRegistrationType;
  @override
  @JsonKey()
  final int voucherFeePerSession;
  @override
  @JsonKey()
  final int voucherSalesPrice;
  final List<UserInfoModel> _groupParticipants;
  @override
  @JsonKey()
  List<UserInfoModel> get groupParticipants {
    if (_groupParticipants is EqualUnmodifiableListView)
      return _groupParticipants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupParticipants);
  }

  @override
  @JsonKey()
  final bool isGroupVoucher;

  @override
  String toString() {
    return 'VoucherModel(id: $id, voucherMatchingId: $voucherMatchingId, name: $name, classStatus: $classStatus, totalNumberOfTime: $totalNumberOfTime, leftNumberOfTime: $leftNumberOfTime, reservationCount: $reservationCount, expiredDate: $expiredDate, voucherColor: $voucherColor, voucherTakeTime: $voucherTakeTime, voucherType: $voucherType, voucherRegistrationType: $voucherRegistrationType, voucherFeePerSession: $voucherFeePerSession, voucherSalesPrice: $voucherSalesPrice, groupParticipants: $groupParticipants, isGroupVoucher: $isGroupVoucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.voucherMatchingId, voucherMatchingId) ||
                other.voucherMatchingId == voucherMatchingId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classStatus, classStatus) ||
                other.classStatus == classStatus) &&
            (identical(other.totalNumberOfTime, totalNumberOfTime) ||
                other.totalNumberOfTime == totalNumberOfTime) &&
            (identical(other.leftNumberOfTime, leftNumberOfTime) ||
                other.leftNumberOfTime == leftNumberOfTime) &&
            (identical(other.reservationCount, reservationCount) ||
                other.reservationCount == reservationCount) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate) &&
            (identical(other.voucherColor, voucherColor) ||
                other.voucherColor == voucherColor) &&
            (identical(other.voucherTakeTime, voucherTakeTime) ||
                other.voucherTakeTime == voucherTakeTime) &&
            (identical(other.voucherType, voucherType) ||
                other.voucherType == voucherType) &&
            (identical(
                    other.voucherRegistrationType, voucherRegistrationType) ||
                other.voucherRegistrationType == voucherRegistrationType) &&
            (identical(other.voucherFeePerSession, voucherFeePerSession) ||
                other.voucherFeePerSession == voucherFeePerSession) &&
            (identical(other.voucherSalesPrice, voucherSalesPrice) ||
                other.voucherSalesPrice == voucherSalesPrice) &&
            const DeepCollectionEquality()
                .equals(other._groupParticipants, _groupParticipants) &&
            (identical(other.isGroupVoucher, isGroupVoucher) ||
                other.isGroupVoucher == isGroupVoucher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      voucherMatchingId,
      name,
      classStatus,
      totalNumberOfTime,
      leftNumberOfTime,
      reservationCount,
      expiredDate,
      voucherColor,
      voucherTakeTime,
      voucherType,
      voucherRegistrationType,
      voucherFeePerSession,
      voucherSalesPrice,
      const DeepCollectionEquality().hash(_groupParticipants),
      isGroupVoucher);

  /// Create a copy of VoucherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherModelImplCopyWith<_$VoucherModelImpl> get copyWith =>
      __$$VoucherModelImplCopyWithImpl<_$VoucherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherModelImplToJson(
      this,
    );
  }
}

abstract class _VoucherModel implements VoucherModel {
  factory _VoucherModel(
      {final int id,
      final int voucherMatchingId,
      final String name,
      final String classStatus,
      final int totalNumberOfTime,
      final int leftNumberOfTime,
      final int reservationCount,
      final String expiredDate,
      final String voucherColor,
      final int voucherTakeTime,
      final String voucherType,
      final String voucherRegistrationType,
      final int voucherFeePerSession,
      final int voucherSalesPrice,
      final List<UserInfoModel> groupParticipants,
      final bool isGroupVoucher}) = _$VoucherModelImpl;

  factory _VoucherModel.fromJson(Map<String, dynamic> json) =
      _$VoucherModelImpl.fromJson;

  @override
  int get id;
  @override
  int get voucherMatchingId;
  @override
  String get name;
  @override
  String get classStatus;
  @override
  int get totalNumberOfTime;
  @override
  int get leftNumberOfTime;
  @override
  int get reservationCount;
  @override
  String get expiredDate;
  @override
  String get voucherColor;
  @override
  int get voucherTakeTime;
  @override
  String get voucherType;
  @override
  String get voucherRegistrationType;
  @override
  int get voucherFeePerSession;
  @override
  int get voucherSalesPrice;
  @override
  List<UserInfoModel> get groupParticipants;
  @override
  bool get isGroupVoucher;

  /// Create a copy of VoucherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherModelImplCopyWith<_$VoucherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
