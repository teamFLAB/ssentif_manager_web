// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorded_exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordedExerciseEntity _$RecordedExerciseEntityFromJson(
    Map<String, dynamic> json) {
  return _RecordedExerciseEntity.fromJson(json);
}

/// @nodoc
mixin _$RecordedExerciseEntity {
  int? get routinesExerciseId => throw _privateConstructorUsedError;
  ExerciseEntity? get exerciseInfo => throw _privateConstructorUsedError;
  String get clientMemo => throw _privateConstructorUsedError;
  String get exerciseMemo => throw _privateConstructorUsedError;
  List<SetInfoEntity> get setInfo => throw _privateConstructorUsedError;
  List<MediaFileEntity> get exerciseImages =>
      throw _privateConstructorUsedError;

  /// Serializes this RecordedExerciseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordedExerciseEntityCopyWith<RecordedExerciseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedExerciseEntityCopyWith<$Res> {
  factory $RecordedExerciseEntityCopyWith(RecordedExerciseEntity value,
          $Res Function(RecordedExerciseEntity) then) =
      _$RecordedExerciseEntityCopyWithImpl<$Res, RecordedExerciseEntity>;
  @useResult
  $Res call(
      {int? routinesExerciseId,
      ExerciseEntity? exerciseInfo,
      String clientMemo,
      String exerciseMemo,
      List<SetInfoEntity> setInfo,
      List<MediaFileEntity> exerciseImages});

  $ExerciseEntityCopyWith<$Res>? get exerciseInfo;
}

