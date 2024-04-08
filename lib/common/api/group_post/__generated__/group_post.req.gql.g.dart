// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsReq> _$gGroupPostsReqSerializer =
    new _$GGroupPostsReqSerializer();
Serializer<GTogglePostsInFeedReq> _$gTogglePostsInFeedReqSerializer =
    new _$GTogglePostsInFeedReqSerializer();
Serializer<GAssignTagToApprovedPostReq>
    _$gAssignTagToApprovedPostReqSerializer =
    new _$GAssignTagToApprovedPostReqSerializer();
Serializer<GDeleteTagFromApprovedPostReq>
    _$gDeleteTagFromApprovedPostReqSerializer =
    new _$GDeleteTagFromApprovedPostReqSerializer();

class _$GGroupPostsReqSerializer
    implements StructuredSerializer<GGroupPostsReq> {
  @override
  final Iterable<Type> types = const [GGroupPostsReq, _$GGroupPostsReq];
  @override
  final String wireName = 'GGroupPostsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGroupPostsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGroupPostsVars)),
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
            specifiedType: const FullType(_i2.GGroupPostsData)));
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
  GGroupPostsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGroupPostsVars))!
              as _i3.GGroupPostsVars);
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
                  specifiedType: const FullType(_i2.GGroupPostsData))!
              as _i2.GGroupPostsData);
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

class _$GTogglePostsInFeedReqSerializer
    implements StructuredSerializer<GTogglePostsInFeedReq> {
  @override
  final Iterable<Type> types = const [
    GTogglePostsInFeedReq,
    _$GTogglePostsInFeedReq
  ];
  @override
  final String wireName = 'GTogglePostsInFeedReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTogglePostsInFeedReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GTogglePostsInFeedVars)),
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
            specifiedType: const FullType(_i2.GTogglePostsInFeedData)));
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
  GTogglePostsInFeedReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTogglePostsInFeedReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GTogglePostsInFeedVars))!
              as _i3.GTogglePostsInFeedVars);
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
                  specifiedType: const FullType(_i2.GTogglePostsInFeedData))!
              as _i2.GTogglePostsInFeedData);
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

class _$GAssignTagToApprovedPostReqSerializer
    implements StructuredSerializer<GAssignTagToApprovedPostReq> {
  @override
  final Iterable<Type> types = const [
    GAssignTagToApprovedPostReq,
    _$GAssignTagToApprovedPostReq
  ];
  @override
  final String wireName = 'GAssignTagToApprovedPostReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignTagToApprovedPostReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAssignTagToApprovedPostVars)),
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
            specifiedType: const FullType(_i2.GAssignTagToApprovedPostData)));
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
  GAssignTagToApprovedPostReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignTagToApprovedPostReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GAssignTagToApprovedPostVars))!
              as _i3.GAssignTagToApprovedPostVars);
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
                      const FullType(_i2.GAssignTagToApprovedPostData))!
              as _i2.GAssignTagToApprovedPostData);
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

class _$GDeleteTagFromApprovedPostReqSerializer
    implements StructuredSerializer<GDeleteTagFromApprovedPostReq> {
  @override
  final Iterable<Type> types = const [
    GDeleteTagFromApprovedPostReq,
    _$GDeleteTagFromApprovedPostReq
  ];
  @override
  final String wireName = 'GDeleteTagFromApprovedPostReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteTagFromApprovedPostReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GDeleteTagFromApprovedPostVars)),
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
            specifiedType: const FullType(_i2.GDeleteTagFromApprovedPostData)));
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
  GDeleteTagFromApprovedPostReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteTagFromApprovedPostReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GDeleteTagFromApprovedPostVars))!
              as _i3.GDeleteTagFromApprovedPostVars);
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
                      const FullType(_i2.GDeleteTagFromApprovedPostData))!
              as _i2.GDeleteTagFromApprovedPostData);
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

