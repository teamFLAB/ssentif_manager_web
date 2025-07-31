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
  WorkoutType? get workoutType => throw _privateConstructorUsedError;
  int get routineNumberOfExercise => throw _privateConstructorUsedError;
  List<ExercisePart> get exercisePartsList =>
      throw _privateConstructorUsedError;
  String get exerciseComment => throw _privateConstructorUsedError;
  String get classStartDate => throw _privateConstructorUsedError;
  List<RecordedExerciseEntity> get exercises =>
      throw _privateConstructorUsedError;
  int get daysAgo => throw _privateConstructorUsedError;
  String get feedBack => throw _privateConstructorUsedError;

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
      WorkoutType? workoutType,
      int routineNumberOfExercise,
      List<ExercisePart> exercisePartsList,
      String exerciseComment,
      String classStartDate,
      List<RecordedExerciseEntity> exercises,
      int daysAgo,
      String feedBack});
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
    Object? workoutType = freezed,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseComment = null,
    Object? classStartDate = null,
    Object? exercises = null,
    Object? daysAgo = null,
    Object? feedBack = null,
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
      workoutType: freezed == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutType?,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value.exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<ExercisePart>,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<RecordedExerciseEntity>,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      WorkoutType? workoutType,
      int routineNumberOfExercise,
      List<ExercisePart> exercisePartsList,
      String exerciseComment,
      String classStartDate,
      List<RecordedExerciseEntity> exercises,
      int daysAgo,
      String feedBack});
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
    Object? workoutType = freezed,
    Object? routineNumberOfExercise = null,
    Object? exercisePartsList = null,
    Object? exerciseComment = null,
    Object? classStartDate = null,
    Object? exercises = null,
    Object? daysAgo = null,
    Object? feedBack = null,
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
      workoutType: freezed == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutType?,
      routineNumberOfExercise: null == routineNumberOfExercise
          ? _value.routineNumberOfExercise
          : routineNumberOfExercise // ignore: cast_nullable_to_non_nullable
              as int,
      exercisePartsList: null == exercisePartsList
          ? _value._exercisePartsList
          : exercisePartsList // ignore: cast_nullable_to_non_nullable
              as List<ExercisePart>,
      exerciseComment: null == exerciseComment
          ? _value.exerciseComment
          : exerciseComment // ignore: cast_nullable_to_non_nullable
              as String,
      classStartDate: null == classStartDate
          ? _value.classStartDate
          : classStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<RecordedExerciseEntity>,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
      feedBack: null == feedBack
          ? _value.feedBack
          : feedBack // ignore: cast_nullable_to_non_nullable
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
      this.workoutType,
      this.routineNumberOfExercise = 0,
      final List<ExercisePart> exercisePartsList = const [],
      this.exerciseComment = "",
      this.classStartDate = "",
      final List<RecordedExerciseEntity> exercises = const [],
      this.daysAgo = 0,
      this.feedBack = ""})
      : _exercisePartsList = exercisePartsList,
        _exercises = exercises;

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
  final WorkoutType? workoutType;
  @override
  @JsonKey()
  final int routineNumberOfExercise;
  final List<ExercisePart> _exercisePartsList;
  @override
  @JsonKey()
  List<ExercisePart> get exercisePartsList {
    if (_exercisePartsList is EqualUnmodifiableListView)
      return _exercisePartsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisePartsList);
  }

  @override
  @JsonKey()
  final String exerciseComment;
  @override
  @JsonKey()
  final String classStartDate;
  final List<RecordedExerciseEntity> _exercises;
  @override
  @JsonKey()
  List<RecordedExerciseEntity> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @JsonKey()
  final int daysAgo;
  @override
  @JsonKey()
  final String feedBack;

  @override
  String toString() {
    return 'RoutineHistoryEntity(routineId: $routineId, routineName: $routineName, clientMemo: $clientMemo, workoutType: $workoutType, routineNumberOfExercise: $routineNumberOfExercise, exercisePartsList: $exercisePartsList, exerciseComment: $exerciseComment, classStartDate: $classStartDate, exercises: $exercises, daysAgo: $daysAgo, feedBack: $feedBack)';
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
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType) &&
            (identical(
                    other.routineNumberOfExercise, routineNumberOfExercise) ||
                other.routineNumberOfExercise == routineNumberOfExercise) &&
            const DeepCollectionEquality()
                .equals(other._exercisePartsList, _exercisePartsList) &&
            (identical(other.exerciseComment, exerciseComment) ||
                other.exerciseComment == exerciseComment) &&
            (identical(other.classStartDate, classStartDate) ||
                other.classStartDate == classStartDate) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.daysAgo, daysAgo) || other.daysAgo == daysAgo) &&
            (identical(other.feedBack, feedBack) ||
                other.feedBack == feedBack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      routineId,
      routineName,
      clientMemo,
      workoutType,
      routineNumberOfExercise,
      const DeepCollectionEquality().hash(_exercisePartsList),
      exerciseComment,
      classStartDate,
      const DeepCollectionEquality().hash(_exercises),
      daysAgo,
      feedBack);

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
      final WorkoutType? workoutType,
      final int routineNumberOfExercise,
      final List<ExercisePart> exercisePartsList,
      final String exerciseComment,
      final String classStartDate,
      final List<RecordedExerciseEntity> exercises,
      final int daysAgo,
      final String feedBack}) = _$RoutineHistoryEntityImpl;

  @override
  int get routineId;
  @override
  String get routineName;
  @override
  String get clientMemo;
  @override
  WorkoutType? get workoutType;
  @override
  int get routineNumberOfExercise;
  @override
  List<ExercisePart> get exercisePartsList;
  @override
  String get exerciseComment;
  @override
  String get classStartDate;
  @override
  List<RecordedExerciseEntity> get exercises;
  @override
  int get daysAgo;
  @override
  String get feedBack;

  /// Create a copy of RoutineHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoryEntityImplCopyWith<_$RoutineHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutineHistoriesWithPageInfo {
  List<RoutineHistoryEntity> get routines => throw _privateConstructorUsedError;
  int? get lastRoutineId => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoriesWithPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoriesWithPageInfoCopyWith<RoutineHistoriesWithPageInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoriesWithPageInfoCopyWith<$Res> {
  factory $RoutineHistoriesWithPageInfoCopyWith(
          RoutineHistoriesWithPageInfo value,
          $Res Function(RoutineHistoriesWithPageInfo) then) =
      _$RoutineHistoriesWithPageInfoCopyWithImpl<$Res,
          RoutineHistoriesWithPageInfo>;
  @useResult
  $Res call(
      {List<RoutineHistoryEntity> routines,
      int? lastRoutineId,
      bool hasNextPage});
}

