// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_with_schedule_reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainerWithScheduleReviewsResponse _$TrainerWithScheduleReviewsResponseFromJson(
    Map<String, dynamic> json) {
  return _TrainerWithScheduleReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$TrainerWithScheduleReviewsResponse {
  UserProfileModel get trainer => throw _privateConstructorUsedError;
  List<ScheduleReviewResponse> get scheduleReviews =>
      throw _privateConstructorUsedError;

  /// Serializes this TrainerWithScheduleReviewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainerWithScheduleReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainerWithScheduleReviewsResponseCopyWith<
          TrainerWithScheduleReviewsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerWithScheduleReviewsResponseCopyWith<$Res> {
  factory $TrainerWithScheduleReviewsResponseCopyWith(
          TrainerWithScheduleReviewsResponse value,
          $Res Function(TrainerWithScheduleReviewsResponse) then) =
      _$TrainerWithScheduleReviewsResponseCopyWithImpl<$Res,
          TrainerWithScheduleReviewsResponse>;
  @useResult
  $Res call(
      {UserProfileModel trainer, List<ScheduleReviewResponse> scheduleReviews});

  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class _$TrainerWithScheduleReviewsResponseCopyWithImpl<$Res,
        $Val extends TrainerWithScheduleReviewsResponse>
    implements $TrainerWithScheduleReviewsResponseCopyWith<$Res> {
  _$TrainerWithScheduleReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainerWithScheduleReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? scheduleReviews = null,
  }) {
    return _then(_value.copyWith(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      scheduleReviews: null == scheduleReviews
          ? _value.scheduleReviews
          : scheduleReviews // ignore: cast_nullable_to_non_nullable
              as List<ScheduleReviewResponse>,
    ) as $Val);
  }

  /// Create a copy of TrainerWithScheduleReviewsResponse
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
abstract class _$$TrainerWithScheduleReviewsResponseImplCopyWith<$Res>
    implements $TrainerWithScheduleReviewsResponseCopyWith<$Res> {
  factory _$$TrainerWithScheduleReviewsResponseImplCopyWith(
          _$TrainerWithScheduleReviewsResponseImpl value,
          $Res Function(_$TrainerWithScheduleReviewsResponseImpl) then) =
      __$$TrainerWithScheduleReviewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileModel trainer, List<ScheduleReviewResponse> scheduleReviews});

  @override
  $UserProfileModelCopyWith<$Res> get trainer;
}

/// @nodoc
class __$$TrainerWithScheduleReviewsResponseImplCopyWithImpl<$Res>
    extends _$TrainerWithScheduleReviewsResponseCopyWithImpl<$Res,
        _$TrainerWithScheduleReviewsResponseImpl>
    implements _$$TrainerWithScheduleReviewsResponseImplCopyWith<$Res> {
  __$$TrainerWithScheduleReviewsResponseImplCopyWithImpl(
      _$TrainerWithScheduleReviewsResponseImpl _value,
      $Res Function(_$TrainerWithScheduleReviewsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainerWithScheduleReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = null,
    Object? scheduleReviews = null,
  }) {
    return _then(_$TrainerWithScheduleReviewsResponseImpl(
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      scheduleReviews: null == scheduleReviews
          ? _value._scheduleReviews
          : scheduleReviews // ignore: cast_nullable_to_non_nullable
              as List<ScheduleReviewResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainerWithScheduleReviewsResponseImpl
    implements _TrainerWithScheduleReviewsResponse {
  const _$TrainerWithScheduleReviewsResponseImpl(
      {required this.trainer,
      final List<ScheduleReviewResponse> scheduleReviews = const []})
      : _scheduleReviews = scheduleReviews;

  factory _$TrainerWithScheduleReviewsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrainerWithScheduleReviewsResponseImplFromJson(json);

  @override
  final UserProfileModel trainer;
  final List<ScheduleReviewResponse> _scheduleReviews;
  @override
  @JsonKey()
  List<ScheduleReviewResponse> get scheduleReviews {
    if (_scheduleReviews is EqualUnmodifiableListView) return _scheduleReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleReviews);
  }

  @override
  String toString() {
    return 'TrainerWithScheduleReviewsResponse(trainer: $trainer, scheduleReviews: $scheduleReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainerWithScheduleReviewsResponseImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            const DeepCollectionEquality()
                .equals(other._scheduleReviews, _scheduleReviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trainer,
      const DeepCollectionEquality().hash(_scheduleReviews));

  /// Create a copy of TrainerWithScheduleReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainerWithScheduleReviewsResponseImplCopyWith<
          _$TrainerWithScheduleReviewsResponseImpl>
      get copyWith => __$$TrainerWithScheduleReviewsResponseImplCopyWithImpl<
          _$TrainerWithScheduleReviewsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainerWithScheduleReviewsResponseImplToJson(
      this,
    );
  }
}

abstract class _TrainerWithScheduleReviewsResponse
    implements TrainerWithScheduleReviewsResponse {
  const factory _TrainerWithScheduleReviewsResponse(
          {required final UserProfileModel trainer,
          final List<ScheduleReviewResponse> scheduleReviews}) =
      _$TrainerWithScheduleReviewsResponseImpl;

  factory _TrainerWithScheduleReviewsResponse.fromJson(
          Map<String, dynamic> json) =
      _$TrainerWithScheduleReviewsResponseImpl.fromJson;

  @override
  UserProfileModel get trainer;
  @override
  List<ScheduleReviewResponse> get scheduleReviews;

  /// Create a copy of TrainerWithScheduleReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainerWithScheduleReviewsResponseImplCopyWith<
          _$TrainerWithScheduleReviewsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
