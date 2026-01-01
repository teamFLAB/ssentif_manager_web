// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_repurchase_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyRepurchaseCountModel _$MonthlyRepurchaseCountModelFromJson(
    Map<String, dynamic> json) {
  return _MonthlyRepurchaseCountModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyRepurchaseCountModel {
  String get date => throw _privateConstructorUsedError;
  int get repurchaseCount => throw _privateConstructorUsedError;

  /// Serializes this MonthlyRepurchaseCountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyRepurchaseCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyRepurchaseCountModelCopyWith<MonthlyRepurchaseCountModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyRepurchaseCountModelCopyWith<$Res> {
  factory $MonthlyRepurchaseCountModelCopyWith(
          MonthlyRepurchaseCountModel value,
          $Res Function(MonthlyRepurchaseCountModel) then) =
      _$MonthlyRepurchaseCountModelCopyWithImpl<$Res,
          MonthlyRepurchaseCountModel>;
  @useResult
  $Res call({String date, int repurchaseCount});
}

/// @nodoc
class _$MonthlyRepurchaseCountModelCopyWithImpl<$Res,
        $Val extends MonthlyRepurchaseCountModel>
    implements $MonthlyRepurchaseCountModelCopyWith<$Res> {
  _$MonthlyRepurchaseCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyRepurchaseCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? repurchaseCount = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      repurchaseCount: null == repurchaseCount
          ? _value.repurchaseCount
          : repurchaseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyRepurchaseCountModelImplCopyWith<$Res>
    implements $MonthlyRepurchaseCountModelCopyWith<$Res> {
  factory _$$MonthlyRepurchaseCountModelImplCopyWith(
          _$MonthlyRepurchaseCountModelImpl value,
          $Res Function(_$MonthlyRepurchaseCountModelImpl) then) =
      __$$MonthlyRepurchaseCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int repurchaseCount});
}

/// @nodoc
class __$$MonthlyRepurchaseCountModelImplCopyWithImpl<$Res>
    extends _$MonthlyRepurchaseCountModelCopyWithImpl<$Res,
        _$MonthlyRepurchaseCountModelImpl>
    implements _$$MonthlyRepurchaseCountModelImplCopyWith<$Res> {
  __$$MonthlyRepurchaseCountModelImplCopyWithImpl(
      _$MonthlyRepurchaseCountModelImpl _value,
      $Res Function(_$MonthlyRepurchaseCountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyRepurchaseCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? repurchaseCount = null,
  }) {
    return _then(_$MonthlyRepurchaseCountModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      repurchaseCount: null == repurchaseCount
          ? _value.repurchaseCount
          : repurchaseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyRepurchaseCountModelImpl
    implements _MonthlyRepurchaseCountModel {
  _$MonthlyRepurchaseCountModelImpl(
      {required this.date, required this.repurchaseCount});

  factory _$MonthlyRepurchaseCountModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MonthlyRepurchaseCountModelImplFromJson(json);

  @override
  final String date;
  @override
  final int repurchaseCount;

  @override
  String toString() {
    return 'MonthlyRepurchaseCountModel(date: $date, repurchaseCount: $repurchaseCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyRepurchaseCountModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.repurchaseCount, repurchaseCount) ||
                other.repurchaseCount == repurchaseCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, repurchaseCount);

  /// Create a copy of MonthlyRepurchaseCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyRepurchaseCountModelImplCopyWith<_$MonthlyRepurchaseCountModelImpl>
      get copyWith => __$$MonthlyRepurchaseCountModelImplCopyWithImpl<
          _$MonthlyRepurchaseCountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyRepurchaseCountModelImplToJson(
      this,
    );
  }
}

abstract class _MonthlyRepurchaseCountModel
    implements MonthlyRepurchaseCountModel {
  factory _MonthlyRepurchaseCountModel(
      {required final String date,
      required final int repurchaseCount}) = _$MonthlyRepurchaseCountModelImpl;

  factory _MonthlyRepurchaseCountModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyRepurchaseCountModelImpl.fromJson;

  @override
  String get date;
  @override
  int get repurchaseCount;

  /// Create a copy of MonthlyRepurchaseCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyRepurchaseCountModelImplCopyWith<_$MonthlyRepurchaseCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
