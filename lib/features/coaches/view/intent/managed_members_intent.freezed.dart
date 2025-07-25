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
    required TResult Function() loadMembers,
    required TResult Function(ClientListEntity client) selectClient,
    required TResult Function(int clientId) loadClientProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMembers,
    TResult? Function(ClientListEntity client)? selectClient,
    TResult? Function(int clientId)? loadClientProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMembers,
    TResult Function(ClientListEntity client)? selectClient,
    TResult Function(int clientId)? loadClientProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMembers value) loadMembers,
    required TResult Function(_SelectClient value) selectClient,
    required TResult Function(_LoadClientProfile value) loadClientProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMembers value)? loadMembers,
    TResult? Function(_SelectClient value)? selectClient,
    TResult? Function(_LoadClientProfile value)? loadClientProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMembers value)? loadMembers,
    TResult Function(_SelectClient value)? selectClient,
    TResult Function(_LoadClientProfile value)? loadClientProfile,
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
abstract class _$$LoadMembersImplCopyWith<$Res> {
  factory _$$LoadMembersImplCopyWith(
          _$LoadMembersImpl value, $Res Function(_$LoadMembersImpl) then) =
      __$$LoadMembersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMembersImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$LoadMembersImpl>
    implements _$$LoadMembersImplCopyWith<$Res> {
  __$$LoadMembersImplCopyWithImpl(
      _$LoadMembersImpl _value, $Res Function(_$LoadMembersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMembersImpl implements _LoadMembers {
  const _$LoadMembersImpl();

  @override
  String toString() {
    return 'ManagedMembersIntent.loadMembers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMembersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMembers,
    required TResult Function(ClientListEntity client) selectClient,
    required TResult Function(int clientId) loadClientProfile,
  }) {
    return loadMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMembers,
    TResult? Function(ClientListEntity client)? selectClient,
    TResult? Function(int clientId)? loadClientProfile,
  }) {
    return loadMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMembers,
    TResult Function(ClientListEntity client)? selectClient,
    TResult Function(int clientId)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (loadMembers != null) {
      return loadMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMembers value) loadMembers,
    required TResult Function(_SelectClient value) selectClient,
    required TResult Function(_LoadClientProfile value) loadClientProfile,
  }) {
    return loadMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMembers value)? loadMembers,
    TResult? Function(_SelectClient value)? selectClient,
    TResult? Function(_LoadClientProfile value)? loadClientProfile,
  }) {
    return loadMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMembers value)? loadMembers,
    TResult Function(_SelectClient value)? selectClient,
    TResult Function(_LoadClientProfile value)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (loadMembers != null) {
      return loadMembers(this);
    }
    return orElse();
  }
}

abstract class _LoadMembers implements ManagedMembersIntent {
  const factory _LoadMembers() = _$LoadMembersImpl;
}

/// @nodoc
abstract class _$$SelectClientImplCopyWith<$Res> {
  factory _$$SelectClientImplCopyWith(
          _$SelectClientImpl value, $Res Function(_$SelectClientImpl) then) =
      __$$SelectClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientListEntity client});

  $ClientListEntityCopyWith<$Res> get client;
}

