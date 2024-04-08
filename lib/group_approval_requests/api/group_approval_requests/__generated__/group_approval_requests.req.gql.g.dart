// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_approval_requests.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupApprovalRequestsReq> _$gGroupApprovalRequestsReqSerializer =
    new _$GGroupApprovalRequestsReqSerializer();
Serializer<GMakeApprovalDecisionReq> _$gMakeApprovalDecisionReqSerializer =
    new _$GMakeApprovalDecisionReqSerializer();

class _$GGroupApprovalRequestsReqSerializer
    implements StructuredSerializer<GGroupApprovalRequestsReq> {
  @override
  final Iterable<Type> types = const [
    GGroupApprovalRequestsReq,
    _$GGroupApprovalRequestsReq
  ];
  @override
  final String wireName = 'GGroupApprovalRequestsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupApprovalRequestsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGroupApprovalRequestsVars)),
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
            specifiedType: const FullType(_i2.GGroupApprovalRequestsData)));
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
  GGroupApprovalRequestsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupApprovalRequestsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GGroupApprovalRequestsVars))!
              as _i3.GGroupApprovalRequestsVars);
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
                      const FullType(_i2.GGroupApprovalRequestsData))!
              as _i2.GGroupApprovalRequestsData);
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

class _$GMakeApprovalDecisionReqSerializer
    implements StructuredSerializer<GMakeApprovalDecisionReq> {
  @override
  final Iterable<Type> types = const [
    GMakeApprovalDecisionReq,
    _$GMakeApprovalDecisionReq
  ];
  @override
  final String wireName = 'GMakeApprovalDecisionReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMakeApprovalDecisionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GMakeApprovalDecisionVars)),
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
            specifiedType: const FullType(_i2.GMakeApprovalDecisionData)));
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
  GMakeApprovalDecisionReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMakeApprovalDecisionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMakeApprovalDecisionVars))!
              as _i3.GMakeApprovalDecisionVars);
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
                  specifiedType: const FullType(_i2.GMakeApprovalDecisionData))!
              as _i2.GMakeApprovalDecisionData);
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

class _$GGroupApprovalRequestsReq extends GGroupApprovalRequestsReq {
  @override
  final _i3.GGroupApprovalRequestsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGroupApprovalRequestsData? Function(
          _i2.GGroupApprovalRequestsData?, _i2.GGroupApprovalRequestsData?)?
      updateResult;
  @override
  final _i2.GGroupApprovalRequestsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGroupApprovalRequestsReq(
          [void Function(GGroupApprovalRequestsReqBuilder)? updates]) =>
      (new GGroupApprovalRequestsReqBuilder()..update(updates))._build();

