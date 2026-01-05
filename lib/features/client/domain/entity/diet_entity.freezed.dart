// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DietEntity {
  int get dietId => throw _privateConstructorUsedError;
  String get mealTakeDate => throw _privateConstructorUsedError;
  String get mealTakeTime => throw _privateConstructorUsedError;
  List<MediaFileEntity> get dietImages => throw _privateConstructorUsedError;
  MealTimeType get mealTimeType => throw _privateConstructorUsedError;
  MealType get mealType => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  bool get hasFeedback => throw _privateConstructorUsedError;
  DietFeedbackEntity? get dietFeedback => throw _privateConstructorUsedError;

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietEntityCopyWith<DietEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietEntityCopyWith<$Res> {
  factory $DietEntityCopyWith(
          DietEntity value, $Res Function(DietEntity) then) =
      _$DietEntityCopyWithImpl<$Res, DietEntity>;
  @useResult
  $Res call(
      {int dietId,
      String mealTakeDate,
      String mealTakeTime,
      List<MediaFileEntity> dietImages,
      MealTimeType mealTimeType,
      MealType mealType,
      String memo,
      bool hasFeedback,
      DietFeedbackEntity? dietFeedback});

  $DietFeedbackEntityCopyWith<$Res>? get dietFeedback;
}