class _$GGroupPostsReq extends GGroupPostsReq {
  @override
  final _i3.GGroupPostsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGroupPostsData? Function(
      _i2.GGroupPostsData?, _i2.GGroupPostsData?)? updateResult;
  @override
  final _i2.GGroupPostsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGroupPostsReq([void Function(GGroupPostsReqBuilder)? updates]) =>
      (new GGroupPostsReqBuilder()..update(updates))._build();

  _$GGroupPostsReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, 'GGroupPostsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGroupPostsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GGroupPostsReq', 'executeOnListen');
  }

  @override
  GGroupPostsReq rebuild(void Function(GGroupPostsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsReqBuilder toBuilder() =>
      new GGroupPostsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGroupPostsReq &&
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
    return (newBuiltValueToStringHelper('GGroupPostsReq')
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

class GGroupPostsReqBuilder
    implements Builder<GGroupPostsReq, GGroupPostsReqBuilder> {
  _$GGroupPostsReq? _$v;

  _i3.GGroupPostsVarsBuilder? _vars;
  _i3.GGroupPostsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupPostsVarsBuilder();
  set vars(_i3.GGroupPostsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGroupPostsData? Function(_i2.GGroupPostsData?, _i2.GGroupPostsData?)?
      _updateResult;
  _i2.GGroupPostsData? Function(_i2.GGroupPostsData?, _i2.GGroupPostsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGroupPostsData? Function(
                  _i2.GGroupPostsData?, _i2.GGroupPostsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGroupPostsDataBuilder? _optimisticResponse;
  _i2.GGroupPostsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGroupPostsDataBuilder();
  set optimisticResponse(_i2.GGroupPostsDataBuilder? optimisticResponse) =>
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

  GGroupPostsReqBuilder() {
    GGroupPostsReq._initializeBuilder(this);
  }

  GGroupPostsReqBuilder get _$this {
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
  void replace(GGroupPostsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsReq;
  }

  @override
  void update(void Function(GGroupPostsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsReq build() => _build();

  _$GGroupPostsReq _build() {
    _$GGroupPostsReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GGroupPostsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, 'GGroupPostsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupPostsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTogglePostsInFeedReq extends GTogglePostsInFeedReq {
  @override
  final _i3.GTogglePostsInFeedVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GTogglePostsInFeedData? Function(
      _i2.GTogglePostsInFeedData?, _i2.GTogglePostsInFeedData?)? updateResult;
  @override
  final _i2.GTogglePostsInFeedData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GTogglePostsInFeedReq(
          [void Function(GTogglePostsInFeedReqBuilder)? updates]) =>
      (new GTogglePostsInFeedReqBuilder()..update(updates))._build();

  _$GTogglePostsInFeedReq._(
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
        vars, 'GTogglePostsInFeedReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GTogglePostsInFeedReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GTogglePostsInFeedReq', 'executeOnListen');
  }

  @override
  GTogglePostsInFeedReq rebuild(
          void Function(GTogglePostsInFeedReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTogglePostsInFeedReqBuilder toBuilder() =>
      new GTogglePostsInFeedReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GTogglePostsInFeedReq &&
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
    return (newBuiltValueToStringHelper('GTogglePostsInFeedReq')
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

class GTogglePostsInFeedReqBuilder
    implements Builder<GTogglePostsInFeedReq, GTogglePostsInFeedReqBuilder> {
  _$GTogglePostsInFeedReq? _$v;

  _i3.GTogglePostsInFeedVarsBuilder? _vars;
  _i3.GTogglePostsInFeedVarsBuilder get vars =>
      _$this._vars ??= new _i3.GTogglePostsInFeedVarsBuilder();
  set vars(_i3.GTogglePostsInFeedVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GTogglePostsInFeedData? Function(
      _i2.GTogglePostsInFeedData?, _i2.GTogglePostsInFeedData?)? _updateResult;
  _i2.GTogglePostsInFeedData? Function(
          _i2.GTogglePostsInFeedData?, _i2.GTogglePostsInFeedData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GTogglePostsInFeedData? Function(
                  _i2.GTogglePostsInFeedData?, _i2.GTogglePostsInFeedData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GTogglePostsInFeedDataBuilder? _optimisticResponse;
  _i2.GTogglePostsInFeedDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GTogglePostsInFeedDataBuilder();
  set optimisticResponse(
          _i2.GTogglePostsInFeedDataBuilder? optimisticResponse) =>
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

  GTogglePostsInFeedReqBuilder() {
    GTogglePostsInFeedReq._initializeBuilder(this);
  }

  GTogglePostsInFeedReqBuilder get _$this {
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
  void replace(GTogglePostsInFeedReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTogglePostsInFeedReq;
  }

  @override
  void update(void Function(GTogglePostsInFeedReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTogglePostsInFeedReq build() => _build();

  _$GTogglePostsInFeedReq _build() {
    _$GTogglePostsInFeedReq _$result;
    try {
      _$result = _$v ??
          new _$GTogglePostsInFeedReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GTogglePostsInFeedReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, 'GTogglePostsInFeedReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTogglePostsInFeedReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignTagToApprovedPostReq extends GAssignTagToApprovedPostReq {
  @override
  final _i3.GAssignTagToApprovedPostVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GAssignTagToApprovedPostData? Function(
          _i2.GAssignTagToApprovedPostData?, _i2.GAssignTagToApprovedPostData?)?
      updateResult;
  @override
  final _i2.GAssignTagToApprovedPostData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GAssignTagToApprovedPostReq(
          [void Function(GAssignTagToApprovedPostReqBuilder)? updates]) =>
      (new GAssignTagToApprovedPostReqBuilder()..update(updates))._build();

  _$GAssignTagToApprovedPostReq._(
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
        vars, 'GAssignTagToApprovedPostReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GAssignTagToApprovedPostReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GAssignTagToApprovedPostReq', 'executeOnListen');
  }

  @override
  GAssignTagToApprovedPostReq rebuild(
          void Function(GAssignTagToApprovedPostReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignTagToApprovedPostReqBuilder toBuilder() =>
      new GAssignTagToApprovedPostReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GAssignTagToApprovedPostReq &&
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
    return (newBuiltValueToStringHelper('GAssignTagToApprovedPostReq')
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

class GAssignTagToApprovedPostReqBuilder
    implements
        Builder<GAssignTagToApprovedPostReq,
            GAssignTagToApprovedPostReqBuilder> {
  _$GAssignTagToApprovedPostReq? _$v;

  _i3.GAssignTagToApprovedPostVarsBuilder? _vars;
  _i3.GAssignTagToApprovedPostVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAssignTagToApprovedPostVarsBuilder();
  set vars(_i3.GAssignTagToApprovedPostVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GAssignTagToApprovedPostData? Function(
          _i2.GAssignTagToApprovedPostData?, _i2.GAssignTagToApprovedPostData?)?
      _updateResult;
  _i2.GAssignTagToApprovedPostData? Function(
          _i2.GAssignTagToApprovedPostData?, _i2.GAssignTagToApprovedPostData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GAssignTagToApprovedPostData? Function(
                  _i2.GAssignTagToApprovedPostData?,
                  _i2.GAssignTagToApprovedPostData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GAssignTagToApprovedPostDataBuilder? _optimisticResponse;
  _i2.GAssignTagToApprovedPostDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GAssignTagToApprovedPostDataBuilder();
  set optimisticResponse(
          _i2.GAssignTagToApprovedPostDataBuilder? optimisticResponse) =>
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

  GAssignTagToApprovedPostReqBuilder() {
    GAssignTagToApprovedPostReq._initializeBuilder(this);
  }

  GAssignTagToApprovedPostReqBuilder get _$this {
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
  void replace(GAssignTagToApprovedPostReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignTagToApprovedPostReq;
  }

  @override
  void update(void Function(GAssignTagToApprovedPostReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAssignTagToApprovedPostReq build() => _build();

  _$GAssignTagToApprovedPostReq _build() {
    _$GAssignTagToApprovedPostReq _$result;
    try {
      _$result = _$v ??
          new _$GAssignTagToApprovedPostReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GAssignTagToApprovedPostReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GAssignTagToApprovedPostReq',
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
            'GAssignTagToApprovedPostReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteTagFromApprovedPostReq extends GDeleteTagFromApprovedPostReq {
  @override
  final _i3.GDeleteTagFromApprovedPostVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GDeleteTagFromApprovedPostData? Function(
      _i2.GDeleteTagFromApprovedPostData?,
      _i2.GDeleteTagFromApprovedPostData?)? updateResult;
  @override
  final _i2.GDeleteTagFromApprovedPostData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GDeleteTagFromApprovedPostReq(
          [void Function(GDeleteTagFromApprovedPostReqBuilder)? updates]) =>
      (new GDeleteTagFromApprovedPostReqBuilder()..update(updates))._build();

  _$GDeleteTagFromApprovedPostReq._(
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
        vars, 'GDeleteTagFromApprovedPostReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GDeleteTagFromApprovedPostReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GDeleteTagFromApprovedPostReq', 'executeOnListen');
  }

  @override
  GDeleteTagFromApprovedPostReq rebuild(
          void Function(GDeleteTagFromApprovedPostReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteTagFromApprovedPostReqBuilder toBuilder() =>
      new GDeleteTagFromApprovedPostReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GDeleteTagFromApprovedPostReq &&
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
    return (newBuiltValueToStringHelper('GDeleteTagFromApprovedPostReq')
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

class GDeleteTagFromApprovedPostReqBuilder
    implements
        Builder<GDeleteTagFromApprovedPostReq,
            GDeleteTagFromApprovedPostReqBuilder> {
  _$GDeleteTagFromApprovedPostReq? _$v;

  _i3.GDeleteTagFromApprovedPostVarsBuilder? _vars;
  _i3.GDeleteTagFromApprovedPostVarsBuilder get vars =>
      _$this._vars ??= new _i3.GDeleteTagFromApprovedPostVarsBuilder();
  set vars(_i3.GDeleteTagFromApprovedPostVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GDeleteTagFromApprovedPostData? Function(
      _i2.GDeleteTagFromApprovedPostData?,
      _i2.GDeleteTagFromApprovedPostData?)? _updateResult;
  _i2.GDeleteTagFromApprovedPostData? Function(
          _i2.GDeleteTagFromApprovedPostData?,
          _i2.GDeleteTagFromApprovedPostData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GDeleteTagFromApprovedPostData? Function(
                  _i2.GDeleteTagFromApprovedPostData?,
                  _i2.GDeleteTagFromApprovedPostData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GDeleteTagFromApprovedPostDataBuilder? _optimisticResponse;
  _i2.GDeleteTagFromApprovedPostDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GDeleteTagFromApprovedPostDataBuilder();
  set optimisticResponse(
          _i2.GDeleteTagFromApprovedPostDataBuilder? optimisticResponse) =>
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

  GDeleteTagFromApprovedPostReqBuilder() {
    GDeleteTagFromApprovedPostReq._initializeBuilder(this);
  }

  GDeleteTagFromApprovedPostReqBuilder get _$this {
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
  void replace(GDeleteTagFromApprovedPostReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteTagFromApprovedPostReq;
  }

  @override
  void update(void Function(GDeleteTagFromApprovedPostReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteTagFromApprovedPostReq build() => _build();

  _$GDeleteTagFromApprovedPostReq _build() {
    _$GDeleteTagFromApprovedPostReq _$result;
    try {
      _$result = _$v ??
          new _$GDeleteTagFromApprovedPostReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GDeleteTagFromApprovedPostReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GDeleteTagFromApprovedPostReq',
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
            'GDeleteTagFromApprovedPostReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
