// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controlled_groups.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserControlledGroupsVars> _$gUserControlledGroupsVarsSerializer =
    new _$GUserControlledGroupsVarsSerializer();
Serializer<GRequestUserGroupApprovalVars>
    _$gRequestUserGroupApprovalVarsSerializer =
    new _$GRequestUserGroupApprovalVarsSerializer();
Serializer<GChangeUserGroupLocationVars>
    _$gChangeUserGroupLocationVarsSerializer =
    new _$GChangeUserGroupLocationVarsSerializer();

class _$GUserControlledGroupsVarsSerializer
    implements StructuredSerializer<GUserControlledGroupsVars> {
  @override
  final Iterable<Type> types = const [
    GUserControlledGroupsVars,
    _$GUserControlledGroupsVars
  ];
  @override
  final String wireName = 'GUserControlledGroupsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserControlledGroupsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.approvalStatus;
    if (value != null) {
      result
        ..add('approvalStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCharityGroupApprovalStatus)));
    }
    return result;
  }

  @override
  GUserControlledGroupsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserControlledGroupsVarsBuilder();

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
        case 'approvalStatus':
          result.approvalStatus = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GCharityGroupApprovalStatus))
              as _i1.GCharityGroupApprovalStatus?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestUserGroupApprovalVarsSerializer
    implements StructuredSerializer<GRequestUserGroupApprovalVars> {
  @override
  final Iterable<Type> types = const [
    GRequestUserGroupApprovalVars,
    _$GRequestUserGroupApprovalVars
  ];
  @override
  final String wireName = 'GRequestUserGroupApprovalVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestUserGroupApprovalVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRequestUserGroupApprovalVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestUserGroupApprovalVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GChangeUserGroupLocationVarsSerializer
    implements StructuredSerializer<GChangeUserGroupLocationVars> {
  @override
  final Iterable<Type> types = const [
    GChangeUserGroupLocationVars,
    _$GChangeUserGroupLocationVars
  ];
  @override
  final String wireName = 'GChangeUserGroupLocationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChangeUserGroupLocationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.locationKey;
    if (value != null) {
      result
        ..add('locationKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GChangeUserGroupLocationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChangeUserGroupLocationVarsBuilder();

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
        case 'locationKey':
          result.locationKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserControlledGroupsVars extends GUserControlledGroupsVars {
  @override
  final String token;
  @override
  final _i1.GCharityGroupApprovalStatus? approvalStatus;

  factory _$GUserControlledGroupsVars(
          [void Function(GUserControlledGroupsVarsBuilder)? updates]) =>
      (new GUserControlledGroupsVarsBuilder()..update(updates))._build();

  _$GUserControlledGroupsVars._({required this.token, this.approvalStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GUserControlledGroupsVars', 'token');
  }

  @override
  GUserControlledGroupsVars rebuild(
          void Function(GUserControlledGroupsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserControlledGroupsVarsBuilder toBuilder() =>
      new GUserControlledGroupsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserControlledGroupsVars &&
        token == other.token &&
        approvalStatus == other.approvalStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), approvalStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserControlledGroupsVars')
          ..add('token', token)
          ..add('approvalStatus', approvalStatus))
        .toString();
  }
}

class GUserControlledGroupsVarsBuilder
    implements
        Builder<GUserControlledGroupsVars, GUserControlledGroupsVarsBuilder> {
  _$GUserControlledGroupsVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  _i1.GCharityGroupApprovalStatus? _approvalStatus;
  _i1.GCharityGroupApprovalStatus? get approvalStatus => _$this._approvalStatus;
  set approvalStatus(_i1.GCharityGroupApprovalStatus? approvalStatus) =>
      _$this._approvalStatus = approvalStatus;

  GUserControlledGroupsVarsBuilder();

  GUserControlledGroupsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _approvalStatus = $v.approvalStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserControlledGroupsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserControlledGroupsVars;
  }

  @override
  void update(void Function(GUserControlledGroupsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserControlledGroupsVars build() => _build();

  _$GUserControlledGroupsVars _build() {
    final _$result = _$v ??
        new _$GUserControlledGroupsVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GUserControlledGroupsVars', 'token'),
            approvalStatus: approvalStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GRequestUserGroupApprovalVars extends GRequestUserGroupApprovalVars {
  @override
  final String token;
  @override
  final String groupId;

  factory _$GRequestUserGroupApprovalVars(
          [void Function(GRequestUserGroupApprovalVarsBuilder)? updates]) =>
      (new GRequestUserGroupApprovalVarsBuilder()..update(updates))._build();

  _$GRequestUserGroupApprovalVars._(
      {required this.token, required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GRequestUserGroupApprovalVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GRequestUserGroupApprovalVars', 'groupId');
  }

  @override
  GRequestUserGroupApprovalVars rebuild(
          void Function(GRequestUserGroupApprovalVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestUserGroupApprovalVarsBuilder toBuilder() =>
      new GRequestUserGroupApprovalVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestUserGroupApprovalVars &&
        token == other.token &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), groupId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRequestUserGroupApprovalVars')
          ..add('token', token)
          ..add('groupId', groupId))
        .toString();
  }
}

class GRequestUserGroupApprovalVarsBuilder
    implements
        Builder<GRequestUserGroupApprovalVars,
            GRequestUserGroupApprovalVarsBuilder> {
  _$GRequestUserGroupApprovalVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GRequestUserGroupApprovalVarsBuilder();

  GRequestUserGroupApprovalVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestUserGroupApprovalVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestUserGroupApprovalVars;
  }

  @override
  void update(void Function(GRequestUserGroupApprovalVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestUserGroupApprovalVars build() => _build();

  _$GRequestUserGroupApprovalVars _build() {
    final _$result = _$v ??
        new _$GRequestUserGroupApprovalVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GRequestUserGroupApprovalVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GRequestUserGroupApprovalVars', 'groupId'));
    replace(_$result);
    return _$result;
  }
}

class _$GChangeUserGroupLocationVars extends GChangeUserGroupLocationVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final String? locationKey;

  factory _$GChangeUserGroupLocationVars(
          [void Function(GChangeUserGroupLocationVarsBuilder)? updates]) =>
      (new GChangeUserGroupLocationVarsBuilder()..update(updates))._build();

  _$GChangeUserGroupLocationVars._(
      {required this.token, required this.groupId, this.locationKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GChangeUserGroupLocationVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GChangeUserGroupLocationVars', 'groupId');
  }

  @override
  GChangeUserGroupLocationVars rebuild(
          void Function(GChangeUserGroupLocationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChangeUserGroupLocationVarsBuilder toBuilder() =>
      new GChangeUserGroupLocationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeUserGroupLocationVars &&
        token == other.token &&
        groupId == other.groupId &&
        locationKey == other.locationKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, token.hashCode), groupId.hashCode), locationKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GChangeUserGroupLocationVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('locationKey', locationKey))
        .toString();
  }
}

class GChangeUserGroupLocationVarsBuilder
    implements
        Builder<GChangeUserGroupLocationVars,
            GChangeUserGroupLocationVarsBuilder> {
  _$GChangeUserGroupLocationVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _locationKey;
  String? get locationKey => _$this._locationKey;
  set locationKey(String? locationKey) => _$this._locationKey = locationKey;

  GChangeUserGroupLocationVarsBuilder();

  GChangeUserGroupLocationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _locationKey = $v.locationKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeUserGroupLocationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChangeUserGroupLocationVars;
  }

  @override
  void update(void Function(GChangeUserGroupLocationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeUserGroupLocationVars build() => _build();

  _$GChangeUserGroupLocationVars _build() {
    final _$result = _$v ??
        new _$GChangeUserGroupLocationVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GChangeUserGroupLocationVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GChangeUserGroupLocationVars', 'groupId'),
            locationKey: locationKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