/// @nodoc
class __$$SelectClientImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$SelectClientImpl>
    implements _$$SelectClientImplCopyWith<$Res> {
  __$$SelectClientImplCopyWithImpl(
      _$SelectClientImpl _value, $Res Function(_$SelectClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$SelectClientImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientListEntity,
    ));
  }

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientListEntityCopyWith<$Res> get client {
    return $ClientListEntityCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$SelectClientImpl implements _SelectClient {
  const _$SelectClientImpl({required this.client});

  @override
  final ClientListEntity client;

  @override
  String toString() {
    return 'ManagedMembersIntent.selectClient(client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectClientImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectClientImplCopyWith<_$SelectClientImpl> get copyWith =>
      __$$SelectClientImplCopyWithImpl<_$SelectClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMembers,
    required TResult Function(ClientListEntity client) selectClient,
    required TResult Function(int clientId) loadClientProfile,
  }) {
    return selectClient(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMembers,
    TResult? Function(ClientListEntity client)? selectClient,
    TResult? Function(int clientId)? loadClientProfile,
  }) {
    return selectClient?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMembers,
    TResult Function(ClientListEntity client)? selectClient,
    TResult Function(int clientId)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (selectClient != null) {
      return selectClient(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMembers value) loadMembers,
    required TResult Function(_SelectClient value) selectClient,
    required TResult Function(_LoadClientProfile value) loadClientProfile,
  }) {
    return selectClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMembers value)? loadMembers,
    TResult? Function(_SelectClient value)? selectClient,
    TResult? Function(_LoadClientProfile value)? loadClientProfile,
  }) {
    return selectClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMembers value)? loadMembers,
    TResult Function(_SelectClient value)? selectClient,
    TResult Function(_LoadClientProfile value)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (selectClient != null) {
      return selectClient(this);
    }
    return orElse();
  }
}

abstract class _SelectClient implements ManagedMembersIntent {
  const factory _SelectClient({required final ClientListEntity client}) =
      _$SelectClientImpl;

  ClientListEntity get client;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectClientImplCopyWith<_$SelectClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadClientProfileImplCopyWith<$Res> {
  factory _$$LoadClientProfileImplCopyWith(_$LoadClientProfileImpl value,
          $Res Function(_$LoadClientProfileImpl) then) =
      __$$LoadClientProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int clientId});
}

/// @nodoc
class __$$LoadClientProfileImplCopyWithImpl<$Res>
    extends _$ManagedMembersIntentCopyWithImpl<$Res, _$LoadClientProfileImpl>
    implements _$$LoadClientProfileImplCopyWith<$Res> {
  __$$LoadClientProfileImplCopyWithImpl(_$LoadClientProfileImpl _value,
      $Res Function(_$LoadClientProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$LoadClientProfileImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadClientProfileImpl implements _LoadClientProfile {
  const _$LoadClientProfileImpl({required this.clientId});

  @override
  final int clientId;

  @override
  String toString() {
    return 'ManagedMembersIntent.loadClientProfile(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadClientProfileImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadClientProfileImplCopyWith<_$LoadClientProfileImpl> get copyWith =>
      __$$LoadClientProfileImplCopyWithImpl<_$LoadClientProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMembers,
    required TResult Function(ClientListEntity client) selectClient,
    required TResult Function(int clientId) loadClientProfile,
  }) {
    return loadClientProfile(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMembers,
    TResult? Function(ClientListEntity client)? selectClient,
    TResult? Function(int clientId)? loadClientProfile,
  }) {
    return loadClientProfile?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMembers,
    TResult Function(ClientListEntity client)? selectClient,
    TResult Function(int clientId)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (loadClientProfile != null) {
      return loadClientProfile(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMembers value) loadMembers,
    required TResult Function(_SelectClient value) selectClient,
    required TResult Function(_LoadClientProfile value) loadClientProfile,
  }) {
    return loadClientProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMembers value)? loadMembers,
    TResult? Function(_SelectClient value)? selectClient,
    TResult? Function(_LoadClientProfile value)? loadClientProfile,
  }) {
    return loadClientProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMembers value)? loadMembers,
    TResult Function(_SelectClient value)? selectClient,
    TResult Function(_LoadClientProfile value)? loadClientProfile,
    required TResult orElse(),
  }) {
    if (loadClientProfile != null) {
      return loadClientProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadClientProfile implements ManagedMembersIntent {
  const factory _LoadClientProfile({required final int clientId}) =
      _$LoadClientProfileImpl;

  int get clientId;

  /// Create a copy of ManagedMembersIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadClientProfileImplCopyWith<_$LoadClientProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
