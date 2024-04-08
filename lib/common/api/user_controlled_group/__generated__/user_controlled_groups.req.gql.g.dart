// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controlled_groups.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserControlledGroupsReq> _$gUserControlledGroupsReqSerializer =
    new _$GUserControlledGroupsReqSerializer();
Serializer<GRequestUserGroupApprovalReq>
    _$gRequestUserGroupApprovalReqSerializer =
    new _$GRequestUserGroupApprovalReqSerializer();
Serializer<GChangeUserGroupLocationReq>
    _$gChangeUserGroupLocationReqSerializer =
    new _$GChangeUserGroupLocationReqSerializer();

class _$GUserControlledGroupsReqSerializer
    implements StructuredSerializer<GUserControlledGroupsReq> {
  @override
  final Iterable<Type> types = const [
    GUserControlledGroupsReq,
    _$GUserControlledGroupsReq
  ];
  @override
  final String wireName = 'GUserControlledGroupsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserControlledGroupsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserControlledGroupsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserControlledGroupsData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GUserControlledGroupsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserControlledGroupsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserControlledGroupsVars))!
              as _i3.GUserControlledGroupsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserControlledGroupsData))!
              as _i2.GUserControlledGroupsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestUserGroupApprovalReqSerializer
    implements StructuredSerializer<GRequestUserGroupApprovalReq> {
  @override
  final Iterable<Type> types = const [
    GRequestUserGroupApprovalReq,
    _$GRequestUserGroupApprovalReq
  ];
  @override
  final String wireName = 'GRequestUserGroupApprovalReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestUserGroupApprovalReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GRequestUserGroupApprovalVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GRequestUserGroupApprovalData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GRequestUserGroupApprovalReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestUserGroupApprovalReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GRequestUserGroupApprovalVars))!
              as _i3.GRequestUserGroupApprovalVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GRequestUserGroupApprovalData))!
              as _i2.GRequestUserGroupApprovalData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeUserGroupLocationReqSerializer
    implements StructuredSerializer<GChangeUserGroupLocationReq> {
  @override
  final Iterable<Type> types = const [
    GChangeUserGroupLocationReq,
    _$GChangeUserGroupLocationReq
  ];
  @override
  final String wireName = 'GChangeUserGroupLocationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChangeUserGroupLocationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GChangeUserGroupLocationVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GChangeUserGroupLocationData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GChangeUserGroupLocationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChangeUserGroupLocationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GChangeUserGroupLocationVars))!
              as _i3.GChangeUserGroupLocationVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GChangeUserGroupLocationData))!
              as _i2.GChangeUserGroupLocationData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserControlledGroupsReq extends GUserControlledGroupsReq {
  @override
  final _i3.GUserControlledGroupsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GUserControlledGroupsData? Function(
          _i2.GUserControlledGroupsData?, _i2.GUserControlledGroupsData?)?
      updateResult;
  @override
  final _i2.GUserControlledGroupsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GUserControlledGroupsReq(
          [void Function(GUserControlledGroupsReqBuilder)? updates]) =>
      (new GUserControlledGroupsReqBuilder()..update(updates))._build();

  _$GUserControlledGroupsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GUserControlledGroupsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GUserControlledGroupsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GUserControlledGroupsReq', 'executeOnListen');
  }

  @override
  GUserControlledGroupsReq rebuild(
          void Function(GUserControlledGroupsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserControlledGroupsReqBuilder toBuilder() =>
      new GUserControlledGroupsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GUserControlledGroupsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserControlledGroupsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GUserControlledGroupsReqBuilder
    implements
        Builder<GUserControlledGroupsReq, GUserControlledGroupsReqBuilder> {
  _$GUserControlledGroupsReq? _$v;

  _i3.GUserControlledGroupsVarsBuilder? _vars;
  _i3.GUserControlledGroupsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserControlledGroupsVarsBuilder();
  set vars(_i3.GUserControlledGroupsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GUserControlledGroupsData? Function(
          _i2.GUserControlledGroupsData?, _i2.GUserControlledGroupsData?)?
      _updateResult;
  _i2.GUserControlledGroupsData? Function(
          _i2.GUserControlledGroupsData?, _i2.GUserControlledGroupsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GUserControlledGroupsData? Function(
                  _i2.GUserControlledGroupsData?,
                  _i2.GUserControlledGroupsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GUserControlledGroupsDataBuilder? _optimisticResponse;
  _i2.GUserControlledGroupsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GUserControlledGroupsDataBuilder();
  set optimisticResponse(
          _i2.GUserControlledGroupsDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GUserControlledGroupsReqBuilder() {
    GUserControlledGroupsReq._initializeBuilder(this);
  }

  GUserControlledGroupsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserControlledGroupsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserControlledGroupsReq;
  }

  @override
  void update(void Function(GUserControlledGroupsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserControlledGroupsReq build() => _build();

  _$GUserControlledGroupsReq _build() {
    _$GUserControlledGroupsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserControlledGroupsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GUserControlledGroupsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GUserControlledGroupsReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUserControlledGroupsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRequestUserGroupApprovalReq extends GRequestUserGroupApprovalReq {
  @override
  final _i3.GRequestUserGroupApprovalVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GRequestUserGroupApprovalData? Function(
      _i2.GRequestUserGroupApprovalData?,
      _i2.GRequestUserGroupApprovalData?)? updateResult;
  @override
  final _i2.GRequestUserGroupApprovalData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GRequestUserGroupApprovalReq(
          [void Function(GRequestUserGroupApprovalReqBuilder)? updates]) =>
      (new GRequestUserGroupApprovalReqBuilder()..update(updates))._build();

  _$GRequestUserGroupApprovalReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GRequestUserGroupApprovalReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GRequestUserGroupApprovalReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GRequestUserGroupApprovalReq', 'executeOnListen');
  }

  @override
  GRequestUserGroupApprovalReq rebuild(
          void Function(GRequestUserGroupApprovalReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestUserGroupApprovalReqBuilder toBuilder() =>
      new GRequestUserGroupApprovalReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GRequestUserGroupApprovalReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRequestUserGroupApprovalReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GRequestUserGroupApprovalReqBuilder
    implements
        Builder<GRequestUserGroupApprovalReq,
            GRequestUserGroupApprovalReqBuilder> {
  _$GRequestUserGroupApprovalReq? _$v;

  _i3.GRequestUserGroupApprovalVarsBuilder? _vars;
  _i3.GRequestUserGroupApprovalVarsBuilder get vars =>
      _$this._vars ??= new _i3.GRequestUserGroupApprovalVarsBuilder();
  set vars(_i3.GRequestUserGroupApprovalVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GRequestUserGroupApprovalData? Function(
      _i2.GRequestUserGroupApprovalData?,
      _i2.GRequestUserGroupApprovalData?)? _updateResult;
  _i2.GRequestUserGroupApprovalData? Function(
          _i2.GRequestUserGroupApprovalData?,
          _i2.GRequestUserGroupApprovalData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GRequestUserGroupApprovalData? Function(
                  _i2.GRequestUserGroupApprovalData?,
                  _i2.GRequestUserGroupApprovalData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GRequestUserGroupApprovalDataBuilder? _optimisticResponse;
  _i2.GRequestUserGroupApprovalDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GRequestUserGroupApprovalDataBuilder();
  set optimisticResponse(
          _i2.GRequestUserGroupApprovalDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GRequestUserGroupApprovalReqBuilder() {
    GRequestUserGroupApprovalReq._initializeBuilder(this);
  }

  GRequestUserGroupApprovalReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestUserGroupApprovalReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestUserGroupApprovalReq;
  }

  @override
  void update(void Function(GRequestUserGroupApprovalReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestUserGroupApprovalReq build() => _build();

  _$GRequestUserGroupApprovalReq _build() {
    _$GRequestUserGroupApprovalReq _$result;
    try {
      _$result = _$v ??
          new _$GRequestUserGroupApprovalReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GRequestUserGroupApprovalReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GRequestUserGroupApprovalReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRequestUserGroupApprovalReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChangeUserGroupLocationReq extends GChangeUserGroupLocationReq {
  @override
  final _i3.GChangeUserGroupLocationVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GChangeUserGroupLocationData? Function(
          _i2.GChangeUserGroupLocationData?, _i2.GChangeUserGroupLocationData?)?
      updateResult;
  @override
  final _i2.GChangeUserGroupLocationData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GChangeUserGroupLocationReq(
          [void Function(GChangeUserGroupLocationReqBuilder)? updates]) =>
      (new GChangeUserGroupLocationReqBuilder()..update(updates))._build();

  _$GChangeUserGroupLocationReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GChangeUserGroupLocationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GChangeUserGroupLocationReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GChangeUserGroupLocationReq', 'executeOnListen');
  }

  @override
  GChangeUserGroupLocationReq rebuild(
          void Function(GChangeUserGroupLocationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChangeUserGroupLocationReqBuilder toBuilder() =>
      new GChangeUserGroupLocationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GChangeUserGroupLocationReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GChangeUserGroupLocationReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GChangeUserGroupLocationReqBuilder
    implements
        Builder<GChangeUserGroupLocationReq,
            GChangeUserGroupLocationReqBuilder> {
  _$GChangeUserGroupLocationReq? _$v;

  _i3.GChangeUserGroupLocationVarsBuilder? _vars;
  _i3.GChangeUserGroupLocationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GChangeUserGroupLocationVarsBuilder();
  set vars(_i3.GChangeUserGroupLocationVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GChangeUserGroupLocationData? Function(
          _i2.GChangeUserGroupLocationData?, _i2.GChangeUserGroupLocationData?)?
      _updateResult;
  _i2.GChangeUserGroupLocationData? Function(
          _i2.GChangeUserGroupLocationData?, _i2.GChangeUserGroupLocationData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GChangeUserGroupLocationData? Function(
                  _i2.GChangeUserGroupLocationData?,
                  _i2.GChangeUserGroupLocationData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GChangeUserGroupLocationDataBuilder? _optimisticResponse;
  _i2.GChangeUserGroupLocationDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GChangeUserGroupLocationDataBuilder();
  set optimisticResponse(
          _i2.GChangeUserGroupLocationDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GChangeUserGroupLocationReqBuilder() {
    GChangeUserGroupLocationReq._initializeBuilder(this);
  }

  GChangeUserGroupLocationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeUserGroupLocationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChangeUserGroupLocationReq;
  }

  @override
  void update(void Function(GChangeUserGroupLocationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeUserGroupLocationReq build() => _build();

  _$GChangeUserGroupLocationReq _build() {
    _$GChangeUserGroupLocationReq _$result;
    try {
      _$result = _$v ??
          new _$GChangeUserGroupLocationReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GChangeUserGroupLocationReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GChangeUserGroupLocationReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GChangeUserGroupLocationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
