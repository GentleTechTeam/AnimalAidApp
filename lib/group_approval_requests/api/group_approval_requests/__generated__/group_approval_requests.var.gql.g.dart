// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_approval_requests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupApprovalRequestsVars> _$gGroupApprovalRequestsVarsSerializer =
    new _$GGroupApprovalRequestsVarsSerializer();
Serializer<GMakeApprovalDecisionVars> _$gMakeApprovalDecisionVarsSerializer =
    new _$GMakeApprovalDecisionVarsSerializer();

class _$GGroupApprovalRequestsVarsSerializer
    implements StructuredSerializer<GGroupApprovalRequestsVars> {
  @override
  final Iterable<Type> types = const [
    GGroupApprovalRequestsVars,
    _$GGroupApprovalRequestsVars
  ];
  @override
  final String wireName = 'GGroupApprovalRequestsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupApprovalRequestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGroupApprovalRequestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupApprovalRequestsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMakeApprovalDecisionVarsSerializer
    implements StructuredSerializer<GMakeApprovalDecisionVars> {
  @override
  final Iterable<Type> types = const [
    GMakeApprovalDecisionVars,
    _$GMakeApprovalDecisionVars
  ];
  @override
  final String wireName = 'GMakeApprovalDecisionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMakeApprovalDecisionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
      'approve',
      serializers.serialize(object.approve,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GMakeApprovalDecisionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMakeApprovalDecisionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'approve':
          result.approve = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupApprovalRequestsVars extends GGroupApprovalRequestsVars {
  @override
  final String token;

  factory _$GGroupApprovalRequestsVars(
          [void Function(GGroupApprovalRequestsVarsBuilder)? updates]) =>
      (new GGroupApprovalRequestsVarsBuilder()..update(updates))._build();

  _$GGroupApprovalRequestsVars._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GGroupApprovalRequestsVars', 'token');
  }

  @override
  GGroupApprovalRequestsVars rebuild(
          void Function(GGroupApprovalRequestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupApprovalRequestsVarsBuilder toBuilder() =>
      new GGroupApprovalRequestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupApprovalRequestsVars && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupApprovalRequestsVars')
          ..add('token', token))
        .toString();
  }
}

class GGroupApprovalRequestsVarsBuilder
    implements
        Builder<GGroupApprovalRequestsVars, GGroupApprovalRequestsVarsBuilder> {
  _$GGroupApprovalRequestsVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GGroupApprovalRequestsVarsBuilder();

  GGroupApprovalRequestsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupApprovalRequestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupApprovalRequestsVars;
  }

  @override
  void update(void Function(GGroupApprovalRequestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupApprovalRequestsVars build() => _build();

  _$GGroupApprovalRequestsVars _build() {
    final _$result = _$v ??
        new _$GGroupApprovalRequestsVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GGroupApprovalRequestsVars', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GMakeApprovalDecisionVars extends GMakeApprovalDecisionVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final bool approve;

  factory _$GMakeApprovalDecisionVars(
          [void Function(GMakeApprovalDecisionVarsBuilder)? updates]) =>
      (new GMakeApprovalDecisionVarsBuilder()..update(updates))._build();

  _$GMakeApprovalDecisionVars._(
      {required this.token, required this.groupId, required this.approve})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GMakeApprovalDecisionVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GMakeApprovalDecisionVars', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        approve, 'GMakeApprovalDecisionVars', 'approve');
  }

  @override
  GMakeApprovalDecisionVars rebuild(
          void Function(GMakeApprovalDecisionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMakeApprovalDecisionVarsBuilder toBuilder() =>
      new GMakeApprovalDecisionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMakeApprovalDecisionVars &&
        token == other.token &&
        groupId == other.groupId &&
        approve == other.approve;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), groupId.hashCode), approve.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMakeApprovalDecisionVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('approve', approve))
        .toString();
  }
}

class GMakeApprovalDecisionVarsBuilder
    implements
        Builder<GMakeApprovalDecisionVars, GMakeApprovalDecisionVarsBuilder> {
  _$GMakeApprovalDecisionVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  bool? _approve;
  bool? get approve => _$this._approve;
  set approve(bool? approve) => _$this._approve = approve;

  GMakeApprovalDecisionVarsBuilder();

  GMakeApprovalDecisionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _approve = $v.approve;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMakeApprovalDecisionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMakeApprovalDecisionVars;
  }

  @override
  void update(void Function(GMakeApprovalDecisionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMakeApprovalDecisionVars build() => _build();

  _$GMakeApprovalDecisionVars _build() {
    final _$result = _$v ??
        new _$GMakeApprovalDecisionVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GMakeApprovalDecisionVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GMakeApprovalDecisionVars', 'groupId'),
            approve: BuiltValueNullFieldError.checkNotNull(
                approve, 'GMakeApprovalDecisionVars', 'approve'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