/// @nodoc
class _$RecordedExerciseEntityCopyWithImpl<$Res,
        $Val extends RecordedExerciseEntity>
    implements $RecordedExerciseEntityCopyWith<$Res> {
  _$RecordedExerciseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = freezed,
    Object? exerciseInfo = freezed,
    Object? clientMemo = null,
    Object? exerciseMemo = null,
    Object? setInfo = null,
    Object? exerciseImages = null,
  }) {
    return _then(_value.copyWith(
      routinesExerciseId: freezed == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int?,
      exerciseInfo: freezed == exerciseInfo
          ? _value.exerciseInfo
          : exerciseInfo // ignore: cast_nullable_to_non_nullable
              as ExerciseEntity?,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseMemo: null == exerciseMemo
          ? _value.exerciseMemo
          : exerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
      setInfo: null == setInfo
          ? _value.setInfo
          : setInfo // ignore: cast_nullable_to_non_nullable
              as List<SetInfoEntity>,
      exerciseImages: null == exerciseImages
          ? _value.exerciseImages
          : exerciseImages // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
    ) as $Val);
  }

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseEntityCopyWith<$Res>? get exerciseInfo {
    if (_value.exerciseInfo == null) {
      return null;
    }

    return $ExerciseEntityCopyWith<$Res>(_value.exerciseInfo!, (value) {
      return _then(_value.copyWith(exerciseInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordedExerciseEntityImplCopyWith<$Res>
    implements $RecordedExerciseEntityCopyWith<$Res> {
  factory _$$RecordedExerciseEntityImplCopyWith(
          _$RecordedExerciseEntityImpl value,
          $Res Function(_$RecordedExerciseEntityImpl) then) =
      __$$RecordedExerciseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? routinesExerciseId,
      ExerciseEntity? exerciseInfo,
      String clientMemo,
      String exerciseMemo,
      List<SetInfoEntity> setInfo,
      List<MediaFileEntity> exerciseImages});

  @override
  $ExerciseEntityCopyWith<$Res>? get exerciseInfo;
}

/// @nodoc
class __$$RecordedExerciseEntityImplCopyWithImpl<$Res>
    extends _$RecordedExerciseEntityCopyWithImpl<$Res,
        _$RecordedExerciseEntityImpl>
    implements _$$RecordedExerciseEntityImplCopyWith<$Res> {
  __$$RecordedExerciseEntityImplCopyWithImpl(
      _$RecordedExerciseEntityImpl _value,
      $Res Function(_$RecordedExerciseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = freezed,
    Object? exerciseInfo = freezed,
    Object? clientMemo = null,
    Object? exerciseMemo = null,
    Object? setInfo = null,
    Object? exerciseImages = null,
  }) {
    return _then(_$RecordedExerciseEntityImpl(
      routinesExerciseId: freezed == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int?,
      exerciseInfo: freezed == exerciseInfo
          ? _value.exerciseInfo
          : exerciseInfo // ignore: cast_nullable_to_non_nullable
              as ExerciseEntity?,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseMemo: null == exerciseMemo
          ? _value.exerciseMemo
          : exerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
      setInfo: null == setInfo
          ? _value._setInfo
          : setInfo // ignore: cast_nullable_to_non_nullable
              as List<SetInfoEntity>,
      exerciseImages: null == exerciseImages
          ? _value._exerciseImages
          : exerciseImages // ignore: cast_nullable_to_non_nullable
              as List<MediaFileEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordedExerciseEntityImpl implements _RecordedExerciseEntity {
  _$RecordedExerciseEntityImpl(
      {this.routinesExerciseId,
      this.exerciseInfo,
      this.clientMemo = "",
      this.exerciseMemo = "",
      final List<SetInfoEntity> setInfo = const [],
      final List<MediaFileEntity> exerciseImages = const []})
      : _setInfo = setInfo,
        _exerciseImages = exerciseImages;

  factory _$RecordedExerciseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordedExerciseEntityImplFromJson(json);

  @override
  final int? routinesExerciseId;
  @override
  final ExerciseEntity? exerciseInfo;
  @override
  @JsonKey()
  final String clientMemo;
  @override
  @JsonKey()
  final String exerciseMemo;
  final List<SetInfoEntity> _setInfo;
  @override
  @JsonKey()
  List<SetInfoEntity> get setInfo {
    if (_setInfo is EqualUnmodifiableListView) return _setInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setInfo);
  }

  final List<MediaFileEntity> _exerciseImages;
  @override
  @JsonKey()
  List<MediaFileEntity> get exerciseImages {
    if (_exerciseImages is EqualUnmodifiableListView) return _exerciseImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseImages);
  }

  @override
  String toString() {
    return 'RecordedExerciseEntity(routinesExerciseId: $routinesExerciseId, exerciseInfo: $exerciseInfo, clientMemo: $clientMemo, exerciseMemo: $exerciseMemo, setInfo: $setInfo, exerciseImages: $exerciseImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordedExerciseEntityImpl &&
            (identical(other.routinesExerciseId, routinesExerciseId) ||
                other.routinesExerciseId == routinesExerciseId) &&
            (identical(other.exerciseInfo, exerciseInfo) ||
                other.exerciseInfo == exerciseInfo) &&
            (identical(other.clientMemo, clientMemo) ||
                other.clientMemo == clientMemo) &&
            (identical(other.exerciseMemo, exerciseMemo) ||
                other.exerciseMemo == exerciseMemo) &&
            const DeepCollectionEquality().equals(other._setInfo, _setInfo) &&
            const DeepCollectionEquality()
                .equals(other._exerciseImages, _exerciseImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      routinesExerciseId,
      exerciseInfo,
      clientMemo,
      exerciseMemo,
      const DeepCollectionEquality().hash(_setInfo),
      const DeepCollectionEquality().hash(_exerciseImages));

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordedExerciseEntityImplCopyWith<_$RecordedExerciseEntityImpl>
      get copyWith => __$$RecordedExerciseEntityImplCopyWithImpl<
          _$RecordedExerciseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordedExerciseEntityImplToJson(
      this,
    );
  }
}

abstract class _RecordedExerciseEntity implements RecordedExerciseEntity {
  factory _RecordedExerciseEntity(
          {final int? routinesExerciseId,
          final ExerciseEntity? exerciseInfo,
          final String clientMemo,
          final String exerciseMemo,
          final List<SetInfoEntity> setInfo,
          final List<MediaFileEntity> exerciseImages}) =
      _$RecordedExerciseEntityImpl;

  factory _RecordedExerciseEntity.fromJson(Map<String, dynamic> json) =
      _$RecordedExerciseEntityImpl.fromJson;

  @override
  int? get routinesExerciseId;
  @override
  ExerciseEntity? get exerciseInfo;
  @override
  String get clientMemo;
  @override
  String get exerciseMemo;
  @override
  List<SetInfoEntity> get setInfo;
  @override
  List<MediaFileEntity> get exerciseImages;

  /// Create a copy of RecordedExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordedExerciseEntityImplCopyWith<_$RecordedExerciseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
