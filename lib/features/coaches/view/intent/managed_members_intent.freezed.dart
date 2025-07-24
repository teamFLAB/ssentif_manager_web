// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'managed_members_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManagedMembersIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchMembers,
    required TResult Function(bool onlyMatched) toggleMatchedClients,
    required TResult Function(ClientListEntity member) clickMemberProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchMembers,
    TResult? Function(bool onlyMatched)? toggleMatchedClients,
    TResult? Function(ClientListEntity member)? clickMemberProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchMembers,
    TResult Function(bool onlyMatched)? toggleMatchedClients,
    TResult Function(ClientListEntity member)? clickMemberProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMembers value) searchMembers,
    required TResult Function(_ToggleMatchedClients value) toggleMatchedClients,
    required TResult Function(_ClickMemberProfile value) clickMemberProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMembers value)? searchMembers,
    TResult? Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult? Function(_ClickMemberProfile value)? clickMemberProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMembers value)? searchMembers,
    TResult Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult Function(_ClickMemberProfile value)? clickMemberProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedMembersIntentCopyWith<$Res> {
  factory $ManagedMembersIntentCopyWith(ManagedMembersIntent value,
          $Res Function(ManagedMembersIntent) then) =
      _$ManagedMembersIntentCopyWithImpl<$Res, ManagedMembersIntent>;
}

/// @nodoc
class _$ManagedMembersIntentCopyWithImpl<$Res,
        $Val extends ManagedMembersIntent>
    implements $ManagedMembersIntentCopyWith<$Res> {
  _$ManagedMembersIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchMembersImplCopyWith<$Res> {
  factory _$$SearchMembersImplCopyWith(
          _$SearchMembersImpl value, $Res Function(_$SearchMembersImpl) then) =
      __$$SearchMembersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchMembersImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$SearchMembersImpl>
    implements _$$SearchMembersImplCopyWith<$Res> {
  __$$SearchMembersImplCopyWithImpl(
      _$SearchMembersImpl _value, $Res Function(_$SearchMembersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchMembersImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMembersImpl implements _SearchMembers {
  const _$SearchMembersImpl({required this.keyword});

  @override
  final String keyword;

  @override
  String toString() {
    return 'ManagedMembersIntent.searchMembers(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMembersImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMembersImplCopyWith<_$SearchMembersImpl> get copyWith =>
      __$$SearchMembersImplCopyWithImpl<_$SearchMembersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchMembers,
    required TResult Function(bool onlyMatched) toggleMatchedClients,
    required TResult Function(ClientListEntity member) clickMemberProfile,
  }) {
    return searchMembers(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchMembers,
    TResult? Function(bool onlyMatched)? toggleMatchedClients,
    TResult? Function(ClientListEntity member)? clickMemberProfile,
  }) {
    return searchMembers?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchMembers,
    TResult Function(bool onlyMatched)? toggleMatchedClients,
    TResult Function(ClientListEntity member)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (searchMembers != null) {
      return searchMembers(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMembers value) searchMembers,
    required TResult Function(_ToggleMatchedClients value) toggleMatchedClients,
    required TResult Function(_ClickMemberProfile value) clickMemberProfile,
  }) {
    return searchMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMembers value)? searchMembers,
    TResult? Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult? Function(_ClickMemberProfile value)? clickMemberProfile,
  }) {
    return searchMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMembers value)? searchMembers,
    TResult Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult Function(_ClickMemberProfile value)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (searchMembers != null) {
      return searchMembers(this);
    }
    return orElse();
  }
}

abstract class _SearchMembers implements ManagedMembersIntent {
  const factory _SearchMembers({required final String keyword}) =
      _$SearchMembersImpl;

  String get keyword;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMembersImplCopyWith<_$SearchMembersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleMatchedClientsImplCopyWith<$Res> {
  factory _$$ToggleMatchedClientsImplCopyWith(_$ToggleMatchedClientsImpl value,
          $Res Function(_$ToggleMatchedClientsImpl) then) =
      __$$ToggleMatchedClientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool onlyMatched});
}

