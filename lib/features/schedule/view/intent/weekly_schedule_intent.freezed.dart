// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_schedule_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeeklyScheduleIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyScheduleIntentCopyWith<$Res> {
  factory $WeeklyScheduleIntentCopyWith(WeeklyScheduleIntent value,
          $Res Function(WeeklyScheduleIntent) then) =
      _$WeeklyScheduleIntentCopyWithImpl<$Res, WeeklyScheduleIntent>;
}

/// @nodoc
class _$WeeklyScheduleIntentCopyWithImpl<$Res,
        $Val extends WeeklyScheduleIntent>
    implements $WeeklyScheduleIntentCopyWith<$Res> {
  _$WeeklyScheduleIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? selectedCoach});

  $UserEntityCopyWith<$Res>? get selectedCoach;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleIntentCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCoach = freezed,
  }) {
    return _then(_$InitializeImpl(
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get selectedCoach {
    if (_value.selectedCoach == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.selectedCoach!, (value) {
      return _then(_value.copyWith(selectedCoach: value));
    });
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl({required this.selectedCoach});

  @override
  final UserEntity? selectedCoach;

  @override
  String toString() {
    return 'WeeklyScheduleIntent.initialize(selectedCoach: $selectedCoach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.selectedCoach, selectedCoach) ||
                other.selectedCoach == selectedCoach));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCoach);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) {
    return initialize(selectedCoach);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) {
    return initialize?.call(selectedCoach);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(selectedCoach);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements WeeklyScheduleIntent {
  const factory _Initialize({required final UserEntity? selectedCoach}) =
      _$InitializeImpl;

  UserEntity? get selectedCoach;

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangePreviousWeekImplCopyWith<$Res> {
  factory _$$OnChangePreviousWeekImplCopyWith(_$OnChangePreviousWeekImpl value,
          $Res Function(_$OnChangePreviousWeekImpl) then) =
      __$$OnChangePreviousWeekImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnChangePreviousWeekImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleIntentCopyWithImpl<$Res, _$OnChangePreviousWeekImpl>
    implements _$$OnChangePreviousWeekImplCopyWith<$Res> {
  __$$OnChangePreviousWeekImplCopyWithImpl(_$OnChangePreviousWeekImpl _value,
      $Res Function(_$OnChangePreviousWeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnChangePreviousWeekImpl implements _OnChangePreviousWeek {
  const _$OnChangePreviousWeekImpl();

  @override
  String toString() {
    return 'WeeklyScheduleIntent.onChangePreviousWeek()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangePreviousWeekImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) {
    return onChangePreviousWeek();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) {
    return onChangePreviousWeek?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onChangePreviousWeek != null) {
      return onChangePreviousWeek();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) {
    return onChangePreviousWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) {
    return onChangePreviousWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onChangePreviousWeek != null) {
      return onChangePreviousWeek(this);
    }
    return orElse();
  }
}

abstract class _OnChangePreviousWeek implements WeeklyScheduleIntent {
  const factory _OnChangePreviousWeek() = _$OnChangePreviousWeekImpl;
}

/// @nodoc
abstract class _$$OnChangeNextWeekImplCopyWith<$Res> {
  factory _$$OnChangeNextWeekImplCopyWith(_$OnChangeNextWeekImpl value,
          $Res Function(_$OnChangeNextWeekImpl) then) =
      __$$OnChangeNextWeekImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnChangeNextWeekImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleIntentCopyWithImpl<$Res, _$OnChangeNextWeekImpl>
    implements _$$OnChangeNextWeekImplCopyWith<$Res> {
  __$$OnChangeNextWeekImplCopyWithImpl(_$OnChangeNextWeekImpl _value,
      $Res Function(_$OnChangeNextWeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnChangeNextWeekImpl implements _OnChangeNextWeek {
  const _$OnChangeNextWeekImpl();

  @override
  String toString() {
    return 'WeeklyScheduleIntent.onChangeNextWeek()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnChangeNextWeekImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) {
    return onChangeNextWeek();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) {
    return onChangeNextWeek?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onChangeNextWeek != null) {
      return onChangeNextWeek();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) {
    return onChangeNextWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) {
    return onChangeNextWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onChangeNextWeek != null) {
      return onChangeNextWeek(this);
    }
    return orElse();
  }
}

abstract class _OnChangeNextWeek implements WeeklyScheduleIntent {
  const factory _OnChangeNextWeek() = _$OnChangeNextWeekImpl;
}

/// @nodoc
abstract class _$$OnSelectDateImplCopyWith<$Res> {
  factory _$$OnSelectDateImplCopyWith(
          _$OnSelectDateImpl value, $Res Function(_$OnSelectDateImpl) then) =
      __$$OnSelectDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$OnSelectDateImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleIntentCopyWithImpl<$Res, _$OnSelectDateImpl>
    implements _$$OnSelectDateImplCopyWith<$Res> {
  __$$OnSelectDateImplCopyWithImpl(
      _$OnSelectDateImpl _value, $Res Function(_$OnSelectDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$OnSelectDateImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OnSelectDateImpl implements _OnSelectDate {
  const _$OnSelectDateImpl({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'WeeklyScheduleIntent.onSelectDate(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectDateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectDateImplCopyWith<_$OnSelectDateImpl> get copyWith =>
      __$$OnSelectDateImplCopyWithImpl<_$OnSelectDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) {
    return onSelectDate(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) {
    return onSelectDate?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onSelectDate != null) {
      return onSelectDate(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) {
    return onSelectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) {
    return onSelectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onSelectDate != null) {
      return onSelectDate(this);
    }
    return orElse();
  }
}

abstract class _OnSelectDate implements WeeklyScheduleIntent {
  const factory _OnSelectDate({required final DateTime selectedDate}) =
      _$OnSelectDateImpl;

  DateTime get selectedDate;

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSelectDateImplCopyWith<_$OnSelectDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClickScheduleItemImplCopyWith<$Res> {
  factory _$$OnClickScheduleItemImplCopyWith(_$OnClickScheduleItemImpl value,
          $Res Function(_$OnClickScheduleItemImpl) then) =
      __$$OnClickScheduleItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int scheduleId});
}

/// @nodoc
class __$$OnClickScheduleItemImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleIntentCopyWithImpl<$Res, _$OnClickScheduleItemImpl>
    implements _$$OnClickScheduleItemImplCopyWith<$Res> {
  __$$OnClickScheduleItemImplCopyWithImpl(_$OnClickScheduleItemImpl _value,
      $Res Function(_$OnClickScheduleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
  }) {
    return _then(_$OnClickScheduleItemImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnClickScheduleItemImpl implements _OnClickScheduleItem {
  const _$OnClickScheduleItemImpl({required this.scheduleId});

  @override
  final int scheduleId;

  @override
  String toString() {
    return 'WeeklyScheduleIntent.onClickScheduleItem(scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClickScheduleItemImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId);

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClickScheduleItemImplCopyWith<_$OnClickScheduleItemImpl> get copyWith =>
      __$$OnClickScheduleItemImplCopyWithImpl<_$OnClickScheduleItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? selectedCoach) initialize,
    required TResult Function() onChangePreviousWeek,
    required TResult Function() onChangeNextWeek,
    required TResult Function(DateTime selectedDate) onSelectDate,
    required TResult Function(int scheduleId) onClickScheduleItem,
  }) {
    return onClickScheduleItem(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? selectedCoach)? initialize,
    TResult? Function()? onChangePreviousWeek,
    TResult? Function()? onChangeNextWeek,
    TResult? Function(DateTime selectedDate)? onSelectDate,
    TResult? Function(int scheduleId)? onClickScheduleItem,
  }) {
    return onClickScheduleItem?.call(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? selectedCoach)? initialize,
    TResult Function()? onChangePreviousWeek,
    TResult Function()? onChangeNextWeek,
    TResult Function(DateTime selectedDate)? onSelectDate,
    TResult Function(int scheduleId)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onClickScheduleItem != null) {
      return onClickScheduleItem(scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChangePreviousWeek value) onChangePreviousWeek,
    required TResult Function(_OnChangeNextWeek value) onChangeNextWeek,
    required TResult Function(_OnSelectDate value) onSelectDate,
    required TResult Function(_OnClickScheduleItem value) onClickScheduleItem,
  }) {
    return onClickScheduleItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult? Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult? Function(_OnSelectDate value)? onSelectDate,
    TResult? Function(_OnClickScheduleItem value)? onClickScheduleItem,
  }) {
    return onClickScheduleItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChangePreviousWeek value)? onChangePreviousWeek,
    TResult Function(_OnChangeNextWeek value)? onChangeNextWeek,
    TResult Function(_OnSelectDate value)? onSelectDate,
    TResult Function(_OnClickScheduleItem value)? onClickScheduleItem,
    required TResult orElse(),
  }) {
    if (onClickScheduleItem != null) {
      return onClickScheduleItem(this);
    }
    return orElse();
  }
}

abstract class _OnClickScheduleItem implements WeeklyScheduleIntent {
  const factory _OnClickScheduleItem({required final int scheduleId}) =
      _$OnClickScheduleItemImpl;

  int get scheduleId;

  /// Create a copy of WeeklyScheduleIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnClickScheduleItemImplCopyWith<_$OnClickScheduleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