/// @nodoc
class _$RoutineHistoriesWithPageInfoCopyWithImpl<$Res,
        $Val extends RoutineHistoriesWithPageInfo>
    implements $RoutineHistoriesWithPageInfoCopyWith<$Res> {
  _$RoutineHistoriesWithPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoriesWithPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routines = null,
    Object? lastRoutineId = freezed,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      routines: null == routines
          ? _value.routines
          : routines // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryEntity>,
      lastRoutineId: freezed == lastRoutineId
          ? _value.lastRoutineId
          : lastRoutineId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineHistoriesWithPageInfoImplCopyWith<$Res>
    implements $RoutineHistoriesWithPageInfoCopyWith<$Res> {
  factory _$$RoutineHistoriesWithPageInfoImplCopyWith(
          _$RoutineHistoriesWithPageInfoImpl value,
          $Res Function(_$RoutineHistoriesWithPageInfoImpl) then) =
      __$$RoutineHistoriesWithPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoutineHistoryEntity> routines,
      int? lastRoutineId,
      bool hasNextPage});
}

/// @nodoc
class __$$RoutineHistoriesWithPageInfoImplCopyWithImpl<$Res>
    extends _$RoutineHistoriesWithPageInfoCopyWithImpl<$Res,
        _$RoutineHistoriesWithPageInfoImpl>
    implements _$$RoutineHistoriesWithPageInfoImplCopyWith<$Res> {
  __$$RoutineHistoriesWithPageInfoImplCopyWithImpl(
      _$RoutineHistoriesWithPageInfoImpl _value,
      $Res Function(_$RoutineHistoriesWithPageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoriesWithPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routines = null,
    Object? lastRoutineId = freezed,
    Object? hasNextPage = null,
  }) {
    return _then(_$RoutineHistoriesWithPageInfoImpl(
      routines: null == routines
          ? _value._routines
          : routines // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryEntity>,
      lastRoutineId: freezed == lastRoutineId
          ? _value.lastRoutineId
          : lastRoutineId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoutineHistoriesWithPageInfoImpl
    implements _RoutineHistoriesWithPageInfo {
  const _$RoutineHistoriesWithPageInfoImpl(
      {final List<RoutineHistoryEntity> routines = const [],
      this.lastRoutineId,
      this.hasNextPage = false})
      : _routines = routines;

  final List<RoutineHistoryEntity> _routines;
  @override
  @JsonKey()
  List<RoutineHistoryEntity> get routines {
    if (_routines is EqualUnmodifiableListView) return _routines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routines);
  }

  @override
  final int? lastRoutineId;
  @override
  @JsonKey()
  final bool hasNextPage;

  @override
  String toString() {
    return 'RoutineHistoriesWithPageInfo(routines: $routines, lastRoutineId: $lastRoutineId, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoriesWithPageInfoImpl &&
            const DeepCollectionEquality().equals(other._routines, _routines) &&
            (identical(other.lastRoutineId, lastRoutineId) ||
                other.lastRoutineId == lastRoutineId) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routines),
      lastRoutineId,
      hasNextPage);

  /// Create a copy of RoutineHistoriesWithPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoriesWithPageInfoImplCopyWith<
          _$RoutineHistoriesWithPageInfoImpl>
      get copyWith => __$$RoutineHistoriesWithPageInfoImplCopyWithImpl<
          _$RoutineHistoriesWithPageInfoImpl>(this, _$identity);
}

abstract class _RoutineHistoriesWithPageInfo
    implements RoutineHistoriesWithPageInfo {
  const factory _RoutineHistoriesWithPageInfo(
      {final List<RoutineHistoryEntity> routines,
      final int? lastRoutineId,
      final bool hasNextPage}) = _$RoutineHistoriesWithPageInfoImpl;

  @override
  List<RoutineHistoryEntity> get routines;
  @override
  int? get lastRoutineId;
  @override
  bool get hasNextPage;

  /// Create a copy of RoutineHistoriesWithPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoriesWithPageInfoImplCopyWith<
          _$RoutineHistoriesWithPageInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
