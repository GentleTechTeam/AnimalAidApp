// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post_auto_import.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsAutoImportEnabledStatusReq>
    _$gGroupPostsAutoImportEnabledStatusReqSerializer =
    new _$GGroupPostsAutoImportEnabledStatusReqSerializer();
Serializer<GEnableGroupPostsAutoImportReq>
    _$gEnableGroupPostsAutoImportReqSerializer =
    new _$GEnableGroupPostsAutoImportReqSerializer();
Serializer<GGroupPostsAutoImportHintReq>
    _$gGroupPostsAutoImportHintReqSerializer =
    new _$GGroupPostsAutoImportHintReqSerializer();

class _$GGroupPostsAutoImportEnabledStatusReqSerializer
    implements StructuredSerializer<GGroupPostsAutoImportEnabledStatusReq> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportEnabledStatusReq,
    _$GGroupPostsAutoImportEnabledStatusReq
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportEnabledStatusReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportEnabledStatusReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType:
              const FullType(_i3.GGroupPostsAutoImportEnabledStatusVars)),
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
            specifiedType:
                const FullType(_i2.GGroupPostsAutoImportEnabledStatusData)));
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
  GGroupPostsAutoImportEnabledStatusReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsAutoImportEnabledStatusReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i3.GGroupPostsAutoImportEnabledStatusVars))!
              as _i3.GGroupPostsAutoImportEnabledStatusVars);
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
                  specifiedType: const FullType(
                      _i2.GGroupPostsAutoImportEnabledStatusData))!
              as _i2.GGroupPostsAutoImportEnabledStatusData);
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

class _$GEnableGroupPostsAutoImportReqSerializer
    implements StructuredSerializer<GEnableGroupPostsAutoImportReq> {
  @override
  final Iterable<Type> types = const [
    GEnableGroupPostsAutoImportReq,
    _$GEnableGroupPostsAutoImportReq
  ];
  @override
  final String wireName = 'GEnableGroupPostsAutoImportReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEnableGroupPostsAutoImportReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GEnableGroupPostsAutoImportVars)),
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
            specifiedType:
                const FullType(_i2.GEnableGroupPostsAutoImportData)));
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
  GEnableGroupPostsAutoImportReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEnableGroupPostsAutoImportReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GEnableGroupPostsAutoImportVars))!
              as _i3.GEnableGroupPostsAutoImportVars);
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
                      const FullType(_i2.GEnableGroupPostsAutoImportData))!
              as _i2.GEnableGroupPostsAutoImportData);
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

class _$GGroupPostsAutoImportHintReqSerializer
    implements StructuredSerializer<GGroupPostsAutoImportHintReq> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportHintReq,
    _$GGroupPostsAutoImportHintReq
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportHintReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportHintReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGroupPostsAutoImportHintVars)),
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
            specifiedType: const FullType(_i2.GGroupPostsAutoImportHintData)));
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
  GGroupPostsAutoImportHintReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsAutoImportHintReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GGroupPostsAutoImportHintVars))!
              as _i3.GGroupPostsAutoImportHintVars);
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
                      const FullType(_i2.GGroupPostsAutoImportHintData))!
              as _i2.GGroupPostsAutoImportHintData);
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

