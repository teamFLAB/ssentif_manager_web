// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_diet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyDietListModel _$MonthlyDietListModelFromJson(Map<String, dynamic> json) {
  return _MonthlyDietListModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyDietListModel {
  List<DailyDietThumbnailsModel> get dietMonthlyResponses =>
      throw _privateConstructorUsedError;

  /// Serializes this MonthlyDietListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyDietListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyDietListModelCopyWith<MonthlyDietListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyDietListModelCopyWith<$Res> {
  factory $MonthlyDietListModelCopyWith(MonthlyDietListModel value,
          $Res Function(MonthlyDietListModel) then) =
      _$MonthlyDietListModelCopyWithImpl<$Res, MonthlyDietListModel>;
  @useResult
  $Res call({List<DailyDietThumbnailsModel> dietMonthlyResponses});
}

/// @nodoc
class _$MonthlyDietListModelCopyWithImpl<$Res,
        $Val extends MonthlyDietListModel>
    implements $MonthlyDietListModelCopyWith<$Res> {
  _$MonthlyDietListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyDietListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietMonthlyResponses = null,
  }) {
    return _then(_value.copyWith(
      dietMonthlyResponses: null == dietMonthlyResponses
          ? _value.dietMonthlyResponses
          : dietMonthlyResponses // ignore: cast_nullable_to_non_nullable
              as List<DailyDietThumbnailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyDietListModelImplCopyWith<$Res>
    implements $MonthlyDietListModelCopyWith<$Res> {
  factory _$$MonthlyDietListModelImplCopyWith(_$MonthlyDietListModelImpl value,
          $Res Function(_$MonthlyDietListModelImpl) then) =
      __$$MonthlyDietListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DailyDietThumbnailsModel> dietMonthlyResponses});
}

/// @nodoc
class __$$MonthlyDietListModelImplCopyWithImpl<$Res>
    extends _$MonthlyDietListModelCopyWithImpl<$Res, _$MonthlyDietListModelImpl>
    implements _$$MonthlyDietListModelImplCopyWith<$Res> {
  __$$MonthlyDietListModelImplCopyWithImpl(_$MonthlyDietListModelImpl _value,
      $Res Function(_$MonthlyDietListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyDietListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietMonthlyResponses = null,
  }) {
    return _then(_$MonthlyDietListModelImpl(
      dietMonthlyResponses: null == dietMonthlyResponses
          ? _value._dietMonthlyResponses
          : dietMonthlyResponses // ignore: cast_nullable_to_non_nullable
              as List<DailyDietThumbnailsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyDietListModelImpl implements _MonthlyDietListModel {
  _$MonthlyDietListModelImpl(
      {final List<DailyDietThumbnailsModel> dietMonthlyResponses = const []})
      : _dietMonthlyResponses = dietMonthlyResponses;

  factory _$MonthlyDietListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyDietListModelImplFromJson(json);

  final List<DailyDietThumbnailsModel> _dietMonthlyResponses;
  @override
  @JsonKey()
  List<DailyDietThumbnailsModel> get dietMonthlyResponses {
    if (_dietMonthlyResponses is EqualUnmodifiableListView)
      return _dietMonthlyResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietMonthlyResponses);
  }

  @override
  String toString() {
    return 'MonthlyDietListModel(dietMonthlyResponses: $dietMonthlyResponses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyDietListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._dietMonthlyResponses, _dietMonthlyResponses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dietMonthlyResponses));

  /// Create a copy of MonthlyDietListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyDietListModelImplCopyWith<_$MonthlyDietListModelImpl>
      get copyWith =>
          __$$MonthlyDietListModelImplCopyWithImpl<_$MonthlyDietListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyDietListModelImplToJson(
      this,
    );
  }
}

abstract class _MonthlyDietListModel implements MonthlyDietListModel {
  factory _MonthlyDietListModel(
          {final List<DailyDietThumbnailsModel> dietMonthlyResponses}) =
      _$MonthlyDietListModelImpl;

  factory _MonthlyDietListModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyDietListModelImpl.fromJson;

  @override
  List<DailyDietThumbnailsModel> get dietMonthlyResponses;

  /// Create a copy of MonthlyDietListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyDietListModelImplCopyWith<_$MonthlyDietListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DailyDietThumbnailsModel _$DailyDietThumbnailsModelFromJson(
    Map<String, dynamic> json) {
  return _DailyDietThumbnailsModel.fromJson(json);
}

/// @nodoc
mixin _$DailyDietThumbnailsModel {
  String get date => throw _privateConstructorUsedError;
  List<DietThumbnailModel> get dietThumbnailResponses =>
      throw _privateConstructorUsedError;

  /// Serializes this DailyDietThumbnailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyDietThumbnailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyDietThumbnailsModelCopyWith<DailyDietThumbnailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyDietThumbnailsModelCopyWith<$Res> {
  factory $DailyDietThumbnailsModelCopyWith(DailyDietThumbnailsModel value,
          $Res Function(DailyDietThumbnailsModel) then) =
      _$DailyDietThumbnailsModelCopyWithImpl<$Res, DailyDietThumbnailsModel>;
  @useResult
  $Res call({String date, List<DietThumbnailModel> dietThumbnailResponses});
}

/// @nodoc
class _$DailyDietThumbnailsModelCopyWithImpl<$Res,
        $Val extends DailyDietThumbnailsModel>
    implements $DailyDietThumbnailsModelCopyWith<$Res> {
  _$DailyDietThumbnailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyDietThumbnailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dietThumbnailResponses = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dietThumbnailResponses: null == dietThumbnailResponses
          ? _value.dietThumbnailResponses
          : dietThumbnailResponses // ignore: cast_nullable_to_non_nullable
              as List<DietThumbnailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyDietThumbnailsModelImplCopyWith<$Res>
    implements $DailyDietThumbnailsModelCopyWith<$Res> {
  factory _$$DailyDietThumbnailsModelImplCopyWith(
          _$DailyDietThumbnailsModelImpl value,
          $Res Function(_$DailyDietThumbnailsModelImpl) then) =
      __$$DailyDietThumbnailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<DietThumbnailModel> dietThumbnailResponses});
}

/// @nodoc
class __$$DailyDietThumbnailsModelImplCopyWithImpl<$Res>
    extends _$DailyDietThumbnailsModelCopyWithImpl<$Res,
        _$DailyDietThumbnailsModelImpl>
    implements _$$DailyDietThumbnailsModelImplCopyWith<$Res> {
  __$$DailyDietThumbnailsModelImplCopyWithImpl(
      _$DailyDietThumbnailsModelImpl _value,
      $Res Function(_$DailyDietThumbnailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyDietThumbnailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dietThumbnailResponses = null,
  }) {
    return _then(_$DailyDietThumbnailsModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dietThumbnailResponses: null == dietThumbnailResponses
          ? _value._dietThumbnailResponses
          : dietThumbnailResponses // ignore: cast_nullable_to_non_nullable
              as List<DietThumbnailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyDietThumbnailsModelImpl implements _DailyDietThumbnailsModel {
  _$DailyDietThumbnailsModelImpl(
      {this.date = "",
      final List<DietThumbnailModel> dietThumbnailResponses = const []})
      : _dietThumbnailResponses = dietThumbnailResponses;

  factory _$DailyDietThumbnailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyDietThumbnailsModelImplFromJson(json);

  @override
  @JsonKey()
  final String date;
  final List<DietThumbnailModel> _dietThumbnailResponses;
  @override
  @JsonKey()
  List<DietThumbnailModel> get dietThumbnailResponses {
    if (_dietThumbnailResponses is EqualUnmodifiableListView)
      return _dietThumbnailResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietThumbnailResponses);
  }

  @override
  String toString() {
    return 'DailyDietThumbnailsModel(date: $date, dietThumbnailResponses: $dietThumbnailResponses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyDietThumbnailsModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(
                other._dietThumbnailResponses, _dietThumbnailResponses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date,
      const DeepCollectionEquality().hash(_dietThumbnailResponses));

  /// Create a copy of DailyDietThumbnailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyDietThumbnailsModelImplCopyWith<_$DailyDietThumbnailsModelImpl>
      get copyWith => __$$DailyDietThumbnailsModelImplCopyWithImpl<
          _$DailyDietThumbnailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyDietThumbnailsModelImplToJson(
      this,
    );
  }
}

abstract class _DailyDietThumbnailsModel implements DailyDietThumbnailsModel {
  factory _DailyDietThumbnailsModel(
          {final String date,
          final List<DietThumbnailModel> dietThumbnailResponses}) =
      _$DailyDietThumbnailsModelImpl;

  factory _DailyDietThumbnailsModel.fromJson(Map<String, dynamic> json) =
      _$DailyDietThumbnailsModelImpl.fromJson;

  @override
  String get date;
  @override
  List<DietThumbnailModel> get dietThumbnailResponses;

  /// Create a copy of DailyDietThumbnailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyDietThumbnailsModelImplCopyWith<_$DailyDietThumbnailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DietThumbnailModel _$DietThumbnailModelFromJson(Map<String, dynamic> json) {
  return _DietThumbnailModel.fromJson(json);
}

/// @nodoc
mixin _$DietThumbnailModel {
  int get id => throw _privateConstructorUsedError;
  List<String> get img => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;

  /// Serializes this DietThumbnailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DietThumbnailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietThumbnailModelCopyWith<DietThumbnailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietThumbnailModelCopyWith<$Res> {
  factory $DietThumbnailModelCopyWith(
          DietThumbnailModel value, $Res Function(DietThumbnailModel) then) =
      _$DietThumbnailModelCopyWithImpl<$Res, DietThumbnailModel>;
  @useResult
  $Res call({int id, List<String> img, String tag});
}

/// @nodoc
class _$DietThumbnailModelCopyWithImpl<$Res, $Val extends DietThumbnailModel>
    implements $DietThumbnailModelCopyWith<$Res> {
  _$DietThumbnailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietThumbnailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietThumbnailModelImplCopyWith<$Res>
    implements $DietThumbnailModelCopyWith<$Res> {
  factory _$$DietThumbnailModelImplCopyWith(_$DietThumbnailModelImpl value,
          $Res Function(_$DietThumbnailModelImpl) then) =
      __$$DietThumbnailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<String> img, String tag});
}

/// @nodoc
class __$$DietThumbnailModelImplCopyWithImpl<$Res>
    extends _$DietThumbnailModelCopyWithImpl<$Res, _$DietThumbnailModelImpl>
    implements _$$DietThumbnailModelImplCopyWith<$Res> {
  __$$DietThumbnailModelImplCopyWithImpl(_$DietThumbnailModelImpl _value,
      $Res Function(_$DietThumbnailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietThumbnailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? tag = null,
  }) {
    return _then(_$DietThumbnailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value._img
          : img // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DietThumbnailModelImpl implements _DietThumbnailModel {
  _$DietThumbnailModelImpl(
      {this.id = -1, final List<String> img = const [], this.tag = ""})
      : _img = img;

  factory _$DietThumbnailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DietThumbnailModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
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
  final String tag;

  @override
  String toString() {
    return 'DietThumbnailModel(id: $id, img: $img, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietThumbnailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._img, _img) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_img), tag);

  /// Create a copy of DietThumbnailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietThumbnailModelImplCopyWith<_$DietThumbnailModelImpl> get copyWith =>
      __$$DietThumbnailModelImplCopyWithImpl<_$DietThumbnailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DietThumbnailModelImplToJson(
      this,
    );
  }
}

abstract class _DietThumbnailModel implements DietThumbnailModel {
  factory _DietThumbnailModel(
      {final int id,
      final List<String> img,
      final String tag}) = _$DietThumbnailModelImpl;

  factory _DietThumbnailModel.fromJson(Map<String, dynamic> json) =
      _$DietThumbnailModelImpl.fromJson;

  @override
  int get id;
  @override
  List<String> get img;
  @override
  String get tag;

  /// Create a copy of DietThumbnailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietThumbnailModelImplCopyWith<_$DietThumbnailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