  _$GGroupApprovalRequestsReq._(
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
        vars, 'GGroupApprovalRequestsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGroupApprovalRequestsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GGroupApprovalRequestsReq', 'executeOnListen');
  }

  @override
  GGroupApprovalRequestsReq rebuild(
          void Function(GGroupApprovalRequestsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupApprovalRequestsReqBuilder toBuilder() =>
      new GGroupApprovalRequestsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGroupApprovalRequestsReq &&
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
    return (newBuiltValueToStringHelper('GGroupApprovalRequestsReq')
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

class GGroupApprovalRequestsReqBuilder
    implements
        Builder<GGroupApprovalRequestsReq, GGroupApprovalRequestsReqBuilder> {
  _$GGroupApprovalRequestsReq? _$v;

  _i3.GGroupApprovalRequestsVarsBuilder? _vars;
  _i3.GGroupApprovalRequestsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupApprovalRequestsVarsBuilder();
  set vars(_i3.GGroupApprovalRequestsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGroupApprovalRequestsData? Function(
          _i2.GGroupApprovalRequestsData?, _i2.GGroupApprovalRequestsData?)?
      _updateResult;
  _i2.GGroupApprovalRequestsData? Function(
          _i2.GGroupApprovalRequestsData?, _i2.GGroupApprovalRequestsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGroupApprovalRequestsData? Function(
                  _i2.GGroupApprovalRequestsData?,
                  _i2.GGroupApprovalRequestsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGroupApprovalRequestsDataBuilder? _optimisticResponse;
  _i2.GGroupApprovalRequestsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGroupApprovalRequestsDataBuilder();
  set optimisticResponse(
          _i2.GGroupApprovalRequestsDataBuilder? optimisticResponse) =>
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

  GGroupApprovalRequestsReqBuilder() {
    GGroupApprovalRequestsReq._initializeBuilder(this);
  }

  GGroupApprovalRequestsReqBuilder get _$this {
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
  void replace(GGroupApprovalRequestsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupApprovalRequestsReq;
  }

  @override
  void update(void Function(GGroupApprovalRequestsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupApprovalRequestsReq build() => _build();

  _$GGroupApprovalRequestsReq _build() {
    _$GGroupApprovalRequestsReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupApprovalRequestsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GGroupApprovalRequestsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GGroupApprovalRequestsReq',
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
            'GGroupApprovalRequestsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMakeApprovalDecisionReq extends GMakeApprovalDecisionReq {
  @override
  final _i3.GMakeApprovalDecisionVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GMakeApprovalDecisionData? Function(
          _i2.GMakeApprovalDecisionData?, _i2.GMakeApprovalDecisionData?)?
      updateResult;
  @override
  final _i2.GMakeApprovalDecisionData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GMakeApprovalDecisionReq(
          [void Function(GMakeApprovalDecisionReqBuilder)? updates]) =>
      (new GMakeApprovalDecisionReqBuilder()..update(updates))._build();

  _$GMakeApprovalDecisionReq._(
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
        vars, 'GMakeApprovalDecisionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GMakeApprovalDecisionReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GMakeApprovalDecisionReq', 'executeOnListen');
  }

  @override
  GMakeApprovalDecisionReq rebuild(
          void Function(GMakeApprovalDecisionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMakeApprovalDecisionReqBuilder toBuilder() =>
      new GMakeApprovalDecisionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GMakeApprovalDecisionReq &&
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
    return (newBuiltValueToStringHelper('GMakeApprovalDecisionReq')
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

class GMakeApprovalDecisionReqBuilder
    implements
        Builder<GMakeApprovalDecisionReq, GMakeApprovalDecisionReqBuilder> {
  _$GMakeApprovalDecisionReq? _$v;

  _i3.GMakeApprovalDecisionVarsBuilder? _vars;
  _i3.GMakeApprovalDecisionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GMakeApprovalDecisionVarsBuilder();
  set vars(_i3.GMakeApprovalDecisionVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GMakeApprovalDecisionData? Function(
          _i2.GMakeApprovalDecisionData?, _i2.GMakeApprovalDecisionData?)?
      _updateResult;
  _i2.GMakeApprovalDecisionData? Function(
          _i2.GMakeApprovalDecisionData?, _i2.GMakeApprovalDecisionData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GMakeApprovalDecisionData? Function(
                  _i2.GMakeApprovalDecisionData?,
                  _i2.GMakeApprovalDecisionData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GMakeApprovalDecisionDataBuilder? _optimisticResponse;
  _i2.GMakeApprovalDecisionDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GMakeApprovalDecisionDataBuilder();
  set optimisticResponse(
          _i2.GMakeApprovalDecisionDataBuilder? optimisticResponse) =>
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

  GMakeApprovalDecisionReqBuilder() {
    GMakeApprovalDecisionReq._initializeBuilder(this);
  }

  GMakeApprovalDecisionReqBuilder get _$this {
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
  void replace(GMakeApprovalDecisionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMakeApprovalDecisionReq;
  }

  @override
  void update(void Function(GMakeApprovalDecisionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMakeApprovalDecisionReq build() => _build();

  _$GMakeApprovalDecisionReq _build() {
    _$GMakeApprovalDecisionReq _$result;
    try {
      _$result = _$v ??
          new _$GMakeApprovalDecisionReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GMakeApprovalDecisionReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GMakeApprovalDecisionReq',
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
            'GMakeApprovalDecisionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