/// @nodoc
class _$DietEntityCopyWithImpl<$Res, $Val extends DietEntity>
    implements $DietEntityCopyWith<$Res> {
  _$DietEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietId = null,
    Object? mealTakeDate = null,
    Object? mealTakeTime = null,
    Object? dietImages = null,
    Object? mealTimeType = null,
    Object? mealType = null,
    Object? memo = null,
    Object? hasFeedback = null,
    Object? dietFeedback = freezed,
  }) {
    return _then(_value.copyWith(
      dietId: null == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int,
      mealTakeDate: null == mealTakeDate
          ? _value.mealTakeDate
          : mealTakeDate // ignore: cast_nullable_to_non_nullable
              as String,
      mealTakeTime: null == mealTakeTime
          ? _value.mealTakeTime
          : mealTakeTime // ignore: cast_nullable_to_non_nullable
              as String,
      dietImages: null == dietImages
          ? _value.dietImages
          : dietImages // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
      mealTimeType: null == mealTimeType
          ? _value.mealTimeType
          : mealTimeType // ignore: cast_nullable_to_non_nullable
              as MealTimeType,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      hasFeedback: null == hasFeedback
          ? _value.hasFeedback
          : hasFeedback // ignore: cast_nullable_to_non_nullable
              as bool,
      dietFeedback: freezed == dietFeedback
          ? _value.dietFeedback
          : dietFeedback // ignore: cast_nullable_to_non_nullable
              as DietFeedbackEntity?,
    ) as $Val);
  }

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietFeedbackEntityCopyWith<$Res>? get dietFeedback {
    if (_value.dietFeedback == null) {
      return null;
    }

    return $DietFeedbackEntityCopyWith<$Res>(_value.dietFeedback!, (value) {
      return _then(_value.copyWith(dietFeedback: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DietEntityImplCopyWith<$Res>
    implements $DietEntityCopyWith<$Res> {
  factory _$$DietEntityImplCopyWith(
          _$DietEntityImpl value, $Res Function(_$DietEntityImpl) then) =
      __$$DietEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dietId,
      String mealTakeDate,
      String mealTakeTime,
      List<MediaFileEntity> dietImages,
      MealTimeType mealTimeType,
      MealType mealType,
      String memo,
      bool hasFeedback,
      DietFeedbackEntity? dietFeedback});

  @override
  $DietFeedbackEntityCopyWith<$Res>? get dietFeedback;
}

/// @nodoc
class __$$DietEntityImplCopyWithImpl<$Res>
    extends _$DietEntityCopyWithImpl<$Res, _$DietEntityImpl>
    implements _$$DietEntityImplCopyWith<$Res> {
  __$$DietEntityImplCopyWithImpl(
      _$DietEntityImpl _value, $Res Function(_$DietEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietId = null,
    Object? mealTakeDate = null,
    Object? mealTakeTime = null,
    Object? dietImages = null,
    Object? mealTimeType = null,
    Object? mealType = null,
    Object? memo = null,
    Object? hasFeedback = null,
    Object? dietFeedback = freezed,
  }) {
    return _then(_$DietEntityImpl(
      dietId: null == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int,
      mealTakeDate: null == mealTakeDate
          ? _value.mealTakeDate
          : mealTakeDate // ignore: cast_nullable_to_non_nullable
              as String,
      mealTakeTime: null == mealTakeTime
          ? _value.mealTakeTime
          : mealTakeTime // ignore: cast_nullable_to_non_nullable
              as String,
      dietImages: null == dietImages
          ? _value._dietImages
          : dietImages // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
      mealTimeType: null == mealTimeType
          ? _value.mealTimeType
          : mealTimeType // ignore: cast_nullable_to_non_nullable
              as MealTimeType,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      hasFeedback: null == hasFeedback
          ? _value.hasFeedback
          : hasFeedback // ignore: cast_nullable_to_non_nullable
              as bool,
      dietFeedback: freezed == dietFeedback
          ? _value.dietFeedback
          : dietFeedback // ignore: cast_nullable_to_non_nullable
              as DietFeedbackEntity?,
    ));
  }
}

/// @nodoc

class _$DietEntityImpl implements _DietEntity {
  _$DietEntityImpl(
      {this.dietId = -1,
      this.mealTakeDate = "",
      this.mealTakeTime = "",
      final List<MediaFileEntity> dietImages = const [],
      this.mealTimeType = MealTimeType.breakfast,
      this.mealType = MealType.normal,
      this.memo = "",
      this.hasFeedback = false,
      this.dietFeedback})
      : _dietImages = dietImages;

  @override
  @JsonKey()
  final int dietId;
  @override
  @JsonKey()
  final String mealTakeDate;
  @override
  @JsonKey()
  final String mealTakeTime;
  final List<MediaFileEntity> _dietImages;
  @override
  @JsonKey()
  List<MediaFileEntity> get dietImages {
    if (_dietImages is EqualUnmodifiableListView) return _dietImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietImages);
  }

  @override
  @JsonKey()
  final MealTimeType mealTimeType;
  @override
  @JsonKey()
  final MealType mealType;
  @override
  @JsonKey()
  final String memo;
  @override
  @JsonKey()
  final bool hasFeedback;
  @override
  final DietFeedbackEntity? dietFeedback;

  @override
  String toString() {
    return 'DietEntity(dietId: $dietId, mealTakeDate: $mealTakeDate, mealTakeTime: $mealTakeTime, dietImages: $dietImages, mealTimeType: $mealTimeType, mealType: $mealType, memo: $memo, hasFeedback: $hasFeedback, dietFeedback: $dietFeedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietEntityImpl &&
            (identical(other.dietId, dietId) || other.dietId == dietId) &&
            (identical(other.mealTakeDate, mealTakeDate) ||
                other.mealTakeDate == mealTakeDate) &&
            (identical(other.mealTakeTime, mealTakeTime) ||
                other.mealTakeTime == mealTakeTime) &&
            const DeepCollectionEquality()
                .equals(other._dietImages, _dietImages) &&
            (identical(other.mealTimeType, mealTimeType) ||
                other.mealTimeType == mealTimeType) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.hasFeedback, hasFeedback) ||
                other.hasFeedback == hasFeedback) &&
            (identical(other.dietFeedback, dietFeedback) ||
                other.dietFeedback == dietFeedback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dietId,
      mealTakeDate,
      mealTakeTime,
      const DeepCollectionEquality().hash(_dietImages),
      mealTimeType,
      mealType,
      memo,
      hasFeedback,
      dietFeedback);

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietEntityImplCopyWith<_$DietEntityImpl> get copyWith =>
      __$$DietEntityImplCopyWithImpl<_$DietEntityImpl>(this, _$identity);
}

abstract class _DietEntity implements DietEntity {
  factory _DietEntity(
      {final int dietId,
      final String mealTakeDate,
      final String mealTakeTime,
      final List<MediaFileEntity> dietImages,
      final MealTimeType mealTimeType,
      final MealType mealType,
      final String memo,
      final bool hasFeedback,
      final DietFeedbackEntity? dietFeedback}) = _$DietEntityImpl;

  @override
  int get dietId;
  @override
  String get mealTakeDate;
  @override
  String get mealTakeTime;
  @override
  List<MediaFileEntity> get dietImages;
  @override
  MealTimeType get mealTimeType;
  @override
  MealType get mealType;
  @override
  String get memo;
  @override
  bool get hasFeedback;
  @override
  DietFeedbackEntity? get dietFeedback;

  /// Create a copy of DietEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietEntityImplCopyWith<_$DietEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DietFeedbackEntity {
  FeedbackTagType get totalTag => throw _privateConstructorUsedError;
  List<String> get increaseTags => throw _privateConstructorUsedError;
  List<String> get decreaseTags => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  /// Create a copy of DietFeedbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietFeedbackEntityCopyWith<DietFeedbackEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietFeedbackEntityCopyWith<$Res> {
  factory $DietFeedbackEntityCopyWith(
          DietFeedbackEntity value, $Res Function(DietFeedbackEntity) then) =
      _$DietFeedbackEntityCopyWithImpl<$Res, DietFeedbackEntity>;
  @useResult
  $Res call(
      {FeedbackTagType totalTag,
      List<String> increaseTags,
      List<String> decreaseTags,
      String feedback});
}

/// @nodoc
class _$DietFeedbackEntityCopyWithImpl<$Res, $Val extends DietFeedbackEntity>
    implements $DietFeedbackEntityCopyWith<$Res> {
  _$DietFeedbackEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietFeedbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTag = null,
    Object? increaseTags = null,
    Object? decreaseTags = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      totalTag: null == totalTag
          ? _value.totalTag
          : totalTag // ignore: cast_nullable_to_non_nullable
              as FeedbackTagType,
      increaseTags: null == increaseTags
          ? _value.increaseTags
          : increaseTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      decreaseTags: null == decreaseTags
          ? _value.decreaseTags
          : decreaseTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietFeedbackEntityImplCopyWith<$Res>
    implements $DietFeedbackEntityCopyWith<$Res> {
  factory _$$DietFeedbackEntityImplCopyWith(_$DietFeedbackEntityImpl value,
          $Res Function(_$DietFeedbackEntityImpl) then) =
      __$$DietFeedbackEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedbackTagType totalTag,
      List<String> increaseTags,
      List<String> decreaseTags,
      String feedback});
}

