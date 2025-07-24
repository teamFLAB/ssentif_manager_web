// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'managed_members_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManagedMembersState {
  UserEntity? get selectedCoach => throw _privateConstructorUsedError;
  List<ClientListEntity> get managedMembers =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get searchKeyword => throw _privateConstructorUsedError;
  bool get onlyMatchedClients => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagedMembersStateCopyWith<ManagedMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedMembersStateCopyWith<$Res> {
  factory $ManagedMembersStateCopyWith(
          ManagedMembersState value, $Res Function(ManagedMembersState) then) =
      _$ManagedMembersStateCopyWithImpl<$Res, ManagedMembersState>;
  @useResult
  $Res call(
      {UserEntity? selectedCoach,
      List<ClientListEntity> managedMembers,
      bool isLoading,
      String searchKeyword,
      bool onlyMatchedClients,
      String errorMessage});

  $UserEntityCopyWith<$Res>? get selectedCoach;
}

/// @nodoc
class _$ManagedMembersStateCopyWithImpl<$Res, $Val extends ManagedMembersState>
    implements $ManagedMembersStateCopyWith<$Res> {
  _$ManagedMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCoach = freezed,
    Object? managedMembers = null,
    Object? isLoading = null,
    Object? searchKeyword = null,
    Object? onlyMatchedClients = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      managedMembers: null == managedMembers
          ? _value.managedMembers
          : managedMembers // ignore: cast_nullable_to_non_nullable
              as List<ClientListEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKeyword: null == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      onlyMatchedClients: null == onlyMatchedClients
          ? _value.onlyMatchedClients
          : onlyMatchedClients // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get selectedCoach {
    if (_value.selectedCoach == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.selectedCoach!, (value) {
      return _then(_value.copyWith(selectedCoach: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManagedMembersStateImplCopyWith<$Res>
    implements $ManagedMembersStateCopyWith<$Res> {
  factory _$$ManagedMembersStateImplCopyWith(_$ManagedMembersStateImpl value,
          $Res Function(_$ManagedMembersStateImpl) then) =
      __$$ManagedMembersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserEntity? selectedCoach,
      List<ClientListEntity> managedMembers,
      bool isLoading,
      String searchKeyword,
      bool onlyMatchedClients,
      String errorMessage});

  @override
  $UserEntityCopyWith<$Res>? get selectedCoach;
}

/// @nodoc
class __$$ManagedMembersStateImplCopyWithImpl<$Res>
    extends _$ManagedMembersStateCopyWithImpl<$Res, _$ManagedMembersStateImpl>
    implements _$$ManagedMembersStateImplCopyWith<$Res> {
  __$$ManagedMembersStateImplCopyWithImpl(_$ManagedMembersStateImpl _value,
      $Res Function(_$ManagedMembersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCoach = freezed,
    Object? managedMembers = null,
    Object? isLoading = null,
    Object? searchKeyword = null,
    Object? onlyMatchedClients = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ManagedMembersStateImpl(
      selectedCoach: freezed == selectedCoach
          ? _value.selectedCoach
          : selectedCoach // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      managedMembers: null == managedMembers
          ? _value._managedMembers
          : managedMembers // ignore: cast_nullable_to_non_nullable
              as List<ClientListEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKeyword: null == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      onlyMatchedClients: null == onlyMatchedClients
          ? _value.onlyMatchedClients
          : onlyMatchedClients // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ManagedMembersStateImpl implements _ManagedMembersState {
  const _$ManagedMembersStateImpl(
      {this.selectedCoach,
      final List<ClientListEntity> managedMembers = const [],
      this.isLoading = false,
      this.searchKeyword = "",
      this.onlyMatchedClients = false,
      this.errorMessage = ""})
      : _managedMembers = managedMembers;

  @override
  final UserEntity? selectedCoach;
  final List<ClientListEntity> _managedMembers;
  @override
  @JsonKey()
  List<ClientListEntity> get managedMembers {
    if (_managedMembers is EqualUnmodifiableListView) return _managedMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managedMembers);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String searchKeyword;
  @override
  @JsonKey()
  final bool onlyMatchedClients;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ManagedMembersState(selectedCoach: $selectedCoach, managedMembers: $managedMembers, isLoading: $isLoading, searchKeyword: $searchKeyword, onlyMatchedClients: $onlyMatchedClients, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagedMembersStateImpl &&
            (identical(other.selectedCoach, selectedCoach) ||
                other.selectedCoach == selectedCoach) &&
            const DeepCollectionEquality()
                .equals(other._managedMembers, _managedMembers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchKeyword, searchKeyword) ||
                other.searchKeyword == searchKeyword) &&
            (identical(other.onlyMatchedClients, onlyMatchedClients) ||
                other.onlyMatchedClients == onlyMatchedClients) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCoach,
      const DeepCollectionEquality().hash(_managedMembers),
      isLoading,
      searchKeyword,
      onlyMatchedClients,
      errorMessage);

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagedMembersStateImplCopyWith<_$ManagedMembersStateImpl> get copyWith =>
      __$$ManagedMembersStateImplCopyWithImpl<_$ManagedMembersStateImpl>(
          this, _$identity);
}

abstract class _ManagedMembersState implements ManagedMembersState {
  const factory _ManagedMembersState(
      {final UserEntity? selectedCoach,
      final List<ClientListEntity> managedMembers,
      final bool isLoading,
      final String searchKeyword,
      final bool onlyMatchedClients,
      final String errorMessage}) = _$ManagedMembersStateImpl;

  @override
  UserEntity? get selectedCoach;
  @override
  List<ClientListEntity> get managedMembers;
  @override
  bool get isLoading;
  @override
  String get searchKeyword;
  @override
  bool get onlyMatchedClients;
  @override
  String get errorMessage;

  /// Create a copy of ManagedMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagedMembersStateImplCopyWith<_$ManagedMembersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
