// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DietDetailState {
  int get selectedDietId => throw _privateConstructorUsedError;
  int get clientId => throw _privateConstructorUsedError;
  List<int> get dietIds => throw _privateConstructorUsedError;
  List<DietEntity> get dietList => throw _privateConstructorUsedError;
  DietEntity? get selectedDiet => throw _privateConstructorUsedError;
  bool get isTrainer => throw _privateConstructorUsedError;

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietDetailStateCopyWith<DietDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDetailStateCopyWith<$Res> {
  factory $DietDetailStateCopyWith(
          DietDetailState value, $Res Function(DietDetailState) then) =
      _$DietDetailStateCopyWithImpl<$Res, DietDetailState>;
  @useResult
  $Res call(
      {int selectedDietId,
      int clientId,
      List<int> dietIds,
      List<DietEntity> dietList,
      DietEntity? selectedDiet,
      bool isTrainer});

  $DietEntityCopyWith<$Res>? get selectedDiet;
}

/// @nodoc
class _$DietDetailStateCopyWithImpl<$Res, $Val extends DietDetailState>
    implements $DietDetailStateCopyWith<$Res> {
  _$DietDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDietId = null,
    Object? clientId = null,
    Object? dietIds = null,
    Object? dietList = null,
    Object? selectedDiet = freezed,
    Object? isTrainer = null,
  }) {
    return _then(_value.copyWith(
      selectedDietId: null == selectedDietId
          ? _value.selectedDietId
          : selectedDietId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      dietIds: null == dietIds
          ? _value.dietIds
          : dietIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dietList: null == dietList
          ? _value.dietList
          : dietList // ignore: cast_nullable_to_non_nullable
              as List<DietEntity>,
      selectedDiet: freezed == selectedDiet
          ? _value.selectedDiet
          : selectedDiet // ignore: cast_nullable_to_non_nullable
              as DietEntity?,
      isTrainer: null == isTrainer
          ? _value.isTrainer
          : isTrainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietEntityCopyWith<$Res>? get selectedDiet {
    if (_value.selectedDiet == null) {
      return null;
    }

    return $DietEntityCopyWith<$Res>(_value.selectedDiet!, (value) {
      return _then(_value.copyWith(selectedDiet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DietDetailStateImplCopyWith<$Res>
    implements $DietDetailStateCopyWith<$Res> {
  factory _$$DietDetailStateImplCopyWith(_$DietDetailStateImpl value,
          $Res Function(_$DietDetailStateImpl) then) =
      __$$DietDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedDietId,
      int clientId,
      List<int> dietIds,
      List<DietEntity> dietList,
      DietEntity? selectedDiet,
      bool isTrainer});

  @override
  $DietEntityCopyWith<$Res>? get selectedDiet;
}

/// @nodoc
class __$$DietDetailStateImplCopyWithImpl<$Res>
    extends _$DietDetailStateCopyWithImpl<$Res, _$DietDetailStateImpl>
    implements _$$DietDetailStateImplCopyWith<$Res> {
  __$$DietDetailStateImplCopyWithImpl(
      _$DietDetailStateImpl _value, $Res Function(_$DietDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDietId = null,
    Object? clientId = null,
    Object? dietIds = null,
    Object? dietList = null,
    Object? selectedDiet = freezed,
    Object? isTrainer = null,
  }) {
    return _then(_$DietDetailStateImpl(
      selectedDietId: null == selectedDietId
          ? _value.selectedDietId
          : selectedDietId // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      dietIds: null == dietIds
          ? _value._dietIds
          : dietIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dietList: null == dietList
          ? _value._dietList
          : dietList // ignore: cast_nullable_to_non_nullable
              as List<DietEntity>,
      selectedDiet: freezed == selectedDiet
          ? _value.selectedDiet
          : selectedDiet // ignore: cast_nullable_to_non_nullable
              as DietEntity?,
      isTrainer: null == isTrainer
          ? _value.isTrainer
          : isTrainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DietDetailStateImpl implements _DietDetailState {
  const _$DietDetailStateImpl(
      {this.selectedDietId = -1,
      this.clientId = -1,
      final List<int> dietIds = const [],
      final List<DietEntity> dietList = const [],
      this.selectedDiet,
      this.isTrainer = false})
      : _dietIds = dietIds,
        _dietList = dietList;

  @override
  @JsonKey()
  final int selectedDietId;
  @override
  @JsonKey()
  final int clientId;
  final List<int> _dietIds;
  @override
  @JsonKey()
  List<int> get dietIds {
    if (_dietIds is EqualUnmodifiableListView) return _dietIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietIds);
  }

  final List<DietEntity> _dietList;
  @override
  @JsonKey()
  List<DietEntity> get dietList {
    if (_dietList is EqualUnmodifiableListView) return _dietList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietList);
  }

  @override
  final DietEntity? selectedDiet;
  @override
  @JsonKey()
  final bool isTrainer;

  @override
  String toString() {
    return 'DietDetailState(selectedDietId: $selectedDietId, clientId: $clientId, dietIds: $dietIds, dietList: $dietList, selectedDiet: $selectedDiet, isTrainer: $isTrainer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietDetailStateImpl &&
            (identical(other.selectedDietId, selectedDietId) ||
                other.selectedDietId == selectedDietId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            const DeepCollectionEquality().equals(other._dietIds, _dietIds) &&
            const DeepCollectionEquality().equals(other._dietList, _dietList) &&
            (identical(other.selectedDiet, selectedDiet) ||
                other.selectedDiet == selectedDiet) &&
            (identical(other.isTrainer, isTrainer) ||
                other.isTrainer == isTrainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDietId,
      clientId,
      const DeepCollectionEquality().hash(_dietIds),
      const DeepCollectionEquality().hash(_dietList),
      selectedDiet,
      isTrainer);

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      __$$DietDetailStateImplCopyWithImpl<_$DietDetailStateImpl>(
          this, _$identity);
}

abstract class _DietDetailState implements DietDetailState {
  const factory _DietDetailState(
      {final int selectedDietId,
      final int clientId,
      final List<int> dietIds,
      final List<DietEntity> dietList,
      final DietEntity? selectedDiet,
      final bool isTrainer}) = _$DietDetailStateImpl;

  @override
  int get selectedDietId;
  @override
  int get clientId;
  @override
  List<int> get dietIds;
  @override
  List<DietEntity> get dietList;
  @override
  DietEntity? get selectedDiet;
  @override
  bool get isTrainer;

  /// Create a copy of DietDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