/// @nodoc
class __$$ToggleMatchedClientsImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$ToggleMatchedClientsImpl>
    implements _$$ToggleMatchedClientsImplCopyWith<$Res> {
  __$$ToggleMatchedClientsImplCopyWithImpl(_$ToggleMatchedClientsImpl _value,
      $Res Function(_$ToggleMatchedClientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlyMatched = null,
  }) {
    return _then(_$ToggleMatchedClientsImpl(
      onlyMatched: null == onlyMatched
          ? _value.onlyMatched
          : onlyMatched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleMatchedClientsImpl implements _ToggleMatchedClients {
  const _$ToggleMatchedClientsImpl({required this.onlyMatched});

  @override
  final bool onlyMatched;

  @override
  String toString() {
    return 'ManagedMembersIntent.toggleMatchedClients(onlyMatched: $onlyMatched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleMatchedClientsImpl &&
            (identical(other.onlyMatched, onlyMatched) ||
                other.onlyMatched == onlyMatched));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onlyMatched);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleMatchedClientsImplCopyWith<_$ToggleMatchedClientsImpl>
      get copyWith =>
          __$$ToggleMatchedClientsImplCopyWithImpl<_$ToggleMatchedClientsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchMembers,
    required TResult Function(bool onlyMatched) toggleMatchedClients,
    required TResult Function(ClientListEntity member) clickMemberProfile,
  }) {
    return toggleMatchedClients(onlyMatched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchMembers,
    TResult? Function(bool onlyMatched)? toggleMatchedClients,
    TResult? Function(ClientListEntity member)? clickMemberProfile,
  }) {
    return toggleMatchedClients?.call(onlyMatched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchMembers,
    TResult Function(bool onlyMatched)? toggleMatchedClients,
    TResult Function(ClientListEntity member)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (toggleMatchedClients != null) {
      return toggleMatchedClients(onlyMatched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMembers value) searchMembers,
    required TResult Function(_ToggleMatchedClients value) toggleMatchedClients,
    required TResult Function(_ClickMemberProfile value) clickMemberProfile,
  }) {
    return toggleMatchedClients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMembers value)? searchMembers,
    TResult? Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult? Function(_ClickMemberProfile value)? clickMemberProfile,
  }) {
    return toggleMatchedClients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMembers value)? searchMembers,
    TResult Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult Function(_ClickMemberProfile value)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (toggleMatchedClients != null) {
      return toggleMatchedClients(this);
    }
    return orElse();
  }
}

abstract class _ToggleMatchedClients implements ManagedMembersIntent {
  const factory _ToggleMatchedClients({required final bool onlyMatched}) =
      _$ToggleMatchedClientsImpl;

  bool get onlyMatched;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleMatchedClientsImplCopyWith<_$ToggleMatchedClientsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickMemberProfileImplCopyWith<$Res> {
  factory _$$ClickMemberProfileImplCopyWith(_$ClickMemberProfileImpl value,
          $Res Function(_$ClickMemberProfileImpl) then) =
      __$$ClickMemberProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientListEntity member});

  $ClientListEntityCopyWith<$Res> get member;
}

/// @nodoc
class __$$ClickMemberProfileImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$ClickMemberProfileImpl>
    implements _$$ClickMemberProfileImplCopyWith<$Res> {
  __$$ClickMemberProfileImplCopyWithImpl(_$ClickMemberProfileImpl _value,
      $Res Function(_$ClickMemberProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
  }) {
    return _then(_$ClickMemberProfileImpl(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ClientListEntity,
    ));
  }

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientListEntityCopyWith<$Res> get member {
    return $ClientListEntityCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value));
    });
  }
}

/// @nodoc

class _$ClickMemberProfileImpl implements _ClickMemberProfile {
  const _$ClickMemberProfileImpl({required this.member});

  @override
  final ClientListEntity member;

  @override
  String toString() {
    return 'ManagedMembersIntent.clickMemberProfile(member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickMemberProfileImpl &&
            (identical(other.member, member) || other.member == member));
  }

  @override
  int get hashCode => Object.hash(runtimeType, member);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickMemberProfileImplCopyWith<_$ClickMemberProfileImpl> get copyWith =>
      __$$ClickMemberProfileImplCopyWithImpl<_$ClickMemberProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchMembers,
    required TResult Function(bool onlyMatched) toggleMatchedClients,
    required TResult Function(ClientListEntity member) clickMemberProfile,
  }) {
    return clickMemberProfile(member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchMembers,
    TResult? Function(bool onlyMatched)? toggleMatchedClients,
    TResult? Function(ClientListEntity member)? clickMemberProfile,
  }) {
    return clickMemberProfile?.call(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchMembers,
    TResult Function(bool onlyMatched)? toggleMatchedClients,
    TResult Function(ClientListEntity member)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (clickMemberProfile != null) {
      return clickMemberProfile(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMembers value) searchMembers,
    required TResult Function(_ToggleMatchedClients value) toggleMatchedClients,
    required TResult Function(_ClickMemberProfile value) clickMemberProfile,
  }) {
    return clickMemberProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMembers value)? searchMembers,
    TResult? Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult? Function(_ClickMemberProfile value)? clickMemberProfile,
  }) {
    return clickMemberProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMembers value)? searchMembers,
    TResult Function(_ToggleMatchedClients value)? toggleMatchedClients,
    TResult Function(_ClickMemberProfile value)? clickMemberProfile,
    required TResult orElse(),
  }) {
    if (clickMemberProfile != null) {
      return clickMemberProfile(this);
    }
    return orElse();
  }
}

abstract class _ClickMemberProfile implements ManagedMembersIntent {
  const factory _ClickMemberProfile({required final ClientListEntity member}) =
      _$ClickMemberProfileImpl;

  ClientListEntity get member;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClickMemberProfileImplCopyWith<_$ClickMemberProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
