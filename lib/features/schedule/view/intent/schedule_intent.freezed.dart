// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleIntentCopyWith<$Res> {
  factory $ScheduleIntentCopyWith(
          ScheduleIntent value, $Res Function(ScheduleIntent) then) =
      _$ScheduleIntentCopyWithImpl<$Res, ScheduleIntent>;
}

/// @nodoc
class _$ScheduleIntentCopyWithImpl<$Res, $Val extends ScheduleIntent>
    implements $ScheduleIntentCopyWith<$Res> {
  _$ScheduleIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClickScheduleItemImplCopyWith<$Res> {
  factory _$$ClickScheduleItemImplCopyWith(_$ClickScheduleItemImpl value,
          $Res Function(_$ClickScheduleItemImpl) then) =
      __$$ClickScheduleItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int scheduleId});
}

/// @nodoc
class __$$ClickScheduleItemImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$ClickScheduleItemImpl>
    implements _$$ClickScheduleItemImplCopyWith<$Res> {
  __$$ClickScheduleItemImplCopyWithImpl(_$ClickScheduleItemImpl _value,
      $Res Function(_$ClickScheduleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
  }) {
    return _then(_$ClickScheduleItemImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickScheduleItemImpl implements _ClickScheduleItem {
  const _$ClickScheduleItemImpl({required this.scheduleId});

  @override
  final int scheduleId;

  @override
  String toString() {
    return 'ScheduleIntent.clickScheduleItem(scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickScheduleItemImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickScheduleItemImplCopyWith<_$ClickScheduleItemImpl> get copyWith =>
      __$$ClickScheduleItemImplCopyWithImpl<_$ClickScheduleItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return clickScheduleItem(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return clickScheduleItem?.call(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickScheduleItem != null) {
      return clickScheduleItem(scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return clickScheduleItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return clickScheduleItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickScheduleItem != null) {
      return clickScheduleItem(this);
    }
    return orElse();
  }
}

abstract class _ClickScheduleItem implements ScheduleIntent {
  const factory _ClickScheduleItem({required final int scheduleId}) =
      _$ClickScheduleItemImpl;

  int get scheduleId;

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClickScheduleItemImplCopyWith<_$ClickScheduleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRefreshScheduleListImplCopyWith<$Res> {
  factory _$$OnRefreshScheduleListImplCopyWith(
          _$OnRefreshScheduleListImpl value,
          $Res Function(_$OnRefreshScheduleListImpl) then) =
      __$$OnRefreshScheduleListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRefreshScheduleListImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$OnRefreshScheduleListImpl>
    implements _$$OnRefreshScheduleListImplCopyWith<$Res> {
  __$$OnRefreshScheduleListImplCopyWithImpl(_$OnRefreshScheduleListImpl _value,
      $Res Function(_$OnRefreshScheduleListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshScheduleListImpl implements _OnRefreshScheduleList {
  const _$OnRefreshScheduleListImpl();

  @override
  String toString() {
    return 'ScheduleIntent.onRefreshScheduleList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRefreshScheduleListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return onRefreshScheduleList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return onRefreshScheduleList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (onRefreshScheduleList != null) {
      return onRefreshScheduleList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return onRefreshScheduleList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return onRefreshScheduleList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (onRefreshScheduleList != null) {
      return onRefreshScheduleList(this);
    }
    return orElse();
  }
}

abstract class _OnRefreshScheduleList implements ScheduleIntent {
  const factory _OnRefreshScheduleList() = _$OnRefreshScheduleListImpl;
}

/// @nodoc
abstract class _$$ClickPreviousMonthImplCopyWith<$Res> {
  factory _$$ClickPreviousMonthImplCopyWith(_$ClickPreviousMonthImpl value,
          $Res Function(_$ClickPreviousMonthImpl) then) =
      __$$ClickPreviousMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickPreviousMonthImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$ClickPreviousMonthImpl>
    implements _$$ClickPreviousMonthImplCopyWith<$Res> {
  __$$ClickPreviousMonthImplCopyWithImpl(_$ClickPreviousMonthImpl _value,
      $Res Function(_$ClickPreviousMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClickPreviousMonthImpl implements _ClickPreviousMonth {
  const _$ClickPreviousMonthImpl();

  @override
  String toString() {
    return 'ScheduleIntent.clickPreviousMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClickPreviousMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return clickPreviousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return clickPreviousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickPreviousMonth != null) {
      return clickPreviousMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return clickPreviousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return clickPreviousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickPreviousMonth != null) {
      return clickPreviousMonth(this);
    }
    return orElse();
  }
}

abstract class _ClickPreviousMonth implements ScheduleIntent {
  const factory _ClickPreviousMonth() = _$ClickPreviousMonthImpl;
}

/// @nodoc
abstract class _$$ClickNextMonthImplCopyWith<$Res> {
  factory _$$ClickNextMonthImplCopyWith(_$ClickNextMonthImpl value,
          $Res Function(_$ClickNextMonthImpl) then) =
      __$$ClickNextMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickNextMonthImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$ClickNextMonthImpl>
    implements _$$ClickNextMonthImplCopyWith<$Res> {
  __$$ClickNextMonthImplCopyWithImpl(
      _$ClickNextMonthImpl _value, $Res Function(_$ClickNextMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClickNextMonthImpl implements _ClickNextMonth {
  const _$ClickNextMonthImpl();

  @override
  String toString() {
    return 'ScheduleIntent.clickNextMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClickNextMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return clickNextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return clickNextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickNextMonth != null) {
      return clickNextMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return clickNextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return clickNextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickNextMonth != null) {
      return clickNextMonth(this);
    }
    return orElse();
  }
}

abstract class _ClickNextMonth implements ScheduleIntent {
  const factory _ClickNextMonth() = _$ClickNextMonthImpl;
}

/// @nodoc
abstract class _$$ClickTodayDateImplCopyWith<$Res> {
  factory _$$ClickTodayDateImplCopyWith(_$ClickTodayDateImpl value,
          $Res Function(_$ClickTodayDateImpl) then) =
      __$$ClickTodayDateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickTodayDateImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$ClickTodayDateImpl>
    implements _$$ClickTodayDateImplCopyWith<$Res> {
  __$$ClickTodayDateImplCopyWithImpl(
      _$ClickTodayDateImpl _value, $Res Function(_$ClickTodayDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClickTodayDateImpl implements _ClickTodayDate {
  const _$ClickTodayDateImpl();

  @override
  String toString() {
    return 'ScheduleIntent.clickTodayDate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClickTodayDateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return clickTodayDate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return clickTodayDate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickTodayDate != null) {
      return clickTodayDate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return clickTodayDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return clickTodayDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (clickTodayDate != null) {
      return clickTodayDate(this);
    }
    return orElse();
  }
}

abstract class _ClickTodayDate implements ScheduleIntent {
  const factory _ClickTodayDate() = _$ClickTodayDateImpl;
}

/// @nodoc
abstract class _$$SelectDateImplCopyWith<$Res> {
  factory _$$SelectDateImplCopyWith(
          _$SelectDateImpl value, $Res Function(_$SelectDateImpl) then) =
      __$$SelectDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SelectDateImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$SelectDateImpl>
    implements _$$SelectDateImplCopyWith<$Res> {
  __$$SelectDateImplCopyWithImpl(
      _$SelectDateImpl _value, $Res Function(_$SelectDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$SelectDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateImpl implements _SelectDate {
  const _$SelectDateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ScheduleIntent.selectDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      __$$SelectDateImplCopyWithImpl<_$SelectDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class _SelectDate implements ScheduleIntent {
  const factory _SelectDate({required final DateTime date}) = _$SelectDateImpl;

  DateTime get date;

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDateImplCopyWith<_$SelectDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchFilterImplCopyWith<$Res> {
  factory _$$UpdateSearchFilterImplCopyWith(_$UpdateSearchFilterImpl value,
          $Res Function(_$UpdateSearchFilterImpl) then) =
      __$$UpdateSearchFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$UpdateSearchFilterImplCopyWithImpl<$Res>
    extends _$ScheduleIntentCopyWithImpl<$Res, _$UpdateSearchFilterImpl>
    implements _$$UpdateSearchFilterImplCopyWith<$Res> {
  __$$UpdateSearchFilterImplCopyWithImpl(_$UpdateSearchFilterImpl _value,
      $Res Function(_$UpdateSearchFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$UpdateSearchFilterImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSearchFilterImpl implements _UpdateSearchFilter {
  const _$UpdateSearchFilterImpl({required this.filter});

  @override
  final String filter;

  @override
  String toString() {
    return 'ScheduleIntent.updateSearchFilter(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchFilterImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchFilterImplCopyWith<_$UpdateSearchFilterImpl> get copyWith =>
      __$$UpdateSearchFilterImplCopyWithImpl<_$UpdateSearchFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) clickScheduleItem,
    required TResult Function() onRefreshScheduleList,
    required TResult Function() clickPreviousMonth,
    required TResult Function() clickNextMonth,
    required TResult Function() clickTodayDate,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(String filter) updateSearchFilter,
  }) {
    return updateSearchFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? clickScheduleItem,
    TResult? Function()? onRefreshScheduleList,
    TResult? Function()? clickPreviousMonth,
    TResult? Function()? clickNextMonth,
    TResult? Function()? clickTodayDate,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(String filter)? updateSearchFilter,
  }) {
    return updateSearchFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? clickScheduleItem,
    TResult Function()? onRefreshScheduleList,
    TResult Function()? clickPreviousMonth,
    TResult Function()? clickNextMonth,
    TResult Function()? clickTodayDate,
    TResult Function(DateTime date)? selectDate,
    TResult Function(String filter)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (updateSearchFilter != null) {
      return updateSearchFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickScheduleItem value) clickScheduleItem,
    required TResult Function(_OnRefreshScheduleList value)
        onRefreshScheduleList,
    required TResult Function(_ClickPreviousMonth value) clickPreviousMonth,
    required TResult Function(_ClickNextMonth value) clickNextMonth,
    required TResult Function(_ClickTodayDate value) clickTodayDate,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_UpdateSearchFilter value) updateSearchFilter,
  }) {
    return updateSearchFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult? Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult? Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult? Function(_ClickNextMonth value)? clickNextMonth,
    TResult? Function(_ClickTodayDate value)? clickTodayDate,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_UpdateSearchFilter value)? updateSearchFilter,
  }) {
    return updateSearchFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickScheduleItem value)? clickScheduleItem,
    TResult Function(_OnRefreshScheduleList value)? onRefreshScheduleList,
    TResult Function(_ClickPreviousMonth value)? clickPreviousMonth,
    TResult Function(_ClickNextMonth value)? clickNextMonth,
    TResult Function(_ClickTodayDate value)? clickTodayDate,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_UpdateSearchFilter value)? updateSearchFilter,
    required TResult orElse(),
  }) {
    if (updateSearchFilter != null) {
      return updateSearchFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateSearchFilter implements ScheduleIntent {
  const factory _UpdateSearchFilter({required final String filter}) =
      _$UpdateSearchFilterImpl;

  String get filter;

  /// Create a copy of ScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSearchFilterImplCopyWith<_$UpdateSearchFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