/// @nodoc
class __$$DietFeedbackEntityImplCopyWithImpl<$Res>
    extends _$DietFeedbackEntityCopyWithImpl<$Res, _$DietFeedbackEntityImpl>
    implements _$$DietFeedbackEntityImplCopyWith<$Res> {
  __$$DietFeedbackEntityImplCopyWithImpl(_$DietFeedbackEntityImpl _value,
      $Res Function(_$DietFeedbackEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietFeedbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTag = null,
    Object? increaseTags = null,
    Object? decreaseTags = null,
    Object? feedback = null,
  }) {
    return _then(_$DietFeedbackEntityImpl(
      totalTag: null == totalTag
          ? _value.totalTag
          : totalTag // ignore: cast_nullable_to_non_nullable
              as FeedbackTagType,
      increaseTags: null == increaseTags
          ? _value._increaseTags
          : increaseTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      decreaseTags: null == decreaseTags
          ? _value._decreaseTags
          : decreaseTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DietFeedbackEntityImpl implements _DietFeedbackEntity {
  _$DietFeedbackEntityImpl(
      {this.totalTag = FeedbackTagType.none,
      final List<String> increaseTags = const [],
      final List<String> decreaseTags = const [],
      this.feedback = ""})
      : _increaseTags = increaseTags,
        _decreaseTags = decreaseTags;

  @override
  @JsonKey()
  final FeedbackTagType totalTag;
  final List<String> _increaseTags;
  @override
  @JsonKey()
  List<String> get increaseTags {
    if (_increaseTags is EqualUnmodifiableListView) return _increaseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_increaseTags);
  }

  final List<String> _decreaseTags;
  @override
  @JsonKey()
  List<String> get decreaseTags {
    if (_decreaseTags is EqualUnmodifiableListView) return _decreaseTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decreaseTags);
  }

  @override
  @JsonKey()
  final String feedback;

  @override
  String toString() {
    return 'DietFeedbackEntity(totalTag: $totalTag, increaseTags: $increaseTags, decreaseTags: $decreaseTags, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietFeedbackEntityImpl &&
            (identical(other.totalTag, totalTag) ||
                other.totalTag == totalTag) &&
            const DeepCollectionEquality()
                .equals(other._increaseTags, _increaseTags) &&
            const DeepCollectionEquality()
                .equals(other._decreaseTags, _decreaseTags) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalTag,
      const DeepCollectionEquality().hash(_increaseTags),
      const DeepCollectionEquality().hash(_decreaseTags),
      feedback);

  /// Create a copy of DietFeedbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietFeedbackEntityImplCopyWith<_$DietFeedbackEntityImpl> get copyWith =>
      __$$DietFeedbackEntityImplCopyWithImpl<_$DietFeedbackEntityImpl>(
          this, _$identity);
}

abstract class _DietFeedbackEntity implements DietFeedbackEntity {
  factory _DietFeedbackEntity(
      {final FeedbackTagType totalTag,
      final List<String> increaseTags,
      final List<String> decreaseTags,
      final String feedback}) = _$DietFeedbackEntityImpl;

  @override
  FeedbackTagType get totalTag;
  @override
  List<String> get increaseTags;
  @override
  List<String> get decreaseTags;
  @override
  String get feedback;

  /// Create a copy of DietFeedbackEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietFeedbackEntityImplCopyWith<_$DietFeedbackEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
