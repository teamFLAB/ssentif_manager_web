// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workplace_repurchase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkplaceRepurchaseResponse _$WorkplaceRepurchaseResponseFromJson(
    Map<String, dynamic> json) {
  return _WorkplaceRepurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$WorkplaceRepurchaseResponse {
  List<TrainerRepurchaseInfoDto> get trainers =>
      throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this WorkplaceRepurchaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkplaceRepurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkplaceRepurchaseResponseCopyWith<WorkplaceRepurchaseResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkplaceRepurchaseResponseCopyWith<$Res> {
  factory $WorkplaceRepurchaseResponseCopyWith(
          WorkplaceRepurchaseResponse value,
          $Res Function(WorkplaceRepurchaseResponse) then) =
      _$WorkplaceRepurchaseResponseCopyWithImpl<$Res,
          WorkplaceRepurchaseResponse>;
  @useResult
  $Res call({List<TrainerRepurchaseInfoDto> trainers, int totalCount});
}

/// @nodoc
class _$WorkplaceRepurchaseResponseCopyWithImpl<$Res,
        $Val extends WorkplaceRepurchaseResponse>
    implements $WorkplaceRepurchaseResponseCopyWith<$Res> {
  _$WorkplaceRepurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkplaceRepurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainers = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      trainers: null == trainers
          ? _value.trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<TrainerRepurchaseInfoDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkplaceRepurchaseResponseImplCopyWith<$Res>
    implements $WorkplaceRepurchaseResponseCopyWith<$Res> {
  factory _$$WorkplaceRepurchaseResponseImplCopyWith(
          _$WorkplaceRepurchaseResponseImpl value,
          $Res Function(_$WorkplaceRepurchaseResponseImpl) then) =
      __$$WorkplaceRepurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrainerRepurchaseInfoDto> trainers, int totalCount});
}

/// @nodoc
class __$$WorkplaceRepurchaseResponseImplCopyWithImpl<$Res>
    extends _$WorkplaceRepurchaseResponseCopyWithImpl<$Res,
        _$WorkplaceRepurchaseResponseImpl>
    implements _$$WorkplaceRepurchaseResponseImplCopyWith<$Res> {
  __$$WorkplaceRepurchaseResponseImplCopyWithImpl(
      _$WorkplaceRepurchaseResponseImpl _value,
      $Res Function(_$WorkplaceRepurchaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkplaceRepurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainers = null,
    Object? totalCount = null,
  }) {
    return _then(_$WorkplaceRepurchaseResponseImpl(
      trainers: null == trainers
          ? _value._trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<TrainerRepurchaseInfoDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkplaceRepurchaseResponseImpl
    implements _WorkplaceRepurchaseResponse {
  const _$WorkplaceRepurchaseResponseImpl(
      {final List<TrainerRepurchaseInfoDto> trainers = const [],
      this.totalCount = 0})
      : _trainers = trainers;

  factory _$WorkplaceRepurchaseResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WorkplaceRepurchaseResponseImplFromJson(json);

  final List<TrainerRepurchaseInfoDto> _trainers;
  @override
  @JsonKey()
  List<TrainerRepurchaseInfoDto> get trainers {
    if (_trainers is EqualUnmodifiableListView) return _trainers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainers);
  }

  @override
  @JsonKey()
  final int totalCount;

  @override
  String toString() {
    return 'WorkplaceRepurchaseResponse(trainers: $trainers, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkplaceRepurchaseResponseImpl &&
            const DeepCollectionEquality().equals(other._trainers, _trainers) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trainers), totalCount);

  /// Create a copy of WorkplaceRepurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkplaceRepurchaseResponseImplCopyWith<_$WorkplaceRepurchaseResponseImpl>
      get copyWith => __$$WorkplaceRepurchaseResponseImplCopyWithImpl<
          _$WorkplaceRepurchaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkplaceRepurchaseResponseImplToJson(
      this,
    );
  }
}

abstract class _WorkplaceRepurchaseResponse
    implements WorkplaceRepurchaseResponse {
  const factory _WorkplaceRepurchaseResponse(
      {final List<TrainerRepurchaseInfoDto> trainers,
      final int totalCount}) = _$WorkplaceRepurchaseResponseImpl;

  factory _WorkplaceRepurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$WorkplaceRepurchaseResponseImpl.fromJson;

  @override
  List<TrainerRepurchaseInfoDto> get trainers;
  @override
  int get totalCount;

  /// Create a copy of WorkplaceRepurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkplaceRepurchaseResponseImplCopyWith<_$WorkplaceRepurchaseResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
