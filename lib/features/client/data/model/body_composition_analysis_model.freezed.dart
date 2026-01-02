// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_composition_analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBodyCompositionAnalysis _$ResponseBodyCompositionAnalysisFromJson(
    Map<String, dynamic> json) {
  return _ResponseBodyCompositionAnalysis.fromJson(json);
}

/// @nodoc
mixin _$ResponseBodyCompositionAnalysis {
  BodyCompositionAnalysisModel get weightInfoDto =>
      throw _privateConstructorUsedError;
  BodyCompositionAnalysisModel get skeletalMuscleMassInfoDto =>
      throw _privateConstructorUsedError;
  BodyCompositionAnalysisModel get bodyFatInfoDto =>
      throw _privateConstructorUsedError;
  BodyCompositionAnalysisModel get bodyFatPercentageInfoDto =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseBodyCompositionAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseBodyCompositionAnalysisCopyWith<ResponseBodyCompositionAnalysis>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyCompositionAnalysisCopyWith<$Res> {
  factory $ResponseBodyCompositionAnalysisCopyWith(
          ResponseBodyCompositionAnalysis value,
          $Res Function(ResponseBodyCompositionAnalysis) then) =
      _$ResponseBodyCompositionAnalysisCopyWithImpl<$Res,
          ResponseBodyCompositionAnalysis>;
  @useResult
  $Res call(
      {BodyCompositionAnalysisModel weightInfoDto,
      BodyCompositionAnalysisModel skeletalMuscleMassInfoDto,
      BodyCompositionAnalysisModel bodyFatInfoDto,
      BodyCompositionAnalysisModel bodyFatPercentageInfoDto});

  $BodyCompositionAnalysisModelCopyWith<$Res> get weightInfoDto;
  $BodyCompositionAnalysisModelCopyWith<$Res> get skeletalMuscleMassInfoDto;
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatInfoDto;
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatPercentageInfoDto;
}

/// @nodoc
class _$ResponseBodyCompositionAnalysisCopyWithImpl<$Res,
        $Val extends ResponseBodyCompositionAnalysis>
    implements $ResponseBodyCompositionAnalysisCopyWith<$Res> {
  _$ResponseBodyCompositionAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weightInfoDto = null,
    Object? skeletalMuscleMassInfoDto = null,
    Object? bodyFatInfoDto = null,
    Object? bodyFatPercentageInfoDto = null,
  }) {
    return _then(_value.copyWith(
      weightInfoDto: null == weightInfoDto
          ? _value.weightInfoDto
          : weightInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      skeletalMuscleMassInfoDto: null == skeletalMuscleMassInfoDto
          ? _value.skeletalMuscleMassInfoDto
          : skeletalMuscleMassInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      bodyFatInfoDto: null == bodyFatInfoDto
          ? _value.bodyFatInfoDto
          : bodyFatInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      bodyFatPercentageInfoDto: null == bodyFatPercentageInfoDto
          ? _value.bodyFatPercentageInfoDto
          : bodyFatPercentageInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
    ) as $Val);
  }

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCompositionAnalysisModelCopyWith<$Res> get weightInfoDto {
    return $BodyCompositionAnalysisModelCopyWith<$Res>(_value.weightInfoDto,
        (value) {
      return _then(_value.copyWith(weightInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCompositionAnalysisModelCopyWith<$Res> get skeletalMuscleMassInfoDto {
    return $BodyCompositionAnalysisModelCopyWith<$Res>(
        _value.skeletalMuscleMassInfoDto, (value) {
      return _then(_value.copyWith(skeletalMuscleMassInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatInfoDto {
    return $BodyCompositionAnalysisModelCopyWith<$Res>(_value.bodyFatInfoDto,
        (value) {
      return _then(_value.copyWith(bodyFatInfoDto: value) as $Val);
    });
  }

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatPercentageInfoDto {
    return $BodyCompositionAnalysisModelCopyWith<$Res>(
        _value.bodyFatPercentageInfoDto, (value) {
      return _then(_value.copyWith(bodyFatPercentageInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBodyCompositionAnalysisImplCopyWith<$Res>
    implements $ResponseBodyCompositionAnalysisCopyWith<$Res> {
  factory _$$ResponseBodyCompositionAnalysisImplCopyWith(
          _$ResponseBodyCompositionAnalysisImpl value,
          $Res Function(_$ResponseBodyCompositionAnalysisImpl) then) =
      __$$ResponseBodyCompositionAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BodyCompositionAnalysisModel weightInfoDto,
      BodyCompositionAnalysisModel skeletalMuscleMassInfoDto,
      BodyCompositionAnalysisModel bodyFatInfoDto,
      BodyCompositionAnalysisModel bodyFatPercentageInfoDto});

  @override
  $BodyCompositionAnalysisModelCopyWith<$Res> get weightInfoDto;
  @override
  $BodyCompositionAnalysisModelCopyWith<$Res> get skeletalMuscleMassInfoDto;
  @override
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatInfoDto;
  @override
  $BodyCompositionAnalysisModelCopyWith<$Res> get bodyFatPercentageInfoDto;
}

/// @nodoc
class __$$ResponseBodyCompositionAnalysisImplCopyWithImpl<$Res>
    extends _$ResponseBodyCompositionAnalysisCopyWithImpl<$Res,
        _$ResponseBodyCompositionAnalysisImpl>
    implements _$$ResponseBodyCompositionAnalysisImplCopyWith<$Res> {
  __$$ResponseBodyCompositionAnalysisImplCopyWithImpl(
      _$ResponseBodyCompositionAnalysisImpl _value,
      $Res Function(_$ResponseBodyCompositionAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weightInfoDto = null,
    Object? skeletalMuscleMassInfoDto = null,
    Object? bodyFatInfoDto = null,
    Object? bodyFatPercentageInfoDto = null,
  }) {
    return _then(_$ResponseBodyCompositionAnalysisImpl(
      weightInfoDto: null == weightInfoDto
          ? _value.weightInfoDto
          : weightInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      skeletalMuscleMassInfoDto: null == skeletalMuscleMassInfoDto
          ? _value.skeletalMuscleMassInfoDto
          : skeletalMuscleMassInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      bodyFatInfoDto: null == bodyFatInfoDto
          ? _value.bodyFatInfoDto
          : bodyFatInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
      bodyFatPercentageInfoDto: null == bodyFatPercentageInfoDto
          ? _value.bodyFatPercentageInfoDto
          : bodyFatPercentageInfoDto // ignore: cast_nullable_to_non_nullable
              as BodyCompositionAnalysisModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyCompositionAnalysisImpl
    implements _ResponseBodyCompositionAnalysis {
  const _$ResponseBodyCompositionAnalysisImpl(
      {this.weightInfoDto = const BodyCompositionAnalysisModel(),
      this.skeletalMuscleMassInfoDto = const BodyCompositionAnalysisModel(),
      this.bodyFatInfoDto = const BodyCompositionAnalysisModel(),
      this.bodyFatPercentageInfoDto = const BodyCompositionAnalysisModel()});

  factory _$ResponseBodyCompositionAnalysisImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBodyCompositionAnalysisImplFromJson(json);

  @override
  @JsonKey()
  final BodyCompositionAnalysisModel weightInfoDto;
  @override
  @JsonKey()
  final BodyCompositionAnalysisModel skeletalMuscleMassInfoDto;
  @override
  @JsonKey()
  final BodyCompositionAnalysisModel bodyFatInfoDto;
  @override
  @JsonKey()
  final BodyCompositionAnalysisModel bodyFatPercentageInfoDto;

  @override
  String toString() {
    return 'ResponseBodyCompositionAnalysis(weightInfoDto: $weightInfoDto, skeletalMuscleMassInfoDto: $skeletalMuscleMassInfoDto, bodyFatInfoDto: $bodyFatInfoDto, bodyFatPercentageInfoDto: $bodyFatPercentageInfoDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyCompositionAnalysisImpl &&
            (identical(other.weightInfoDto, weightInfoDto) ||
                other.weightInfoDto == weightInfoDto) &&
            (identical(other.skeletalMuscleMassInfoDto,
                    skeletalMuscleMassInfoDto) ||
                other.skeletalMuscleMassInfoDto == skeletalMuscleMassInfoDto) &&
            (identical(other.bodyFatInfoDto, bodyFatInfoDto) ||
                other.bodyFatInfoDto == bodyFatInfoDto) &&
            (identical(
                    other.bodyFatPercentageInfoDto, bodyFatPercentageInfoDto) ||
                other.bodyFatPercentageInfoDto == bodyFatPercentageInfoDto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weightInfoDto,
      skeletalMuscleMassInfoDto, bodyFatInfoDto, bodyFatPercentageInfoDto);

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyCompositionAnalysisImplCopyWith<
          _$ResponseBodyCompositionAnalysisImpl>
      get copyWith => __$$ResponseBodyCompositionAnalysisImplCopyWithImpl<
          _$ResponseBodyCompositionAnalysisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyCompositionAnalysisImplToJson(
      this,
    );
  }
}

abstract class _ResponseBodyCompositionAnalysis
    implements ResponseBodyCompositionAnalysis {
  const factory _ResponseBodyCompositionAnalysis(
          {final BodyCompositionAnalysisModel weightInfoDto,
          final BodyCompositionAnalysisModel skeletalMuscleMassInfoDto,
          final BodyCompositionAnalysisModel bodyFatInfoDto,
          final BodyCompositionAnalysisModel bodyFatPercentageInfoDto}) =
      _$ResponseBodyCompositionAnalysisImpl;

  factory _ResponseBodyCompositionAnalysis.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyCompositionAnalysisImpl.fromJson;

  @override
  BodyCompositionAnalysisModel get weightInfoDto;
  @override
  BodyCompositionAnalysisModel get skeletalMuscleMassInfoDto;
  @override
  BodyCompositionAnalysisModel get bodyFatInfoDto;
  @override
  BodyCompositionAnalysisModel get bodyFatPercentageInfoDto;

  /// Create a copy of ResponseBodyCompositionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseBodyCompositionAnalysisImplCopyWith<
          _$ResponseBodyCompositionAnalysisImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BodyCompositionAnalysisModel _$BodyCompositionAnalysisModelFromJson(
    Map<String, dynamic> json) {
  return _BodyCompositionAnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$BodyCompositionAnalysisModel {
  String get currentInBodyInfoOfCategory => throw _privateConstructorUsedError;
  String get inBodyCategory => throw _privateConstructorUsedError;
  String get compareToFirstInfo => throw _privateConstructorUsedError;
  String get compareToPreviousInfo => throw _privateConstructorUsedError;
  List<BodyCompositionValueModel> get dateAndInfoDtoList =>
      throw _privateConstructorUsedError;

  /// Serializes this BodyCompositionAnalysisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyCompositionAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyCompositionAnalysisModelCopyWith<BodyCompositionAnalysisModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCompositionAnalysisModelCopyWith<$Res> {
  factory $BodyCompositionAnalysisModelCopyWith(
          BodyCompositionAnalysisModel value,
          $Res Function(BodyCompositionAnalysisModel) then) =
      _$BodyCompositionAnalysisModelCopyWithImpl<$Res,
          BodyCompositionAnalysisModel>;
  @useResult
  $Res call(
      {String currentInBodyInfoOfCategory,
      String inBodyCategory,
      String compareToFirstInfo,
      String compareToPreviousInfo,
      List<BodyCompositionValueModel> dateAndInfoDtoList});
}

/// @nodoc
class _$BodyCompositionAnalysisModelCopyWithImpl<$Res,
        $Val extends BodyCompositionAnalysisModel>
    implements $BodyCompositionAnalysisModelCopyWith<$Res> {
  _$BodyCompositionAnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyCompositionAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentInBodyInfoOfCategory = null,
    Object? inBodyCategory = null,
    Object? compareToFirstInfo = null,
    Object? compareToPreviousInfo = null,
    Object? dateAndInfoDtoList = null,
  }) {
    return _then(_value.copyWith(
      currentInBodyInfoOfCategory: null == currentInBodyInfoOfCategory
          ? _value.currentInBodyInfoOfCategory
          : currentInBodyInfoOfCategory // ignore: cast_nullable_to_non_nullable
              as String,
      inBodyCategory: null == inBodyCategory
          ? _value.inBodyCategory
          : inBodyCategory // ignore: cast_nullable_to_non_nullable
              as String,
      compareToFirstInfo: null == compareToFirstInfo
          ? _value.compareToFirstInfo
          : compareToFirstInfo // ignore: cast_nullable_to_non_nullable
              as String,
      compareToPreviousInfo: null == compareToPreviousInfo
          ? _value.compareToPreviousInfo
          : compareToPreviousInfo // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndInfoDtoList: null == dateAndInfoDtoList
          ? _value.dateAndInfoDtoList
          : dateAndInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<BodyCompositionValueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyCompositionAnalysisModelImplCopyWith<$Res>
    implements $BodyCompositionAnalysisModelCopyWith<$Res> {
  factory _$$BodyCompositionAnalysisModelImplCopyWith(
          _$BodyCompositionAnalysisModelImpl value,
          $Res Function(_$BodyCompositionAnalysisModelImpl) then) =
      __$$BodyCompositionAnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentInBodyInfoOfCategory,
      String inBodyCategory,
      String compareToFirstInfo,
      String compareToPreviousInfo,
      List<BodyCompositionValueModel> dateAndInfoDtoList});
}

/// @nodoc
class __$$BodyCompositionAnalysisModelImplCopyWithImpl<$Res>
    extends _$BodyCompositionAnalysisModelCopyWithImpl<$Res,
        _$BodyCompositionAnalysisModelImpl>
    implements _$$BodyCompositionAnalysisModelImplCopyWith<$Res> {
  __$$BodyCompositionAnalysisModelImplCopyWithImpl(
      _$BodyCompositionAnalysisModelImpl _value,
      $Res Function(_$BodyCompositionAnalysisModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyCompositionAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentInBodyInfoOfCategory = null,
    Object? inBodyCategory = null,
    Object? compareToFirstInfo = null,
    Object? compareToPreviousInfo = null,
    Object? dateAndInfoDtoList = null,
  }) {
    return _then(_$BodyCompositionAnalysisModelImpl(
      currentInBodyInfoOfCategory: null == currentInBodyInfoOfCategory
          ? _value.currentInBodyInfoOfCategory
          : currentInBodyInfoOfCategory // ignore: cast_nullable_to_non_nullable
              as String,
      inBodyCategory: null == inBodyCategory
          ? _value.inBodyCategory
          : inBodyCategory // ignore: cast_nullable_to_non_nullable
              as String,
      compareToFirstInfo: null == compareToFirstInfo
          ? _value.compareToFirstInfo
          : compareToFirstInfo // ignore: cast_nullable_to_non_nullable
              as String,
      compareToPreviousInfo: null == compareToPreviousInfo
          ? _value.compareToPreviousInfo
          : compareToPreviousInfo // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndInfoDtoList: null == dateAndInfoDtoList
          ? _value._dateAndInfoDtoList
          : dateAndInfoDtoList // ignore: cast_nullable_to_non_nullable
              as List<BodyCompositionValueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyCompositionAnalysisModelImpl
    implements _BodyCompositionAnalysisModel {
  const _$BodyCompositionAnalysisModelImpl(
      {this.currentInBodyInfoOfCategory = "0.0",
      this.inBodyCategory = "",
      this.compareToFirstInfo = "0.0",
      this.compareToPreviousInfo = "0.0",
      final List<BodyCompositionValueModel> dateAndInfoDtoList = const []})
      : _dateAndInfoDtoList = dateAndInfoDtoList;

  factory _$BodyCompositionAnalysisModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyCompositionAnalysisModelImplFromJson(json);

  @override
  @JsonKey()
  final String currentInBodyInfoOfCategory;
  @override
  @JsonKey()
  final String inBodyCategory;
  @override
  @JsonKey()
  final String compareToFirstInfo;
  @override
  @JsonKey()
  final String compareToPreviousInfo;
  final List<BodyCompositionValueModel> _dateAndInfoDtoList;
  @override
  @JsonKey()
  List<BodyCompositionValueModel> get dateAndInfoDtoList {
    if (_dateAndInfoDtoList is EqualUnmodifiableListView)
      return _dateAndInfoDtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateAndInfoDtoList);
  }

  @override
  String toString() {
    return 'BodyCompositionAnalysisModel(currentInBodyInfoOfCategory: $currentInBodyInfoOfCategory, inBodyCategory: $inBodyCategory, compareToFirstInfo: $compareToFirstInfo, compareToPreviousInfo: $compareToPreviousInfo, dateAndInfoDtoList: $dateAndInfoDtoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyCompositionAnalysisModelImpl &&
            (identical(other.currentInBodyInfoOfCategory,
                    currentInBodyInfoOfCategory) ||
                other.currentInBodyInfoOfCategory ==
                    currentInBodyInfoOfCategory) &&
            (identical(other.inBodyCategory, inBodyCategory) ||
                other.inBodyCategory == inBodyCategory) &&
            (identical(other.compareToFirstInfo, compareToFirstInfo) ||
                other.compareToFirstInfo == compareToFirstInfo) &&
            (identical(other.compareToPreviousInfo, compareToPreviousInfo) ||
                other.compareToPreviousInfo == compareToPreviousInfo) &&
            const DeepCollectionEquality()
                .equals(other._dateAndInfoDtoList, _dateAndInfoDtoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentInBodyInfoOfCategory,
      inBodyCategory,
      compareToFirstInfo,
      compareToPreviousInfo,
      const DeepCollectionEquality().hash(_dateAndInfoDtoList));

  /// Create a copy of BodyCompositionAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyCompositionAnalysisModelImplCopyWith<
          _$BodyCompositionAnalysisModelImpl>
      get copyWith => __$$BodyCompositionAnalysisModelImplCopyWithImpl<
          _$BodyCompositionAnalysisModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyCompositionAnalysisModelImplToJson(
      this,
    );
  }
}

abstract class _BodyCompositionAnalysisModel
    implements BodyCompositionAnalysisModel {
  const factory _BodyCompositionAnalysisModel(
          {final String currentInBodyInfoOfCategory,
          final String inBodyCategory,
          final String compareToFirstInfo,
          final String compareToPreviousInfo,
          final List<BodyCompositionValueModel> dateAndInfoDtoList}) =
      _$BodyCompositionAnalysisModelImpl;

  factory _BodyCompositionAnalysisModel.fromJson(Map<String, dynamic> json) =
      _$BodyCompositionAnalysisModelImpl.fromJson;

  @override
  String get currentInBodyInfoOfCategory;
  @override
  String get inBodyCategory;
  @override
  String get compareToFirstInfo;
  @override
  String get compareToPreviousInfo;
  @override
  List<BodyCompositionValueModel> get dateAndInfoDtoList;

  /// Create a copy of BodyCompositionAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyCompositionAnalysisModelImplCopyWith<
          _$BodyCompositionAnalysisModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BodyCompositionValueModel _$BodyCompositionValueModelFromJson(
    Map<String, dynamic> json) {
  return _BodyCompositionValueModel.fromJson(json);
}

/// @nodoc
mixin _$BodyCompositionValueModel {
  String get createdDate => throw _privateConstructorUsedError;
  double get information => throw _privateConstructorUsedError;

  /// Serializes this BodyCompositionValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyCompositionValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyCompositionValueModelCopyWith<BodyCompositionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCompositionValueModelCopyWith<$Res> {
  factory $BodyCompositionValueModelCopyWith(BodyCompositionValueModel value,
          $Res Function(BodyCompositionValueModel) then) =
      _$BodyCompositionValueModelCopyWithImpl<$Res, BodyCompositionValueModel>;
  @useResult
  $Res call({String createdDate, double information});
}

/// @nodoc
class _$BodyCompositionValueModelCopyWithImpl<$Res,
        $Val extends BodyCompositionValueModel>
    implements $BodyCompositionValueModelCopyWith<$Res> {
  _$BodyCompositionValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyCompositionValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? information = null,
  }) {
    return _then(_value.copyWith(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyCompositionValueModelImplCopyWith<$Res>
    implements $BodyCompositionValueModelCopyWith<$Res> {
  factory _$$BodyCompositionValueModelImplCopyWith(
          _$BodyCompositionValueModelImpl value,
          $Res Function(_$BodyCompositionValueModelImpl) then) =
      __$$BodyCompositionValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String createdDate, double information});
}

/// @nodoc
class __$$BodyCompositionValueModelImplCopyWithImpl<$Res>
    extends _$BodyCompositionValueModelCopyWithImpl<$Res,
        _$BodyCompositionValueModelImpl>
    implements _$$BodyCompositionValueModelImplCopyWith<$Res> {
  __$$BodyCompositionValueModelImplCopyWithImpl(
      _$BodyCompositionValueModelImpl _value,
      $Res Function(_$BodyCompositionValueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyCompositionValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? information = null,
  }) {
    return _then(_$BodyCompositionValueModelImpl(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyCompositionValueModelImpl implements _BodyCompositionValueModel {
  _$BodyCompositionValueModelImpl(
      {this.createdDate = "", this.information = 0.0});

  factory _$BodyCompositionValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyCompositionValueModelImplFromJson(json);

  @override
  @JsonKey()
  final String createdDate;
  @override
  @JsonKey()
  final double information;

  @override
  String toString() {
    return 'BodyCompositionValueModel(createdDate: $createdDate, information: $information)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyCompositionValueModelImpl &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.information, information) ||
                other.information == information));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdDate, information);

  /// Create a copy of BodyCompositionValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyCompositionValueModelImplCopyWith<_$BodyCompositionValueModelImpl>
      get copyWith => __$$BodyCompositionValueModelImplCopyWithImpl<
          _$BodyCompositionValueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyCompositionValueModelImplToJson(
      this,
    );
  }
}

abstract class _BodyCompositionValueModel implements BodyCompositionValueModel {
  factory _BodyCompositionValueModel(
      {final String createdDate,
      final double information}) = _$BodyCompositionValueModelImpl;

  factory _BodyCompositionValueModel.fromJson(Map<String, dynamic> json) =
      _$BodyCompositionValueModelImpl.fromJson;

  @override
  String get createdDate;
  @override
  double get information;

  /// Create a copy of BodyCompositionValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyCompositionValueModelImplCopyWith<_$BodyCompositionValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
