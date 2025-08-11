// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoutineHistoryEntity {
  int get routineId => throw _privateConstructorUsedError;
  String get routineName => throw _privateConstructorUsedError;
  String get clientMemo => throw _privateConstructorUsedError;
  int get routineNumberOfExercise => throw _privateConstructorUsedError;
  List<String> get exercisePartsList => throw _privateConstructorUsedError;
  int get exerciseIntensity => throw _privateConstructorUsedError;
  String get exerciseComment => throw _privateConstructorUsedError;
  List<RoutineHistoryExerciseEntity> get routinesExerciseDtos =>
      throw _privateConstructorUsedError;
  String get classStartDate => throw _privateConstructorUsedError;
  int get daysAgo => throw _privateConstructorUsedError;
  String get feedBack => throw _privateConstructorUsedError;
  String get routineStatus => throw _privateConstructorUsedError;
  UserEntity? get trainerInfo => throw _privateConstructorUsedError;
  UserEntity? get clientInfo => throw _privateConstructorUsedError;
  String get runningTime => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoryEntityCopyWith<RoutineHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoryEntityCopyWith<$Res> {
  factory $RoutineHistoryEntityCopyWith(RoutineHistoryEntity value,
          $Res Function(RoutineHistoryEntity) then) =
      _$RoutineHistoryEntityCopyWithImpl<$Res, RoutineHistoryEntity>;
  @useResult
  $Res call(
      {int routineId,
      String routineName,
      String clientMemo,
      int routineNumberOfExercise,
      List<String> exercisePartsList,
      int exerciseIntensity,
      String exerciseComment,
      List<RoutineHistoryExerciseEntity> routinesExerciseDtos,
      String classStartDate,
      int daysAgo,
      String feedBack,
      String routineStatus,
      UserEntity? trainerInfo,
      UserEntity? clientInfo,
      String runningTime});

  $UserEntityCopyWith<$Res>? get trainerInfo;
  $UserEntityCopyWith<$Res>? get clientInfo;
}

