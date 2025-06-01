// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyScheduleModel _$DailyScheduleModelFromJson(Map<String, dynamic> json) {
  return _DailyScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$DailyScheduleModel {
  String get scheduleDate => throw _privateConstructorUsedError;
  List<CalendarScheduleModel> get scheduleInfoDtoList =>
      throw _privateConstructorUsedError;

  /// Serializes this DailyScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyScheduleModelCopyWith<DailyScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyScheduleModelCopyWith<$Res> {
  factory $DailyScheduleModelCopyWith(
          DailyScheduleModel value, $Res Function(DailyScheduleModel) then) =
      _$DailyScheduleModelCopyWithImpl<$Res, DailyScheduleModel>;
  @useResult
  $Res call(
      {String scheduleDate, List<CalendarScheduleModel> scheduleInfoDtoList});
}

/// @nodoc
class _$DailyScheduleModelCopyWithImpl<$Res, $Val extends DailyScheduleModel>
    implements $DailyScheduleModelCopyWith<$Res> {
  _$DailyScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleDate = null,
    Object? scheduleInfoDtoList = null,
  }) {
    return _then(_value.copyWith(
      scheduleDate: null == scheduleDate
          ? _value.scheduleDate
          : scheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleInfoDtoList: null == scheduleInfoDtoList
          ? _value.scheduleInfoDtoList
          : scheduleInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyScheduleModelImplCopyWith<$Res>
    implements $DailyScheduleModelCopyWith<$Res> {
  factory _$$DailyScheduleModelImplCopyWith(_$DailyScheduleModelImpl value,
          $Res Function(_$DailyScheduleModelImpl) then) =
      __$$DailyScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String scheduleDate, List<CalendarScheduleModel> scheduleInfoDtoList});
}

/// @nodoc
class __$$DailyScheduleModelImplCopyWithImpl<$Res>
    extends _$DailyScheduleModelCopyWithImpl<$Res, _$DailyScheduleModelImpl>
    implements _$$DailyScheduleModelImplCopyWith<$Res> {
  __$$DailyScheduleModelImplCopyWithImpl(_$DailyScheduleModelImpl _value,
      $Res Function(_$DailyScheduleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleDate = null,
    Object? scheduleInfoDtoList = null,
  }) {
    return _then(_$DailyScheduleModelImpl(
      scheduleDate: null == scheduleDate
          ? _value.scheduleDate
          : scheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleInfoDtoList: null == scheduleInfoDtoList
          ? _value._scheduleInfoDtoList
          : scheduleInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyScheduleModelImpl implements _DailyScheduleModel {
  const _$DailyScheduleModelImpl(
      {this.scheduleDate = "",
      final List<CalendarScheduleModel> scheduleInfoDtoList = const []})
      : _scheduleInfoDtoList = scheduleInfoDtoList;

  factory _$DailyScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyScheduleModelImplFromJson(json);

  @override
  @JsonKey()
  final String scheduleDate;
  final List<CalendarScheduleModel> _scheduleInfoDtoList;
  @override
  @JsonKey()
  List<CalendarScheduleModel> get scheduleInfoDtoList {
    if (_scheduleInfoDtoList is EqualUnmodifiableListView)
      return _scheduleInfoDtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleInfoDtoList);
  }

  @override
  String toString() {
    return 'DailyScheduleModel(scheduleDate: $scheduleDate, scheduleInfoDtoList: $scheduleInfoDtoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyScheduleModelImpl &&
            (identical(other.scheduleDate, scheduleDate) ||
                other.scheduleDate == scheduleDate) &&
            const DeepCollectionEquality()
                .equals(other._scheduleInfoDtoList, _scheduleInfoDtoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scheduleDate,
      const DeepCollectionEquality().hash(_scheduleInfoDtoList));

  /// Create a copy of DailyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyScheduleModelImplCopyWith<_$DailyScheduleModelImpl> get copyWith =>
      __$$DailyScheduleModelImplCopyWithImpl<_$DailyScheduleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _DailyScheduleModel implements DailyScheduleModel {
  const factory _DailyScheduleModel(
          {final String scheduleDate,
          final List<CalendarScheduleModel> scheduleInfoDtoList}) =
      _$DailyScheduleModelImpl;

  factory _DailyScheduleModel.fromJson(Map<String, dynamic> json) =
      _$DailyScheduleModelImpl.fromJson;

  @override
  String get scheduleDate;
  @override
  List<CalendarScheduleModel> get scheduleInfoDtoList;

  /// Create a copy of DailyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyScheduleModelImplCopyWith<_$DailyScheduleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
