// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_histories_with_page_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoutineHistoriesWithPageInfoEntity {
  List<RoutineHistoryEntity> get classInfoDetailOfDateList =>
      throw _privateConstructorUsedError;
  int? get lastScheduleId => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  /// Create a copy of RoutineHistoriesWithPageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineHistoriesWithPageInfoEntityCopyWith<
          RoutineHistoriesWithPageInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineHistoriesWithPageInfoEntityCopyWith<$Res> {
  factory $RoutineHistoriesWithPageInfoEntityCopyWith(
          RoutineHistoriesWithPageInfoEntity value,
          $Res Function(RoutineHistoriesWithPageInfoEntity) then) =
      _$RoutineHistoriesWithPageInfoEntityCopyWithImpl<$Res,
          RoutineHistoriesWithPageInfoEntity>;
  @useResult
  $Res call(
      {List<RoutineHistoryEntity> classInfoDetailOfDateList,
      int? lastScheduleId,
      bool hasNext});
}

/// @nodoc
class _$RoutineHistoriesWithPageInfoEntityCopyWithImpl<$Res,
        $Val extends RoutineHistoriesWithPageInfoEntity>
    implements $RoutineHistoriesWithPageInfoEntityCopyWith<$Res> {
  _$RoutineHistoriesWithPageInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineHistoriesWithPageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoDetailOfDateList = null,
    Object? lastScheduleId = freezed,
    Object? hasNext = null,
  }) {
    return _then(_value.copyWith(
      classInfoDetailOfDateList: null == classInfoDetailOfDateList
          ? _value.classInfoDetailOfDateList
          : classInfoDetailOfDateList // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryEntity>,
      lastScheduleId: freezed == lastScheduleId
          ? _value.lastScheduleId
          : lastScheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineHistoriesWithPageInfoEntityImplCopyWith<$Res>
    implements $RoutineHistoriesWithPageInfoEntityCopyWith<$Res> {
  factory _$$RoutineHistoriesWithPageInfoEntityImplCopyWith(
          _$RoutineHistoriesWithPageInfoEntityImpl value,
          $Res Function(_$RoutineHistoriesWithPageInfoEntityImpl) then) =
      __$$RoutineHistoriesWithPageInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoutineHistoryEntity> classInfoDetailOfDateList,
      int? lastScheduleId,
      bool hasNext});
}

/// @nodoc
class __$$RoutineHistoriesWithPageInfoEntityImplCopyWithImpl<$Res>
    extends _$RoutineHistoriesWithPageInfoEntityCopyWithImpl<$Res,
        _$RoutineHistoriesWithPageInfoEntityImpl>
    implements _$$RoutineHistoriesWithPageInfoEntityImplCopyWith<$Res> {
  __$$RoutineHistoriesWithPageInfoEntityImplCopyWithImpl(
      _$RoutineHistoriesWithPageInfoEntityImpl _value,
      $Res Function(_$RoutineHistoriesWithPageInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineHistoriesWithPageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoDetailOfDateList = null,
    Object? lastScheduleId = freezed,
    Object? hasNext = null,
  }) {
    return _then(_$RoutineHistoriesWithPageInfoEntityImpl(
      classInfoDetailOfDateList: null == classInfoDetailOfDateList
          ? _value._classInfoDetailOfDateList
          : classInfoDetailOfDateList // ignore: cast_nullable_to_non_nullable
              as List<RoutineHistoryEntity>,
      lastScheduleId: freezed == lastScheduleId
          ? _value.lastScheduleId
          : lastScheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoutineHistoriesWithPageInfoEntityImpl
    implements _RoutineHistoriesWithPageInfoEntity {
  const _$RoutineHistoriesWithPageInfoEntityImpl(
      {final List<RoutineHistoryEntity> classInfoDetailOfDateList = const [],
      this.lastScheduleId,
      this.hasNext = false})
      : _classInfoDetailOfDateList = classInfoDetailOfDateList;

  final List<RoutineHistoryEntity> _classInfoDetailOfDateList;
  @override
  @JsonKey()
  List<RoutineHistoryEntity> get classInfoDetailOfDateList {
    if (_classInfoDetailOfDateList is EqualUnmodifiableListView)
      return _classInfoDetailOfDateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classInfoDetailOfDateList);
  }

  @override
  final int? lastScheduleId;
  @override
  @JsonKey()
  final bool hasNext;

  @override
  String toString() {
    return 'RoutineHistoriesWithPageInfoEntity(classInfoDetailOfDateList: $classInfoDetailOfDateList, lastScheduleId: $lastScheduleId, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineHistoriesWithPageInfoEntityImpl &&
            const DeepCollectionEquality().equals(
                other._classInfoDetailOfDateList, _classInfoDetailOfDateList) &&
            (identical(other.lastScheduleId, lastScheduleId) ||
                other.lastScheduleId == lastScheduleId) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classInfoDetailOfDateList),
      lastScheduleId,
      hasNext);

  /// Create a copy of RoutineHistoriesWithPageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineHistoriesWithPageInfoEntityImplCopyWith<
          _$RoutineHistoriesWithPageInfoEntityImpl>
      get copyWith => __$$RoutineHistoriesWithPageInfoEntityImplCopyWithImpl<
          _$RoutineHistoriesWithPageInfoEntityImpl>(this, _$identity);
}

abstract class _RoutineHistoriesWithPageInfoEntity
    implements RoutineHistoriesWithPageInfoEntity {
  const factory _RoutineHistoriesWithPageInfoEntity(
      {final List<RoutineHistoryEntity> classInfoDetailOfDateList,
      final int? lastScheduleId,
      final bool hasNext}) = _$RoutineHistoriesWithPageInfoEntityImpl;

  @override
  List<RoutineHistoryEntity> get classInfoDetailOfDateList;
  @override
  int? get lastScheduleId;
  @override
  bool get hasNext;

  /// Create a copy of RoutineHistoriesWithPageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineHistoriesWithPageInfoEntityImplCopyWith<
          _$RoutineHistoriesWithPageInfoEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