/// @nodoc
class _$RoutineHistoryEntityCopyWithImpl<$Res,
        $Val extends RoutineHistoryEntity>
    implements $RoutineHistoryEntityCopyWith<$Res> {
  _$RoutineHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? routineName = null,
    Object? clientMemo = null,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseIntensity = null,
    Object? exerciseComment = null,
    Object? routinesExerciseDtos = null,
    Object? classStartDate = null,
    Object? daysAgo = null,
    Object? feedBack = null,
    Object? routineStatus = null,
    Object? trainerInfo = freezed,
    Object? clientInfo = freezed,
    Object? runningTime = null,
  }) {
    return _then(_value.copyWith(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value.exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exerciseIntensity: null == exerciseIntensity
          ? _value.exerciseIntensity
          : exerciseIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      routinesExerciseDtos: null == routinesExerciseDtos
          ? _value.routinesExerciseDtos
          : routinesExerciseDtos // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryExerciseEntity>,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
              as String,
      routineStatus: null == routineStatus
          ? _value.routineStatus
          : routineStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trainerInfo: freezed == trainerInfo
          ? _value.trainerInfo
          : trainerInfo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      clientInfo: freezed == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get trainerInfo {
    if (_value.trainerInfo == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.trainerInfo!, (value) {
      return _then(_value.copyWith(trainerInfo: value) as $Val);
    });
  }

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get clientInfo {
    if (_value.clientInfo == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.clientInfo!, (value) {
      return _then(_value.copyWith(clientInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutineHistoryEntityImplCopyWith<$Res>
    implements $RoutineHistoryEntityCopyWith<$Res> {
  factory _$$RoutineHistoryEntityImplCopyWith(_$RoutineHistoryEntityImpl value,
          $Res Function(_$RoutineHistoryEntityImpl) then) =
      __$$RoutineHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int routineId,
      String routineName,
      String clientMemo,
      int routineNumberOfExercise,
      List<String> exercisePartsList,
      int exerciseIntensity,
      String exerciseComment,
      List<RoutineHistoryExerciseEntity> routinesExerciseDtos,
      String classStartDate,
      int daysAgo,
      String feedBack,
      String routineStatus,
      UserEntity? trainerInfo,
      UserEntity? clientInfo,
      String runningTime});

  @override
  $UserEntityCopyWith<$Res>? get trainerInfo;
  @override
  $UserEntityCopyWith<$Res>? get clientInfo;
}

/// @nodoc
class __$$RoutineHistoryEntityImplCopyWithImpl<$Res>
    extends _$RoutineHistoryEntityCopyWithImpl<$Res, _$RoutineHistoryEntityImpl>
    implements _$$RoutineHistoryEntityImplCopyWith<$Res> {
  __$$RoutineHistoryEntityImplCopyWithImpl(_$RoutineHistoryEntityImpl _value,
      $Res Function(_$RoutineHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? routineName = null,
    Object? clientMemo = null,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseIntensity = null,
    Object? exerciseComment = null,
    Object? routinesExerciseDtos = null,
    Object? classStartDate = null,
    Object? daysAgo = null,
    Object? feedBack = null,
    Object? routineStatus = null,
    Object? trainerInfo = freezed,
    Object? clientInfo = freezed,
    Object? runningTime = null,
  }) {
    return _then(_$RoutineHistoryEntityImpl(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      clientMemo: null == clientMemo
          ? _value.clientMemo
          : clientMemo // ignore: cast_nullable_to_non_nullable
              as String,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value._exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exerciseIntensity: null == exerciseIntensity
          ? _value.exerciseIntensity
          : exerciseIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      routinesExerciseDtos: null == routinesExerciseDtos
          ? _value._routinesExerciseDtos
          : routinesExerciseDtos // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryExerciseEntity>,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
              as String,
      routineStatus: null == routineStatus
          ? _value.routineStatus
          : routineStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trainerInfo: freezed == trainerInfo
          ? _value.trainerInfo
          : trainerInfo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      clientInfo: freezed == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      runningTime: null == runningTime
          ? _value.runningTime
          : runningTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoutineHistoryEntityImpl implements _RoutineHistoryEntity {
  const _$RoutineHistoryEntityImpl(
      {this.routineId = -1,
      this.routineName = "",
      this.clientMemo = "",
      this.routineNumberOfExercise = 0,
      final List<String> exercisePartsList = const [],
      this.exerciseIntensity = 0,
      this.exerciseComment = "",
      final List<RoutineHistoryExerciseEntity> routinesExerciseDtos = const [],
      this.classStartDate = "",
      this.daysAgo = 0,
      this.feedBack = "",
      this.routineStatus = "",
      this.trainerInfo,
      this.clientInfo,
      this.runningTime = ""})
      : _exercisePartsList = exercisePartsList,
        _routinesExerciseDtos = routinesExerciseDtos;

  @override
  @JsonKey()
  final int routineId;
  @override
  @JsonKey()
  final String routineName;
  @override
  @JsonKey()
  final String clientMemo;
  @override
  @JsonKey()
  final int routineNumberOfExercise;
  final List<String> _exercisePartsList;
  @override
  @JsonKey()
  List<String> get exercisePartsList {
    if (_exercisePartsList is EqualUnmodifiableListView)
      return _exercisePartsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisePartsList);
  }

  @override
  @JsonKey()
  final int exerciseIntensity;
  @override
  @JsonKey()
  final String exerciseComment;
  final List<RoutineHistoryExerciseEntity> _routinesExerciseDtos;
  @override
  @JsonKey()
  List<RoutineHistoryExerciseEntity> get routinesExerciseDtos {
    if (_routinesExerciseDtos is EqualUnmodifiableListView)
      return _routinesExerciseDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routinesExerciseDtos);
  }

  @override
  @JsonKey()
  final String classStartDate;
  @override
  @JsonKey()
  final int daysAgo;
  @override
  @JsonKey()
  final String feedBack;
  @override
  @JsonKey()
  final String routineStatus;
  @override
  final UserEntity? trainerInfo;
  @override
  final UserEntity? clientInfo;
  @override
  @JsonKey()
  final String runningTime;

  @override
  String toString() {
    return 'RoutineHistoryEntity(routineId: $routineId, routineName: $routineName, clientMemo: $clientMemo, routineNumberOfExercise: $routineNumberOfExercise, exercisePartsList: $exercisePartsList, exerciseIntensity: $exerciseIntensity, exerciseComment: $exerciseComment, routinesExerciseDtos: $routinesExerciseDtos, classStartDate: $classStartDate, daysAgo: $daysAgo, feedBack: $feedBack, routineStatus: $routineStatus, trainerInfo: $trainerInfo, clientInfo: $clientInfo, runningTime: $runningTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoryEntityImpl &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.clientMemo, clientMemo) ||
                other.clientMemo == clientMemo) &&
            (identical(
                    other.routineNumberOfExercise, routineNumberOfExercise) ||
                other.routineNumberOfExercise == routineNumberOfExercise) &&
            const DeepCollectionEquality()
                .equals(other._exercisePartsList, _exercisePartsList) &&
            (identical(other.exerciseIntensity, exerciseIntensity) ||
                other.exerciseIntensity == exerciseIntensity) &&
            (identical(other.exerciseComment, exerciseComment) ||
                other.exerciseComment == exerciseComment) &&
            const DeepCollectionEquality()
                .equals(other._routinesExerciseDtos, _routinesExerciseDtos) &&
            (identical(other.classStartDate, classStartDate) ||
                other.classStartDate == classStartDate) &&
            (identical(other.daysAgo, daysAgo) || other.daysAgo == daysAgo) &&
            (identical(other.feedBack, feedBack) ||
                other.feedBack == feedBack) &&
            (identical(other.routineStatus, routineStatus) ||
                other.routineStatus == routineStatus) &&
            (identical(other.trainerInfo, trainerInfo) ||
                other.trainerInfo == trainerInfo) &&
            (identical(other.clientInfo, clientInfo) ||
                other.clientInfo == clientInfo) &&
            (identical(other.runningTime, runningTime) ||
                other.runningTime == runningTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      routineId,
      routineName,
      clientMemo,
      routineNumberOfExercise,
      const DeepCollectionEquality().hash(_exercisePartsList),
      exerciseIntensity,
      exerciseComment,
      const DeepCollectionEquality().hash(_routinesExerciseDtos),
      classStartDate,
      daysAgo,
      feedBack,
      routineStatus,
      trainerInfo,
      clientInfo,
      runningTime);

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoryEntityImplCopyWith<_$RoutineHistoryEntityImpl>
      get copyWith =>
          __$$RoutineHistoryEntityImplCopyWithImpl<_$RoutineHistoryEntityImpl>(
              this, _$identity);
}

abstract class _RoutineHistoryEntity implements RoutineHistoryEntity {
  const factory _RoutineHistoryEntity(
      {final int routineId,
      final String routineName,
      final String clientMemo,
      final int routineNumberOfExercise,
      final List<String> exercisePartsList,
      final int exerciseIntensity,
      final String exerciseComment,
      final List<RoutineHistoryExerciseEntity> routinesExerciseDtos,
      final String classStartDate,
      final int daysAgo,
      final String feedBack,
      final String routineStatus,
      final UserEntity? trainerInfo,
      final UserEntity? clientInfo,
      final String runningTime}) = _$RoutineHistoryEntityImpl;

  @override
  int get routineId;
  @override
  String get routineName;
  @override
  String get clientMemo;
  @override
  int get routineNumberOfExercise;
  @override
  List<String> get exercisePartsList;
  @override
  int get exerciseIntensity;
  @override
  String get exerciseComment;
  @override
  List<RoutineHistoryExerciseEntity> get routinesExerciseDtos;
  @override
  String get classStartDate;
  @override
  int get daysAgo;
  @override
  String get feedBack;
  @override
  String get routineStatus;
  @override
  UserEntity? get trainerInfo;
  @override
  UserEntity? get clientInfo;
  @override
  String get runningTime;

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoryEntityImplCopyWith<_$RoutineHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutineHistoryExerciseEntity {
  int get routinesExerciseId => throw _privateConstructorUsedError;
  String get routinesExerciseName => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  String get exerciseType => throw _privateConstructorUsedError;
  String get exerciseParts => throw _privateConstructorUsedError;
  String get motion => throw _privateConstructorUsedError;
  String? get performMemo => throw _privateConstructorUsedError;
  List<ExerciseSetEntity> get exerciseSets =>
      throw _privateConstructorUsedError;
  List<String> get routineImagesList => throw _privateConstructorUsedError;
  List<FileUrlEntity> get routinesImagesListWithType =>
      throw _privateConstructorUsedError;
  String get routinesExerciseMemo => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoryExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoryExerciseEntityCopyWith<RoutineHistoryExerciseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoryExerciseEntityCopyWith<$Res> {
  factory $RoutineHistoryExerciseEntityCopyWith(
          RoutineHistoryExerciseEntity value,
          $Res Function(RoutineHistoryExerciseEntity) then) =
      _$RoutineHistoryExerciseEntityCopyWithImpl<$Res,
          RoutineHistoryExerciseEntity>;
  @useResult
  $Res call(
      {int routinesExerciseId,
      String routinesExerciseName,
      int exerciseId,
      String exerciseType,
      String exerciseParts,
      String motion,
      String? performMemo,
      List<ExerciseSetEntity> exerciseSets,
      List<String> routineImagesList,
      List<FileUrlEntity> routinesImagesListWithType,
      String routinesExerciseMemo});
}

/// @nodoc
class _$RoutineHistoryExerciseEntityCopyWithImpl<$Res,
        $Val extends RoutineHistoryExerciseEntity>
    implements $RoutineHistoryExerciseEntityCopyWith<$Res> {
  _$RoutineHistoryExerciseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoryExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = null,
    Object? routinesExerciseName = null,
    Object? exerciseId = null,
    Object? exerciseType = null,
    Object? exerciseParts = null,
    Object? motion = null,
    Object? performMemo = freezed,
    Object? exerciseSets = null,
    Object? routineImagesList = null,
    Object? routinesImagesListWithType = null,
    Object? routinesExerciseMemo = null,
  }) {
    return _then(_value.copyWith(
      routinesExerciseId: null == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      routinesExerciseName: null == routinesExerciseName
          ? _value.routinesExerciseName
          : routinesExerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseParts: null == exerciseParts
          ? _value.exerciseParts
          : exerciseParts // ignore: cast_nullable_to_non_nullable
              as String,
      motion: null == motion
          ? _value.motion
          : motion // ignore: cast_nullable_to_non_nullable
              as String,
      performMemo: freezed == performMemo
          ? _value.performMemo
          : performMemo // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseSets: null == exerciseSets
          ? _value.exerciseSets
          : exerciseSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetEntity>,
      routineImagesList: null == routineImagesList
          ? _value.routineImagesList
          : routineImagesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      routinesImagesListWithType: null == routinesImagesListWithType
          ? _value.routinesImagesListWithType
          : routinesImagesListWithType // ignore: cast_nullable_to_non_nullable
              as List<FileUrlEntity>,
      routinesExerciseMemo: null == routinesExerciseMemo
          ? _value.routinesExerciseMemo
          : routinesExerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineHistoryExerciseEntityImplCopyWith<$Res>
    implements $RoutineHistoryExerciseEntityCopyWith<$Res> {
  factory _$$RoutineHistoryExerciseEntityImplCopyWith(
          _$RoutineHistoryExerciseEntityImpl value,
          $Res Function(_$RoutineHistoryExerciseEntityImpl) then) =
      __$$RoutineHistoryExerciseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int routinesExerciseId,
      String routinesExerciseName,
      int exerciseId,
      String exerciseType,
      String exerciseParts,
      String motion,
      String? performMemo,
      List<ExerciseSetEntity> exerciseSets,
      List<String> routineImagesList,
      List<FileUrlEntity> routinesImagesListWithType,
      String routinesExerciseMemo});
}

/// @nodoc
class __$$RoutineHistoryExerciseEntityImplCopyWithImpl<$Res>
    extends _$RoutineHistoryExerciseEntityCopyWithImpl<$Res,
        _$RoutineHistoryExerciseEntityImpl>
    implements _$$RoutineHistoryExerciseEntityImplCopyWith<$Res> {
  __$$RoutineHistoryExerciseEntityImplCopyWithImpl(
      _$RoutineHistoryExerciseEntityImpl _value,
      $Res Function(_$RoutineHistoryExerciseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoryExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routinesExerciseId = null,
    Object? routinesExerciseName = null,
    Object? exerciseId = null,
    Object? exerciseType = null,
    Object? exerciseParts = null,
    Object? motion = null,
    Object? performMemo = freezed,
    Object? exerciseSets = null,
    Object? routineImagesList = null,
    Object? routinesImagesListWithType = null,
    Object? routinesExerciseMemo = null,
  }) {
    return _then(_$RoutineHistoryExerciseEntityImpl(
      routinesExerciseId: null == routinesExerciseId
          ? _value.routinesExerciseId
          : routinesExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      routinesExerciseName: null == routinesExerciseName
          ? _value.routinesExerciseName
          : routinesExerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseParts: null == exerciseParts
          ? _value.exerciseParts
          : exerciseParts // ignore: cast_nullable_to_non_nullable
              as String,
      motion: null == motion
          ? _value.motion
          : motion // ignore: cast_nullable_to_non_nullable
              as String,
      performMemo: freezed == performMemo
          ? _value.performMemo
          : performMemo // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseSets: null == exerciseSets
          ? _value._exerciseSets
          : exerciseSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetEntity>,
      routineImagesList: null == routineImagesList
          ? _value._routineImagesList
          : routineImagesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      routinesImagesListWithType: null == routinesImagesListWithType
          ? _value._routinesImagesListWithType
          : routinesImagesListWithType // ignore: cast_nullable_to_non_nullable
              as List<FileUrlEntity>,
      routinesExerciseMemo: null == routinesExerciseMemo
          ? _value.routinesExerciseMemo
          : routinesExerciseMemo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoutineHistoryExerciseEntityImpl
    implements _RoutineHistoryExerciseEntity {
  const _$RoutineHistoryExerciseEntityImpl(
      {this.routinesExerciseId = -1,
      this.routinesExerciseName = "",
      this.exerciseId = -1,
      this.exerciseType = "",
      this.exerciseParts = "",
      this.motion = "",
      this.performMemo = "",
      final List<ExerciseSetEntity> exerciseSets = const [],
      final List<String> routineImagesList = const [],
      final List<FileUrlEntity> routinesImagesListWithType = const [],
      this.routinesExerciseMemo = ""})
      : _exerciseSets = exerciseSets,
        _routineImagesList = routineImagesList,
        _routinesImagesListWithType = routinesImagesListWithType;

  @override
  @JsonKey()
  final int routinesExerciseId;
  @override
  @JsonKey()
  final String routinesExerciseName;
  @override
  @JsonKey()
  final int exerciseId;
  @override
  @JsonKey()
  final String exerciseType;
  @override
  @JsonKey()
  final String exerciseParts;
  @override
  @JsonKey()
  final String motion;
  @override
  @JsonKey()
  final String? performMemo;
  final List<ExerciseSetEntity> _exerciseSets;
  @override
  @JsonKey()
  List<ExerciseSetEntity> get exerciseSets {
    if (_exerciseSets is EqualUnmodifiableListView) return _exerciseSets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseSets);
  }

  final List<String> _routineImagesList;
  @override
  @JsonKey()
  List<String> get routineImagesList {
    if (_routineImagesList is EqualUnmodifiableListView)
      return _routineImagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routineImagesList);
  }

  final List<FileUrlEntity> _routinesImagesListWithType;
  @override
  @JsonKey()
  List<FileUrlEntity> get routinesImagesListWithType {
    if (_routinesImagesListWithType is EqualUnmodifiableListView)
      return _routinesImagesListWithType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routinesImagesListWithType);
  }

  @override
  @JsonKey()
  final String routinesExerciseMemo;

  @override
  String toString() {
    return 'RoutineHistoryExerciseEntity(routinesExerciseId: $routinesExerciseId, routinesExerciseName: $routinesExerciseName, exerciseId: $exerciseId, exerciseType: $exerciseType, exerciseParts: $exerciseParts, motion: $motion, performMemo: $performMemo, exerciseSets: $exerciseSets, routineImagesList: $routineImagesList, routinesImagesListWithType: $routinesImagesListWithType, routinesExerciseMemo: $routinesExerciseMemo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoryExerciseEntityImpl &&
            (identical(other.routinesExerciseId, routinesExerciseId) ||
                other.routinesExerciseId == routinesExerciseId) &&
            (identical(other.routinesExerciseName, routinesExerciseName) ||
                other.routinesExerciseName == routinesExerciseName) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.exerciseType, exerciseType) ||
                other.exerciseType == exerciseType) &&
            (identical(other.exerciseParts, exerciseParts) ||
                other.exerciseParts == exerciseParts) &&
            (identical(other.motion, motion) || other.motion == motion) &&
            (identical(other.performMemo, performMemo) ||
                other.performMemo == performMemo) &&
            const DeepCollectionEquality()
                .equals(other._exerciseSets, _exerciseSets) &&
            const DeepCollectionEquality()
                .equals(other._routineImagesList, _routineImagesList) &&
            const DeepCollectionEquality().equals(
                other._routinesImagesListWithType,
                _routinesImagesListWithType) &&
            (identical(other.routinesExerciseMemo, routinesExerciseMemo) ||
                other.routinesExerciseMemo == routinesExerciseMemo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      routinesExerciseId,
      routinesExerciseName,
      exerciseId,
      exerciseType,
      exerciseParts,
      motion,
      performMemo,
      const DeepCollectionEquality().hash(_exerciseSets),
      const DeepCollectionEquality().hash(_routineImagesList),
      const DeepCollectionEquality().hash(_routinesImagesListWithType),
      routinesExerciseMemo);

  /// Create a copy of RoutineHistoryExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoryExerciseEntityImplCopyWith<
          _$RoutineHistoryExerciseEntityImpl>
      get copyWith => __$$RoutineHistoryExerciseEntityImplCopyWithImpl<
          _$RoutineHistoryExerciseEntityImpl>(this, _$identity);
}

abstract class _RoutineHistoryExerciseEntity
    implements RoutineHistoryExerciseEntity {
  const factory _RoutineHistoryExerciseEntity(
      {final int routinesExerciseId,
      final String routinesExerciseName,
      final int exerciseId,
      final String exerciseType,
      final String exerciseParts,
      final String motion,
      final String? performMemo,
      final List<ExerciseSetEntity> exerciseSets,
      final List<String> routineImagesList,
      final List<FileUrlEntity> routinesImagesListWithType,
      final String routinesExerciseMemo}) = _$RoutineHistoryExerciseEntityImpl;

  @override
  int get routinesExerciseId;
  @override
  String get routinesExerciseName;
  @override
  int get exerciseId;
  @override
  String get exerciseType;
  @override
  String get exerciseParts;
  @override
  String get motion;
  @override
  String? get performMemo;
  @override
  List<ExerciseSetEntity> get exerciseSets;
  @override
  List<String> get routineImagesList;
  @override
  List<FileUrlEntity> get routinesImagesListWithType;
  @override
  String get routinesExerciseMemo;

  /// Create a copy of RoutineHistoryExerciseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoryExerciseEntityImplCopyWith<
          _$RoutineHistoryExerciseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExerciseSetEntity {
  int get exerciseSetId => throw _privateConstructorUsedError;
  int get setNumber => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get restTime => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseSetEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseSetEntityCopyWith<ExerciseSetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetEntityCopyWith<$Res> {
  factory $ExerciseSetEntityCopyWith(
          ExerciseSetEntity value, $Res Function(ExerciseSetEntity) then) =
      _$ExerciseSetEntityCopyWithImpl<$Res, ExerciseSetEntity>;
  @useResult
  $Res call(
      {int exerciseSetId,
      int setNumber,
      int weight,
      int reps,
      int restTime,
      String memo});
}

/// @nodoc
class _$ExerciseSetEntityCopyWithImpl<$Res, $Val extends ExerciseSetEntity>
    implements $ExerciseSetEntityCopyWith<$Res> {
  _$ExerciseSetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseSetEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseSetId = null,
    Object? setNumber = null,
    Object? weight = null,
    Object? reps = null,
    Object? restTime = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      exerciseSetId: null == exerciseSetId
          ? _value.exerciseSetId
          : exerciseSetId // ignore: cast_nullable_to_non_nullable
              as int,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetEntityImplCopyWith<$Res>
    implements $ExerciseSetEntityCopyWith<$Res> {
  factory _$$ExerciseSetEntityImplCopyWith(_$ExerciseSetEntityImpl value,
          $Res Function(_$ExerciseSetEntityImpl) then) =
      __$$ExerciseSetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exerciseSetId,
      int setNumber,
      int weight,
      int reps,
      int restTime,
      String memo});
}

/// @nodoc
class __$$ExerciseSetEntityImplCopyWithImpl<$Res>
    extends _$ExerciseSetEntityCopyWithImpl<$Res, _$ExerciseSetEntityImpl>
    implements _$$ExerciseSetEntityImplCopyWith<$Res> {
  __$$ExerciseSetEntityImplCopyWithImpl(_$ExerciseSetEntityImpl _value,
      $Res Function(_$ExerciseSetEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseSetEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseSetId = null,
    Object? setNumber = null,
    Object? weight = null,
    Object? reps = null,
    Object? restTime = null,
    Object? memo = null,
  }) {
    return _then(_$ExerciseSetEntityImpl(
      exerciseSetId: null == exerciseSetId
          ? _value.exerciseSetId
          : exerciseSetId // ignore: cast_nullable_to_non_nullable
              as int,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExerciseSetEntityImpl implements _ExerciseSetEntity {
  const _$ExerciseSetEntityImpl(
      {this.exerciseSetId = -1,
      this.setNumber = 0,
      this.weight = 0,
      this.reps = 0,
      this.restTime = 0,
      this.memo = ""});

  @override
  @JsonKey()
  final int exerciseSetId;
  @override
  @JsonKey()
  final int setNumber;
  @override
  @JsonKey()
  final int weight;
  @override
  @JsonKey()
  final int reps;
  @override
  @JsonKey()
  final int restTime;
  @override
  @JsonKey()
  final String memo;

  @override
  String toString() {
    return 'ExerciseSetEntity(exerciseSetId: $exerciseSetId, setNumber: $setNumber, weight: $weight, reps: $reps, restTime: $restTime, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetEntityImpl &&
            (identical(other.exerciseSetId, exerciseSetId) ||
                other.exerciseSetId == exerciseSetId) &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exerciseSetId, setNumber, weight, reps, restTime, memo);

  /// Create a copy of ExerciseSetEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetEntityImplCopyWith<_$ExerciseSetEntityImpl> get copyWith =>
      __$$ExerciseSetEntityImplCopyWithImpl<_$ExerciseSetEntityImpl>(
          this, _$identity);
}

abstract class _ExerciseSetEntity implements ExerciseSetEntity {
  const factory _ExerciseSetEntity(
      {final int exerciseSetId,
      final int setNumber,
      final int weight,
      final int reps,
      final int restTime,
      final String memo}) = _$ExerciseSetEntityImpl;

  @override
  int get exerciseSetId;
  @override
  int get setNumber;
  @override
  int get weight;
  @override
  int get reps;
  @override
  int get restTime;
  @override
  String get memo;

  /// Create a copy of ExerciseSetEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseSetEntityImplCopyWith<_$ExerciseSetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileUrlEntity {
  String get fileUrl => throw _privateConstructorUsedError;
  FileType get fileType => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Create a copy of FileUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileUrlEntityCopyWith<FileUrlEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUrlEntityCopyWith<$Res> {
  factory $FileUrlEntityCopyWith(
          FileUrlEntity value, $Res Function(FileUrlEntity) then) =
      _$FileUrlEntityCopyWithImpl<$Res, FileUrlEntity>;
  @useResult
  $Res call({String fileUrl, FileType fileType, String thumbnailUrl});
}

/// @nodoc
class _$FileUrlEntityCopyWithImpl<$Res, $Val extends FileUrlEntity>
    implements $FileUrlEntityCopyWith<$Res> {
  _$FileUrlEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
    Object? fileType = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileUrlEntityImplCopyWith<$Res>
    implements $FileUrlEntityCopyWith<$Res> {
  factory _$$FileUrlEntityImplCopyWith(
          _$FileUrlEntityImpl value, $Res Function(_$FileUrlEntityImpl) then) =
      __$$FileUrlEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileUrl, FileType fileType, String thumbnailUrl});
}

/// @nodoc
class __$$FileUrlEntityImplCopyWithImpl<$Res>
    extends _$FileUrlEntityCopyWithImpl<$Res, _$FileUrlEntityImpl>
    implements _$$FileUrlEntityImplCopyWith<$Res> {
  __$$FileUrlEntityImplCopyWithImpl(
      _$FileUrlEntityImpl _value, $Res Function(_$FileUrlEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
    Object? fileType = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$FileUrlEntityImpl(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileUrlEntityImpl implements _FileUrlEntity {
  const _$FileUrlEntityImpl(
      {this.fileUrl = "",
      this.fileType = FileType.image,
      this.thumbnailUrl = ""});

  @override
  @JsonKey()
  final String fileUrl;
  @override
  @JsonKey()
  final FileType fileType;
  @override
  @JsonKey()
  final String thumbnailUrl;

  @override
  String toString() {
    return 'FileUrlEntity(fileUrl: $fileUrl, fileType: $fileType, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUrlEntityImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl, fileType, thumbnailUrl);

  /// Create a copy of FileUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUrlEntityImplCopyWith<_$FileUrlEntityImpl> get copyWith =>
      __$$FileUrlEntityImplCopyWithImpl<_$FileUrlEntityImpl>(this, _$identity);
}

abstract class _FileUrlEntity implements FileUrlEntity {
  const factory _FileUrlEntity(
      {final String fileUrl,
      final FileType fileType,
      final String thumbnailUrl}) = _$FileUrlEntityImpl;

  @override
  String get fileUrl;
  @override
  FileType get fileType;
  @override
  String get thumbnailUrl;

  /// Create a copy of FileUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileUrlEntityImplCopyWith<_$FileUrlEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