class _$GGroupPostsAutoImportEnabledStatusReq
    extends GGroupPostsAutoImportEnabledStatusReq {
  @override
  final _i3.GGroupPostsAutoImportEnabledStatusVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGroupPostsAutoImportEnabledStatusData? Function(
      _i2.GGroupPostsAutoImportEnabledStatusData?,
      _i2.GGroupPostsAutoImportEnabledStatusData?)? updateResult;
  @override
  final _i2.GGroupPostsAutoImportEnabledStatusData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGroupPostsAutoImportEnabledStatusReq(
          [void Function(GGroupPostsAutoImportEnabledStatusReqBuilder)?
              updates]) =>
      (new GGroupPostsAutoImportEnabledStatusReqBuilder()..update(updates))
          ._build();

  _$GGroupPostsAutoImportEnabledStatusReq._(
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
        vars, 'GGroupPostsAutoImportEnabledStatusReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGroupPostsAutoImportEnabledStatusReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(executeOnListen,
        'GGroupPostsAutoImportEnabledStatusReq', 'executeOnListen');
  }

  @override
  GGroupPostsAutoImportEnabledStatusReq rebuild(
          void Function(GGroupPostsAutoImportEnabledStatusReqBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportEnabledStatusReqBuilder toBuilder() =>
      new GGroupPostsAutoImportEnabledStatusReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGroupPostsAutoImportEnabledStatusReq &&
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
    return (newBuiltValueToStringHelper('GGroupPostsAutoImportEnabledStatusReq')
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

class GGroupPostsAutoImportEnabledStatusReqBuilder
    implements
        Builder<GGroupPostsAutoImportEnabledStatusReq,
            GGroupPostsAutoImportEnabledStatusReqBuilder> {
  _$GGroupPostsAutoImportEnabledStatusReq? _$v;

  _i3.GGroupPostsAutoImportEnabledStatusVarsBuilder? _vars;
  _i3.GGroupPostsAutoImportEnabledStatusVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupPostsAutoImportEnabledStatusVarsBuilder();
  set vars(_i3.GGroupPostsAutoImportEnabledStatusVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGroupPostsAutoImportEnabledStatusData? Function(
      _i2.GGroupPostsAutoImportEnabledStatusData?,
      _i2.GGroupPostsAutoImportEnabledStatusData?)? _updateResult;
  _i2.GGroupPostsAutoImportEnabledStatusData? Function(
          _i2.GGroupPostsAutoImportEnabledStatusData?,
          _i2.GGroupPostsAutoImportEnabledStatusData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGroupPostsAutoImportEnabledStatusData? Function(
                  _i2.GGroupPostsAutoImportEnabledStatusData?,
                  _i2.GGroupPostsAutoImportEnabledStatusData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGroupPostsAutoImportEnabledStatusDataBuilder? _optimisticResponse;
  _i2.GGroupPostsAutoImportEnabledStatusDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGroupPostsAutoImportEnabledStatusDataBuilder();
  set optimisticResponse(
          _i2.GGroupPostsAutoImportEnabledStatusDataBuilder?
              optimisticResponse) =>
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

  GGroupPostsAutoImportEnabledStatusReqBuilder() {
    GGroupPostsAutoImportEnabledStatusReq._initializeBuilder(this);
  }

  GGroupPostsAutoImportEnabledStatusReqBuilder get _$this {
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
  void replace(GGroupPostsAutoImportEnabledStatusReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportEnabledStatusReq;
  }

  @override
  void update(
      void Function(GGroupPostsAutoImportEnabledStatusReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportEnabledStatusReq build() => _build();

  _$GGroupPostsAutoImportEnabledStatusReq _build() {
    _$GGroupPostsAutoImportEnabledStatusReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsAutoImportEnabledStatusReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(operation,
                  'GGroupPostsAutoImportEnabledStatusReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GGroupPostsAutoImportEnabledStatusReq',
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
            'GGroupPostsAutoImportEnabledStatusReq',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEnableGroupPostsAutoImportReq extends GEnableGroupPostsAutoImportReq {
  @override
  final _i3.GEnableGroupPostsAutoImportVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GEnableGroupPostsAutoImportData? Function(
      _i2.GEnableGroupPostsAutoImportData?,
      _i2.GEnableGroupPostsAutoImportData?)? updateResult;
  @override
  final _i2.GEnableGroupPostsAutoImportData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GEnableGroupPostsAutoImportReq(
          [void Function(GEnableGroupPostsAutoImportReqBuilder)? updates]) =>
      (new GEnableGroupPostsAutoImportReqBuilder()..update(updates))._build();

  _$GEnableGroupPostsAutoImportReq._(
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
        vars, 'GEnableGroupPostsAutoImportReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GEnableGroupPostsAutoImportReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GEnableGroupPostsAutoImportReq', 'executeOnListen');
  }

  @override
  GEnableGroupPostsAutoImportReq rebuild(
          void Function(GEnableGroupPostsAutoImportReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnableGroupPostsAutoImportReqBuilder toBuilder() =>
      new GEnableGroupPostsAutoImportReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GEnableGroupPostsAutoImportReq &&
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
    return (newBuiltValueToStringHelper('GEnableGroupPostsAutoImportReq')
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

class GEnableGroupPostsAutoImportReqBuilder
    implements
        Builder<GEnableGroupPostsAutoImportReq,
            GEnableGroupPostsAutoImportReqBuilder> {
  _$GEnableGroupPostsAutoImportReq? _$v;

  _i3.GEnableGroupPostsAutoImportVarsBuilder? _vars;
  _i3.GEnableGroupPostsAutoImportVarsBuilder get vars =>
      _$this._vars ??= new _i3.GEnableGroupPostsAutoImportVarsBuilder();
  set vars(_i3.GEnableGroupPostsAutoImportVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GEnableGroupPostsAutoImportData? Function(
      _i2.GEnableGroupPostsAutoImportData?,
      _i2.GEnableGroupPostsAutoImportData?)? _updateResult;
  _i2.GEnableGroupPostsAutoImportData? Function(
          _i2.GEnableGroupPostsAutoImportData?,
          _i2.GEnableGroupPostsAutoImportData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GEnableGroupPostsAutoImportData? Function(
                  _i2.GEnableGroupPostsAutoImportData?,
                  _i2.GEnableGroupPostsAutoImportData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GEnableGroupPostsAutoImportDataBuilder? _optimisticResponse;
  _i2.GEnableGroupPostsAutoImportDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GEnableGroupPostsAutoImportDataBuilder();
  set optimisticResponse(
          _i2.GEnableGroupPostsAutoImportDataBuilder? optimisticResponse) =>
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

  GEnableGroupPostsAutoImportReqBuilder() {
    GEnableGroupPostsAutoImportReq._initializeBuilder(this);
  }

  GEnableGroupPostsAutoImportReqBuilder get _$this {
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
  void replace(GEnableGroupPostsAutoImportReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEnableGroupPostsAutoImportReq;
  }

  @override
  void update(void Function(GEnableGroupPostsAutoImportReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnableGroupPostsAutoImportReq build() => _build();

  _$GEnableGroupPostsAutoImportReq _build() {
    _$GEnableGroupPostsAutoImportReq _$result;
    try {
      _$result = _$v ??
          new _$GEnableGroupPostsAutoImportReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GEnableGroupPostsAutoImportReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GEnableGroupPostsAutoImportReq',
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
            'GEnableGroupPostsAutoImportReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupPostsAutoImportHintReq extends GGroupPostsAutoImportHintReq {
  @override
  final _i3.GGroupPostsAutoImportHintVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGroupPostsAutoImportHintData? Function(
      _i2.GGroupPostsAutoImportHintData?,
      _i2.GGroupPostsAutoImportHintData?)? updateResult;
  @override
  final _i2.GGroupPostsAutoImportHintData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGroupPostsAutoImportHintReq(
          [void Function(GGroupPostsAutoImportHintReqBuilder)? updates]) =>
      (new GGroupPostsAutoImportHintReqBuilder()..update(updates))._build();

  _$GGroupPostsAutoImportHintReq._(
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
        vars, 'GGroupPostsAutoImportHintReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGroupPostsAutoImportHintReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GGroupPostsAutoImportHintReq', 'executeOnListen');
  }

  @override
  GGroupPostsAutoImportHintReq rebuild(
          void Function(GGroupPostsAutoImportHintReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportHintReqBuilder toBuilder() =>
      new GGroupPostsAutoImportHintReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGroupPostsAutoImportHintReq &&
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
    return (newBuiltValueToStringHelper('GGroupPostsAutoImportHintReq')
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

class GGroupPostsAutoImportHintReqBuilder
    implements
        Builder<GGroupPostsAutoImportHintReq,
            GGroupPostsAutoImportHintReqBuilder> {
  _$GGroupPostsAutoImportHintReq? _$v;

  _i3.GGroupPostsAutoImportHintVarsBuilder? _vars;
  _i3.GGroupPostsAutoImportHintVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupPostsAutoImportHintVarsBuilder();
  set vars(_i3.GGroupPostsAutoImportHintVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGroupPostsAutoImportHintData? Function(
      _i2.GGroupPostsAutoImportHintData?,
      _i2.GGroupPostsAutoImportHintData?)? _updateResult;
  _i2.GGroupPostsAutoImportHintData? Function(
          _i2.GGroupPostsAutoImportHintData?,
          _i2.GGroupPostsAutoImportHintData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGroupPostsAutoImportHintData? Function(
                  _i2.GGroupPostsAutoImportHintData?,
                  _i2.GGroupPostsAutoImportHintData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGroupPostsAutoImportHintDataBuilder? _optimisticResponse;
  _i2.GGroupPostsAutoImportHintDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GGroupPostsAutoImportHintDataBuilder();
  set optimisticResponse(
          _i2.GGroupPostsAutoImportHintDataBuilder? optimisticResponse) =>
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

  GGroupPostsAutoImportHintReqBuilder() {
    GGroupPostsAutoImportHintReq._initializeBuilder(this);
  }

  GGroupPostsAutoImportHintReqBuilder get _$this {
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
  void replace(GGroupPostsAutoImportHintReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportHintReq;
  }

  @override
  void update(void Function(GGroupPostsAutoImportHintReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportHintReq build() => _build();

  _$GGroupPostsAutoImportHintReq _build() {
    _$GGroupPostsAutoImportHintReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsAutoImportHintReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GGroupPostsAutoImportHintReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GGroupPostsAutoImportHintReq',
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
            'GGroupPostsAutoImportHintReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
