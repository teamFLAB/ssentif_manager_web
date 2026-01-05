// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DietModel _$DietModelFromJson(Map<String, dynamic> json) {
  return _DietModel.fromJson(json);
}

/// @nodoc
mixin _$DietModel {
  int? get id => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  List<String> get img => throw _privateConstructorUsedError;
  String get mealTime => throw _privateConstructorUsedError;
  String get mealType => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  DietFeedbackModel? get feedbackResponse => throw _privateConstructorUsedError;

  /// Serializes this DietModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietModelCopyWith<DietModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietModelCopyWith<$Res> {
  factory $DietModelCopyWith(DietModel value, $Res Function(DietModel) then) =
      _$DietModelCopyWithImpl<$Res, DietModel>;
  @useResult
  $Res call(
      {int? id,
      String time,
      List<String> img,
      String mealTime,
      String mealType,
      String memo,
      DietFeedbackModel? feedbackResponse});

  $DietFeedbackModelCopyWith<$Res>? get feedbackResponse;
}

/// @nodoc
class _$DietModelCopyWithImpl<$Res, $Val extends DietModel>
    implements $DietModelCopyWith<$Res> {
  _$DietModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = null,
    Object? img = null,
    Object? mealTime = null,
    Object? mealType = null,
    Object? memo = null,
    Object? feedbackResponse = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealTime: null == mealTime
          ? _value.mealTime
          : mealTime // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackResponse: freezed == feedbackResponse
          ? _value.feedbackResponse
          : feedbackResponse // ignore: cast_nullable_to_non_nullable
              as DietFeedbackModel?,
    ) as $Val);
  }

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietFeedbackModelCopyWith<$Res>? get feedbackResponse {
    if (_value.feedbackResponse == null) {
      return null;
    }

    return $DietFeedbackModelCopyWith<$Res>(_value.feedbackResponse!, (value) {
      return _then(_value.copyWith(feedbackResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DietModelImplCopyWith<$Res>
    implements $DietModelCopyWith<$Res> {
  factory _$$DietModelImplCopyWith(
          _$DietModelImpl value, $Res Function(_$DietModelImpl) then) =
      __$$DietModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String time,
      List<String> img,
      String mealTime,
      String mealType,
      String memo,
      DietFeedbackModel? feedbackResponse});

  @override
  $DietFeedbackModelCopyWith<$Res>? get feedbackResponse;
}

/// @nodoc
class __$$DietModelImplCopyWithImpl<$Res>
    extends _$DietModelCopyWithImpl<$Res, _$DietModelImpl>
    implements _$$DietModelImplCopyWith<$Res> {
  __$$DietModelImplCopyWithImpl(
      _$DietModelImpl _value, $Res Function(_$DietModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = null,
    Object? img = null,
    Object? mealTime = null,
    Object? mealType = null,
    Object? memo = null,
    Object? feedbackResponse = freezed,
  }) {
    return _then(_$DietModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value._img
          : img // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealTime: null == mealTime
          ? _value.mealTime
          : mealTime // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackResponse: freezed == feedbackResponse
          ? _value.feedbackResponse
          : feedbackResponse // ignore: cast_nullable_to_non_nullable
              as DietFeedbackModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DietModelImpl implements _DietModel {
  _$DietModelImpl(
      {this.id,
      this.time = "",
      final List<String> img = const [],
      this.mealTime = "",
      this.mealType = "",
      this.memo = "",
      this.feedbackResponse})
      : _img = img;

  factory _$DietModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DietModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String time;
  final List<String> _img;
  @override
  @JsonKey()
  List<String> get img {
    if (_img is EqualUnmodifiableListView) return _img;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_img);
  }

  @override
  @JsonKey()
  final String mealTime;
  @override
  @JsonKey()
  final String mealType;
  @override
  @JsonKey()
  final String memo;
  @override
  final DietFeedbackModel? feedbackResponse;

  @override
  String toString() {
    return 'DietModel(id: $id, time: $time, img: $img, mealTime: $mealTime, mealType: $mealType, memo: $memo, feedbackResponse: $feedbackResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._img, _img) &&
            (identical(other.mealTime, mealTime) ||
                other.mealTime == mealTime) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.feedbackResponse, feedbackResponse) ||
                other.feedbackResponse == feedbackResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      time,
      const DeepCollectionEquality().hash(_img),
      mealTime,
      mealType,
      memo,
      feedbackResponse);

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietModelImplCopyWith<_$DietModelImpl> get copyWith =>
      __$$DietModelImplCopyWithImpl<_$DietModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DietModelImplToJson(
      this,
    );
  }
}

abstract class _DietModel implements DietModel {
  factory _DietModel(
      {final int? id,
      final String time,
      final List<String> img,
      final String mealTime,
      final String mealType,
      final String memo,
      final DietFeedbackModel? feedbackResponse}) = _$DietModelImpl;

  factory _DietModel.fromJson(Map<String, dynamic> json) =
      _$DietModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get time;
  @override
  List<String> get img;
  @override
  String get mealTime;
  @override
  String get mealType;
  @override
  String get memo;
  @override
  DietFeedbackModel? get feedbackResponse;

  /// Create a copy of DietModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietModelImplCopyWith<_$DietModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DietFeedbackModel _$DietFeedbackModelFromJson(Map<String, dynamic> json) {
  return _DietFeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$DietFeedbackModel {
  String get tag => throw _privateConstructorUsedError;
  List<String> get increase => throw _privateConstructorUsedError;
  List<String> get decrease => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  /// Serializes this DietFeedbackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DietFeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietFeedbackModelCopyWith<DietFeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietFeedbackModelCopyWith<$Res> {
  factory $DietFeedbackModelCopyWith(
          DietFeedbackModel value, $Res Function(DietFeedbackModel) then) =
      _$DietFeedbackModelCopyWithImpl<$Res, DietFeedbackModel>;
  @useResult
  $Res call(
      {String tag,
      List<String> increase,
      List<String> decrease,
      String feedback});
}

/// @nodoc
class _$DietFeedbackModelCopyWithImpl<$Res, $Val extends DietFeedbackModel>
    implements $DietFeedbackModelCopyWith<$Res> {
  _$DietFeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietFeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? increase = null,
    Object? decrease = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      increase: null == increase
          ? _value.increase
          : increase // ignore: cast_nullable_to_non_nullable
              as List<String>,
      decrease: null == decrease
          ? _value.decrease
          : decrease // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietFeedbackModelImplCopyWith<$Res>
    implements $DietFeedbackModelCopyWith<$Res> {
  factory _$$DietFeedbackModelImplCopyWith(_$DietFeedbackModelImpl value,
          $Res Function(_$DietFeedbackModelImpl) then) =
      __$$DietFeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tag,
      List<String> increase,
      List<String> decrease,
      String feedback});
}

/// @nodoc
class __$$DietFeedbackModelImplCopyWithImpl<$Res>
    extends _$DietFeedbackModelCopyWithImpl<$Res, _$DietFeedbackModelImpl>
    implements _$$DietFeedbackModelImplCopyWith<$Res> {
  __$$DietFeedbackModelImplCopyWithImpl(_$DietFeedbackModelImpl _value,
      $Res Function(_$DietFeedbackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietFeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? increase = null,
    Object? decrease = null,
    Object? feedback = null,
  }) {
    return _then(_$DietFeedbackModelImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      increase: null == increase
          ? _value._increase
          : increase // ignore: cast_nullable_to_non_nullable
              as List<String>,
      decrease: null == decrease
          ? _value._decrease
          : decrease // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DietFeedbackModelImpl implements _DietFeedbackModel {
  _$DietFeedbackModelImpl(
      {this.tag = "",
      final List<String> increase = const [],
      final List<String> decrease = const [],
      this.feedback = ""})
      : _increase = increase,
        _decrease = decrease;

  factory _$DietFeedbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DietFeedbackModelImplFromJson(json);

  @override
  @JsonKey()
  final String tag;
  final List<String> _increase;
  @override
  @JsonKey()
  List<String> get increase {
    if (_increase is EqualUnmodifiableListView) return _increase;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_increase);
  }

  final List<String> _decrease;
  @override
  @JsonKey()
  List<String> get decrease {
    if (_decrease is EqualUnmodifiableListView) return _decrease;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decrease);
  }

  @override
  @JsonKey()
  final String feedback;

  @override
  String toString() {
    return 'DietFeedbackModel(tag: $tag, increase: $increase, decrease: $decrease, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietFeedbackModelImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality().equals(other._increase, _increase) &&
            const DeepCollectionEquality().equals(other._decrease, _decrease) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tag,
      const DeepCollectionEquality().hash(_increase),
      const DeepCollectionEquality().hash(_decrease),
      feedback);

  /// Create a copy of DietFeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietFeedbackModelImplCopyWith<_$DietFeedbackModelImpl> get copyWith =>
      __$$DietFeedbackModelImplCopyWithImpl<_$DietFeedbackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DietFeedbackModelImplToJson(
      this,
    );
  }
}

abstract class _DietFeedbackModel implements DietFeedbackModel {
  factory _DietFeedbackModel(
      {final String tag,
      final List<String> increase,
      final List<String> decrease,
      final String feedback}) = _$DietFeedbackModelImpl;

  factory _DietFeedbackModel.fromJson(Map<String, dynamic> json) =
      _$DietFeedbackModelImpl.fromJson;

  @override
  String get tag;
  @override
  List<String> get increase;
  @override
  List<String> get decrease;
  @override
  String get feedback;

  /// Create a copy of DietFeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietFeedbackModelImplCopyWith<_$DietFeedbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
