// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_enrolled_clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseEnrolledClients _$ResponseEnrolledClientsFromJson(
    Map<String, dynamic> json) {
  return _ResponseEnrolledClients.fromJson(json);
}

/// @nodoc
mixin _$ResponseEnrolledClients {
  List<ClientListModel> get matchingClientDtos =>
      throw _privateConstructorUsedError;
  List<ClientListModel> get createClientDtos =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseEnrolledClients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseEnrolledClients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseEnrolledClientsCopyWith<ResponseEnrolledClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEnrolledClientsCopyWith<$Res> {
  factory $ResponseEnrolledClientsCopyWith(ResponseEnrolledClients value,
          $Res Function(ResponseEnrolledClients) then) =
      _$ResponseEnrolledClientsCopyWithImpl<$Res, ResponseEnrolledClients>;
  @useResult
  $Res call(
      {List<ClientListModel> matchingClientDtos,
      List<ClientListModel> createClientDtos});
}

/// @nodoc
class _$ResponseEnrolledClientsCopyWithImpl<$Res,
        $Val extends ResponseEnrolledClients>
    implements $ResponseEnrolledClientsCopyWith<$Res> {
  _$ResponseEnrolledClientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseEnrolledClients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchingClientDtos = null,
    Object? createClientDtos = null,
  }) {
    return _then(_value.copyWith(
      matchingClientDtos: null == matchingClientDtos
          ? _value.matchingClientDtos
          : matchingClientDtos // ignore: cast_nullable_to_non_nullable
              as List<ClientListModel>,
      createClientDtos: null == createClientDtos
          ? _value.createClientDtos
          : createClientDtos // ignore: cast_nullable_to_non_nullable
              as List<ClientListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseEnrolledClientsImplCopyWith<$Res>
    implements $ResponseEnrolledClientsCopyWith<$Res> {
  factory _$$ResponseEnrolledClientsImplCopyWith(
          _$ResponseEnrolledClientsImpl value,
          $Res Function(_$ResponseEnrolledClientsImpl) then) =
      __$$ResponseEnrolledClientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClientListModel> matchingClientDtos,
      List<ClientListModel> createClientDtos});
}

/// @nodoc
class __$$ResponseEnrolledClientsImplCopyWithImpl<$Res>
    extends _$ResponseEnrolledClientsCopyWithImpl<$Res,
        _$ResponseEnrolledClientsImpl>
    implements _$$ResponseEnrolledClientsImplCopyWith<$Res> {
  __$$ResponseEnrolledClientsImplCopyWithImpl(
      _$ResponseEnrolledClientsImpl _value,
      $Res Function(_$ResponseEnrolledClientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseEnrolledClients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchingClientDtos = null,
    Object? createClientDtos = null,
  }) {
    return _then(_$ResponseEnrolledClientsImpl(
      matchingClientDtos: null == matchingClientDtos
          ? _value._matchingClientDtos
          : matchingClientDtos // ignore: cast_nullable_to_non_nullable
              as List<ClientListModel>,
      createClientDtos: null == createClientDtos
          ? _value._createClientDtos
          : createClientDtos // ignore: cast_nullable_to_non_nullable
              as List<ClientListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseEnrolledClientsImpl implements _ResponseEnrolledClients {
  _$ResponseEnrolledClientsImpl(
      {final List<ClientListModel> matchingClientDtos = const [],
      final List<ClientListModel> createClientDtos = const []})
      : _matchingClientDtos = matchingClientDtos,
        _createClientDtos = createClientDtos;

  factory _$ResponseEnrolledClientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseEnrolledClientsImplFromJson(json);

  final List<ClientListModel> _matchingClientDtos;
  @override
  @JsonKey()
  List<ClientListModel> get matchingClientDtos {
    if (_matchingClientDtos is EqualUnmodifiableListView)
      return _matchingClientDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchingClientDtos);
  }

  final List<ClientListModel> _createClientDtos;
  @override
  @JsonKey()
  List<ClientListModel> get createClientDtos {
    if (_createClientDtos is EqualUnmodifiableListView)
      return _createClientDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createClientDtos);
  }

  @override
  String toString() {
    return 'ResponseEnrolledClients(matchingClientDtos: $matchingClientDtos, createClientDtos: $createClientDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseEnrolledClientsImpl &&
            const DeepCollectionEquality()
                .equals(other._matchingClientDtos, _matchingClientDtos) &&
            const DeepCollectionEquality()
                .equals(other._createClientDtos, _createClientDtos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matchingClientDtos),
      const DeepCollectionEquality().hash(_createClientDtos));

  /// Create a copy of ResponseEnrolledClients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseEnrolledClientsImplCopyWith<_$ResponseEnrolledClientsImpl>
      get copyWith => __$$ResponseEnrolledClientsImplCopyWithImpl<
          _$ResponseEnrolledClientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseEnrolledClientsImplToJson(
      this,
    );
  }
}

abstract class _ResponseEnrolledClients implements ResponseEnrolledClients {
  factory _ResponseEnrolledClients(
          {final List<ClientListModel> matchingClientDtos,
          final List<ClientListModel> createClientDtos}) =
      _$ResponseEnrolledClientsImpl;

  factory _ResponseEnrolledClients.fromJson(Map<String, dynamic> json) =
      _$ResponseEnrolledClientsImpl.fromJson;

  @override
  List<ClientListModel> get matchingClientDtos;
  @override
  List<ClientListModel> get createClientDtos;

  /// Create a copy of ResponseEnrolledClients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseEnrolledClientsImplCopyWith<_$ResponseEnrolledClientsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
