// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEffectCopyWith<$Res> {
  factory $ScheduleEffectCopyWith(
          ScheduleEffect value, $Res Function(ScheduleEffect) then) =
      _$ScheduleEffectCopyWithImpl<$Res, ScheduleEffect>;
}

/// @nodoc
class _$ScheduleEffectCopyWithImpl<$Res, $Val extends ScheduleEffect>
    implements $ScheduleEffectCopyWith<$Res> {
  _$ScheduleEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateToScheduleDetailImplCopyWith<$Res> {
  factory _$$NavigateToScheduleDetailImplCopyWith(
          _$NavigateToScheduleDetailImpl value,
          $Res Function(_$NavigateToScheduleDetailImpl) then) =
      __$$NavigateToScheduleDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int scheduleId});
}

/// @nodoc
class __$$NavigateToScheduleDetailImplCopyWithImpl<$Res>
    extends _$ScheduleEffectCopyWithImpl<$Res, _$NavigateToScheduleDetailImpl>
    implements _$$NavigateToScheduleDetailImplCopyWith<$Res> {
  __$$NavigateToScheduleDetailImplCopyWithImpl(
      _$NavigateToScheduleDetailImpl _value,
      $Res Function(_$NavigateToScheduleDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
  }) {
    return _then(_$NavigateToScheduleDetailImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigateToScheduleDetailImpl implements _NavigateToScheduleDetail {
  const _$NavigateToScheduleDetailImpl({required this.scheduleId});

  @override
  final int scheduleId;

  @override
  String toString() {
    return 'ScheduleEffect.navigateToScheduleDetail(scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToScheduleDetailImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToScheduleDetailImplCopyWith<_$NavigateToScheduleDetailImpl>
      get copyWith => __$$NavigateToScheduleDetailImplCopyWithImpl<
          _$NavigateToScheduleDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) {
    return navigateToScheduleDetail(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) {
    return navigateToScheduleDetail?.call(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (navigateToScheduleDetail != null) {
      return navigateToScheduleDetail(scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) {
    return navigateToScheduleDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) {
    return navigateToScheduleDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (navigateToScheduleDetail != null) {
      return navigateToScheduleDetail(this);
    }
    return orElse();
  }
}

abstract class _NavigateToScheduleDetail implements ScheduleEffect {
  const factory _NavigateToScheduleDetail({required final int scheduleId}) =
      _$NavigateToScheduleDetailImpl;

  int get scheduleId;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToScheduleDetailImplCopyWith<_$NavigateToScheduleDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowErrorDialogImplCopyWith<$Res> {
  factory _$$ShowErrorDialogImplCopyWith(_$ShowErrorDialogImpl value,
          $Res Function(_$ShowErrorDialogImpl) then) =
      __$$ShowErrorDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowErrorDialogImplCopyWithImpl<$Res>
    extends _$ScheduleEffectCopyWithImpl<$Res, _$ShowErrorDialogImpl>
    implements _$$ShowErrorDialogImplCopyWith<$Res> {
  __$$ShowErrorDialogImplCopyWithImpl(
      _$ShowErrorDialogImpl _value, $Res Function(_$ShowErrorDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowErrorDialogImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorDialogImpl implements _ShowErrorDialog {
  const _$ShowErrorDialogImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduleEffect.showErrorDialog(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorDialogImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      __$$ShowErrorDialogImplCopyWithImpl<_$ShowErrorDialogImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) {
    return showErrorDialog(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) {
    return showErrorDialog?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) {
    return showErrorDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) {
    return showErrorDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorDialog implements ScheduleEffect {
  const factory _ShowErrorDialog({required final String message}) =
      _$ShowErrorDialogImpl;

  String get message;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCalendarViewImplCopyWith<$Res> {
  factory _$$UpdateCalendarViewImplCopyWith(_$UpdateCalendarViewImpl value,
          $Res Function(_$UpdateCalendarViewImpl) then) =
      __$$UpdateCalendarViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, DateTime selectedDate});
}

/// @nodoc
class __$$UpdateCalendarViewImplCopyWithImpl<$Res>
    extends _$ScheduleEffectCopyWithImpl<$Res, _$UpdateCalendarViewImpl>
    implements _$$UpdateCalendarViewImplCopyWith<$Res> {
  __$$UpdateCalendarViewImplCopyWithImpl(_$UpdateCalendarViewImpl _value,
      $Res Function(_$UpdateCalendarViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? selectedDate = null,
  }) {
    return _then(_$UpdateCalendarViewImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateCalendarViewImpl implements _UpdateCalendarView {
  const _$UpdateCalendarViewImpl(
      {required this.dateTime, required this.selectedDate});

  @override
  final DateTime dateTime;
  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ScheduleEffect.updateCalendarView(dateTime: $dateTime, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCalendarViewImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, selectedDate);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCalendarViewImplCopyWith<_$UpdateCalendarViewImpl> get copyWith =>
      __$$UpdateCalendarViewImplCopyWithImpl<_$UpdateCalendarViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) {
    return updateCalendarView(dateTime, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) {
    return updateCalendarView?.call(dateTime, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (updateCalendarView != null) {
      return updateCalendarView(dateTime, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) {
    return updateCalendarView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) {
    return updateCalendarView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (updateCalendarView != null) {
      return updateCalendarView(this);
    }
    return orElse();
  }
}

abstract class _UpdateCalendarView implements ScheduleEffect {
  const factory _UpdateCalendarView(
      {required final DateTime dateTime,
      required final DateTime selectedDate}) = _$UpdateCalendarViewImpl;

  DateTime get dateTime;
  DateTime get selectedDate;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCalendarViewImplCopyWith<_$UpdateCalendarViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedDateCellImplCopyWith<$Res> {
  factory _$$UpdateSelectedDateCellImplCopyWith(
          _$UpdateSelectedDateCellImpl value,
          $Res Function(_$UpdateSelectedDateCellImpl) then) =
      __$$UpdateSelectedDateCellImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$UpdateSelectedDateCellImplCopyWithImpl<$Res>
    extends _$ScheduleEffectCopyWithImpl<$Res, _$UpdateSelectedDateCellImpl>
    implements _$$UpdateSelectedDateCellImplCopyWith<$Res> {
  __$$UpdateSelectedDateCellImplCopyWithImpl(
      _$UpdateSelectedDateCellImpl _value,
      $Res Function(_$UpdateSelectedDateCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$UpdateSelectedDateCellImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedDateCellImpl implements _UpdateSelectedDateCell {
  const _$UpdateSelectedDateCellImpl({required this.dateTime});

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'ScheduleEffect.updateSelectedDateCell(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedDateCellImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedDateCellImplCopyWith<_$UpdateSelectedDateCellImpl>
      get copyWith => __$$UpdateSelectedDateCellImplCopyWithImpl<
          _$UpdateSelectedDateCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) {
    return updateSelectedDateCell(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) {
    return updateSelectedDateCell?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (updateSelectedDateCell != null) {
      return updateSelectedDateCell(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) {
    return updateSelectedDateCell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) {
    return updateSelectedDateCell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (updateSelectedDateCell != null) {
      return updateSelectedDateCell(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedDateCell implements ScheduleEffect {
  const factory _UpdateSelectedDateCell({required final DateTime dateTime}) =
      _$UpdateSelectedDateCellImpl;

  DateTime get dateTime;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedDateCellImplCopyWith<_$UpdateSelectedDateCellImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDateScheduleDialogImplCopyWith<$Res> {
  factory _$$ShowDateScheduleDialogImplCopyWith(
          _$ShowDateScheduleDialogImpl value,
          $Res Function(_$ShowDateScheduleDialogImpl) then) =
      __$$ShowDateScheduleDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$ShowDateScheduleDialogImplCopyWithImpl<$Res>
    extends _$ScheduleEffectCopyWithImpl<$Res, _$ShowDateScheduleDialogImpl>
    implements _$$ShowDateScheduleDialogImplCopyWith<$Res> {
  __$$ShowDateScheduleDialogImplCopyWithImpl(
      _$ShowDateScheduleDialogImpl _value,
      $Res Function(_$ShowDateScheduleDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$ShowDateScheduleDialogImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ShowDateScheduleDialogImpl implements _ShowDateScheduleDialog {
  const _$ShowDateScheduleDialogImpl({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ScheduleEffect.showDateScheduleDialog(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDateScheduleDialogImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDateScheduleDialogImplCopyWith<_$ShowDateScheduleDialogImpl>
      get copyWith => __$$ShowDateScheduleDialogImplCopyWithImpl<
          _$ShowDateScheduleDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scheduleId) navigateToScheduleDetail,
    required TResult Function(String message) showErrorDialog,
    required TResult Function(DateTime dateTime, DateTime selectedDate)
        updateCalendarView,
    required TResult Function(DateTime dateTime) updateSelectedDateCell,
    required TResult Function(DateTime selectedDate) showDateScheduleDialog,
  }) {
    return showDateScheduleDialog(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scheduleId)? navigateToScheduleDetail,
    TResult? Function(String message)? showErrorDialog,
    TResult? Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult? Function(DateTime dateTime)? updateSelectedDateCell,
    TResult? Function(DateTime selectedDate)? showDateScheduleDialog,
  }) {
    return showDateScheduleDialog?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scheduleId)? navigateToScheduleDetail,
    TResult Function(String message)? showErrorDialog,
    TResult Function(DateTime dateTime, DateTime selectedDate)?
        updateCalendarView,
    TResult Function(DateTime dateTime)? updateSelectedDateCell,
    TResult Function(DateTime selectedDate)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (showDateScheduleDialog != null) {
      return showDateScheduleDialog(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToScheduleDetail value)
        navigateToScheduleDetail,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_UpdateCalendarView value) updateCalendarView,
    required TResult Function(_UpdateSelectedDateCell value)
        updateSelectedDateCell,
    required TResult Function(_ShowDateScheduleDialog value)
        showDateScheduleDialog,
  }) {
    return showDateScheduleDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToScheduleDetail value)?
        navigateToScheduleDetail,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_UpdateCalendarView value)? updateCalendarView,
    TResult? Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult? Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
  }) {
    return showDateScheduleDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToScheduleDetail value)? navigateToScheduleDetail,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_UpdateCalendarView value)? updateCalendarView,
    TResult Function(_UpdateSelectedDateCell value)? updateSelectedDateCell,
    TResult Function(_ShowDateScheduleDialog value)? showDateScheduleDialog,
    required TResult orElse(),
  }) {
    if (showDateScheduleDialog != null) {
      return showDateScheduleDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowDateScheduleDialog implements ScheduleEffect {
  const factory _ShowDateScheduleDialog(
      {required final DateTime selectedDate}) = _$ShowDateScheduleDialogImpl;

  DateTime get selectedDate;

  /// Create a copy of ScheduleEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowDateScheduleDialogImplCopyWith<_$ShowDateScheduleDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}
