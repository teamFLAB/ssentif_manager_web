// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassRecordModel _$ClassRecordModelFromJson(Map<String, dynamic> json) {
  return _ClassRecordModel.fromJson(json);
}

/// @nodoc
mixin _$ClassRecordModel {
  String get id => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get trainerName => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ClassRecordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassRecordModelCopyWith<ClassRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRecordModelCopyWith<$Res> {
  factory $ClassRecordModelCopyWith(
          ClassRecordModel value, $Res Function(ClassRecordModel) then) =
      _$ClassRecordModelCopyWithImpl<$Res, ClassRecordModel>;
  @useResult
  $Res call(
      {String id,
      String className,
      String trainerName,
      String clientName,
      String date,
      String startTime,
      String endTime,
      String status});
}

/// @nodoc
class _$ClassRecordModelCopyWithImpl<$Res, $Val extends ClassRecordModel>
    implements $ClassRecordModelCopyWith<$Res> {
  _$ClassRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? className = null,
    Object? trainerName = null,
    Object? clientName = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      trainerName: null == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassRecordModelImplCopyWith<$Res>
    implements $ClassRecordModelCopyWith<$Res> {
  factory _$$ClassRecordModelImplCopyWith(_$ClassRecordModelImpl value,
          $Res Function(_$ClassRecordModelImpl) then) =
      __$$ClassRecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String className,
      String trainerName,
      String clientName,
      String date,
      String startTime,
      String endTime,
      String status});
}

/// @nodoc
class __$$ClassRecordModelImplCopyWithImpl<$Res>
    extends _$ClassRecordModelCopyWithImpl<$Res, _$ClassRecordModelImpl>
    implements _$$ClassRecordModelImplCopyWith<$Res> {
  __$$ClassRecordModelImplCopyWithImpl(_$ClassRecordModelImpl _value,
      $Res Function(_$ClassRecordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? className = null,
    Object? trainerName = null,
    Object? clientName = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_$ClassRecordModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      trainerName: null == trainerName
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassRecordModelImpl implements _ClassRecordModel {
  const _$ClassRecordModelImpl(
      {this.id = '',
      this.className = '',
      this.trainerName = '',
      this.clientName = '',
      this.date = '',
      this.startTime = '',
      this.endTime = '',
      this.status = ''});

  factory _$ClassRecordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassRecordModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final String trainerName;
  @override
  @JsonKey()
  final String clientName;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'ClassRecordModel(id: $id, className: $className, trainerName: $trainerName, clientName: $clientName, date: $date, startTime: $startTime, endTime: $endTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassRecordModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.trainerName, trainerName) ||
                other.trainerName == trainerName) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, className, trainerName,
      clientName, date, startTime, endTime, status);

  /// Create a copy of ClassRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassRecordModelImplCopyWith<_$ClassRecordModelImpl> get copyWith =>
      __$$ClassRecordModelImplCopyWithImpl<_$ClassRecordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassRecordModelImplToJson(
      this,
    );
  }
}

abstract class _ClassRecordModel implements ClassRecordModel {
  const factory _ClassRecordModel(
      {final String id,
      final String className,
      final String trainerName,
      final String clientName,
      final String date,
      final String startTime,
      final String endTime,
      final String status}) = _$ClassRecordModelImpl;

  factory _ClassRecordModel.fromJson(Map<String, dynamic> json) =
      _$ClassRecordModelImpl.fromJson;

  @override
  String get id;
  @override
  String get className;
  @override
  String get trainerName;
  @override
  String get clientName;
  @override
  String get date;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get status;

  /// Create a copy of ClassRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassRecordModelImplCopyWith<_$ClassRecordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
