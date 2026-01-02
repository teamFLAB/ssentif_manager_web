// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploaded_diet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadedDietEntity {
  int? get dietId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  FeedbackTagType get feedbackTag => throw _privateConstructorUsedError;
  List<MediaFileEntity> get pictures => throw _privateConstructorUsedError;

  /// Create a copy of UploadedDietEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadedDietEntityCopyWith<UploadedDietEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadedDietEntityCopyWith<$Res> {
  factory $UploadedDietEntityCopyWith(
          UploadedDietEntity value, $Res Function(UploadedDietEntity) then) =
      _$UploadedDietEntityCopyWithImpl<$Res, UploadedDietEntity>;
  @useResult
  $Res call(
      {int? dietId,
      String date,
      FeedbackTagType feedbackTag,
      List<MediaFileEntity> pictures});
}

/// @nodoc
class _$UploadedDietEntityCopyWithImpl<$Res, $Val extends UploadedDietEntity>
    implements $UploadedDietEntityCopyWith<$Res> {
  _$UploadedDietEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadedDietEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietId = freezed,
    Object? date = null,
    Object? feedbackTag = null,
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      dietId: freezed == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackTag: null == feedbackTag
          ? _value.feedbackTag
          : feedbackTag // ignore: cast_nullable_to_non_nullable
              as FeedbackTagType,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadedDietEntityImplCopyWith<$Res>
    implements $UploadedDietEntityCopyWith<$Res> {
  factory _$$UploadedDietEntityImplCopyWith(_$UploadedDietEntityImpl value,
          $Res Function(_$UploadedDietEntityImpl) then) =
      __$$UploadedDietEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dietId,
      String date,
      FeedbackTagType feedbackTag,
      List<MediaFileEntity> pictures});
}

/// @nodoc
class __$$UploadedDietEntityImplCopyWithImpl<$Res>
    extends _$UploadedDietEntityCopyWithImpl<$Res, _$UploadedDietEntityImpl>
    implements _$$UploadedDietEntityImplCopyWith<$Res> {
  __$$UploadedDietEntityImplCopyWithImpl(_$UploadedDietEntityImpl _value,
      $Res Function(_$UploadedDietEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadedDietEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietId = freezed,
    Object? date = null,
    Object? feedbackTag = null,
    Object? pictures = null,
  }) {
    return _then(_$UploadedDietEntityImpl(
      dietId: freezed == dietId
          ? _value.dietId
          : dietId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackTag: null == feedbackTag
          ? _value.feedbackTag
          : feedbackTag // ignore: cast_nullable_to_non_nullable
              as FeedbackTagType,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
    ));
  }
}

/// @nodoc

class _$UploadedDietEntityImpl implements _UploadedDietEntity {
  _$UploadedDietEntityImpl(
      {this.dietId,
      this.date = "",
      this.feedbackTag = FeedbackTagType.balanced,
      final List<MediaFileEntity> pictures = const []})
      : _pictures = pictures;

  @override
  final int? dietId;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final FeedbackTagType feedbackTag;
  final List<MediaFileEntity> _pictures;
  @override
  @JsonKey()
  List<MediaFileEntity> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'UploadedDietEntity(dietId: $dietId, date: $date, feedbackTag: $feedbackTag, pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadedDietEntityImpl &&
            (identical(other.dietId, dietId) || other.dietId == dietId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.feedbackTag, feedbackTag) ||
                other.feedbackTag == feedbackTag) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dietId, date, feedbackTag,
      const DeepCollectionEquality().hash(_pictures));

  /// Create a copy of UploadedDietEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedDietEntityImplCopyWith<_$UploadedDietEntityImpl> get copyWith =>
      __$$UploadedDietEntityImplCopyWithImpl<_$UploadedDietEntityImpl>(
          this, _$identity);
}

abstract class _UploadedDietEntity implements UploadedDietEntity {
  factory _UploadedDietEntity(
      {final int? dietId,
      final String date,
      final FeedbackTagType feedbackTag,
      final List<MediaFileEntity> pictures}) = _$UploadedDietEntityImpl;

  @override
  int? get dietId;
  @override
  String get date;
  @override
  FeedbackTagType get feedbackTag;
  @override
  List<MediaFileEntity> get pictures;

  /// Create a copy of UploadedDietEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadedDietEntityImplCopyWith<_$UploadedDietEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
