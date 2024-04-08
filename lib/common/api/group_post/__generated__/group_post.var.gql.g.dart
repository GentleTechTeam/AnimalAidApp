// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsVars> _$gGroupPostsVarsSerializer =
    new _$GGroupPostsVarsSerializer();
Serializer<GTogglePostsInFeedVars> _$gTogglePostsInFeedVarsSerializer =
    new _$GTogglePostsInFeedVarsSerializer();
Serializer<GAssignTagToApprovedPostVars>
    _$gAssignTagToApprovedPostVarsSerializer =
    new _$GAssignTagToApprovedPostVarsSerializer();
Serializer<GDeleteTagFromApprovedPostVars>
    _$gDeleteTagFromApprovedPostVarsSerializer =
    new _$GDeleteTagFromApprovedPostVarsSerializer();

class _$GGroupPostsVarsSerializer
    implements StructuredSerializer<GGroupPostsVars> {
  @override
  final Iterable<Type> types = const [GGroupPostsVars, _$GGroupPostsVars];
  @override
  final String wireName = 'GGroupPostsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGroupPostsVars object,
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
    value = object.skip;
    if (value != null) {
      result
        ..add('skip')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGroupPostsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsVarsBuilder();

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
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTogglePostsInFeedVarsSerializer
    implements StructuredSerializer<GTogglePostsInFeedVars> {
  @override
  final Iterable<Type> types = const [
    GTogglePostsInFeedVars,
    _$GTogglePostsInFeedVars
  ];
  @override
  final String wireName = 'GTogglePostsInFeedVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTogglePostsInFeedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'payload',
      serializers.serialize(object.payload,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i2.GTogglePostsInFeedPayload)])),
    ];

    return result;
  }

  @override
  GTogglePostsInFeedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTogglePostsInFeedVarsBuilder();

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
        case 'payload':
          result.payload.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i2.GTogglePostsInFeedPayload)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignTagToApprovedPostVarsSerializer
    implements StructuredSerializer<GAssignTagToApprovedPostVars> {
  @override
  final Iterable<Type> types = const [
    GAssignTagToApprovedPostVars,
    _$GAssignTagToApprovedPostVars
  ];
  @override
  final String wireName = 'GAssignTagToApprovedPostVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignTagToApprovedPostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'tag',
      serializers.serialize(object.tag, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAssignTagToApprovedPostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignTagToApprovedPostVarsBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteTagFromApprovedPostVarsSerializer
    implements StructuredSerializer<GDeleteTagFromApprovedPostVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteTagFromApprovedPostVars,
    _$GDeleteTagFromApprovedPostVars
  ];
  @override
  final String wireName = 'GDeleteTagFromApprovedPostVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteTagFromApprovedPostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'tag',
      serializers.serialize(object.tag, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteTagFromApprovedPostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteTagFromApprovedPostVarsBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsVars extends GGroupPostsVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final int? skip;
  @override
  final int? first;

  factory _$GGroupPostsVars([void Function(GGroupPostsVarsBuilder)? updates]) =>
      (new GGroupPostsVarsBuilder()..update(updates))._build();

  _$GGroupPostsVars._(
      {required this.token, required this.groupId, this.skip, this.first})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(token, 'GGroupPostsVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GGroupPostsVars', 'groupId');
  }

  @override
  GGroupPostsVars rebuild(void Function(GGroupPostsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsVarsBuilder toBuilder() =>
      new GGroupPostsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsVars &&
        token == other.token &&
        groupId == other.groupId &&
        skip == other.skip &&
        first == other.first;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, token.hashCode), groupId.hashCode), skip.hashCode),
        first.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupPostsVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('skip', skip)
          ..add('first', first))
        .toString();
  }
}

class GGroupPostsVarsBuilder
    implements Builder<GGroupPostsVars, GGroupPostsVarsBuilder> {
  _$GGroupPostsVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _first;
  int? get first => _$this._first;
  set first(int? first) => _$this._first = first;

  GGroupPostsVarsBuilder();

  GGroupPostsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _skip = $v.skip;
      _first = $v.first;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsVars;
  }

  @override
  void update(void Function(GGroupPostsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsVars build() => _build();

  _$GGroupPostsVars _build() {
    final _$result = _$v ??
        new _$GGroupPostsVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GGroupPostsVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GGroupPostsVars', 'groupId'),
            skip: skip,
            first: first);
    replace(_$result);
    return _$result;
  }
}

class _$GTogglePostsInFeedVars extends GTogglePostsInFeedVars {
  @override
  final String token;
  @override
  final BuiltList<_i2.GTogglePostsInFeedPayload> payload;

  factory _$GTogglePostsInFeedVars(
          [void Function(GTogglePostsInFeedVarsBuilder)? updates]) =>
      (new GTogglePostsInFeedVarsBuilder()..update(updates))._build();

  _$GTogglePostsInFeedVars._({required this.token, required this.payload})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GTogglePostsInFeedVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        payload, 'GTogglePostsInFeedVars', 'payload');
  }

  @override
  GTogglePostsInFeedVars rebuild(
          void Function(GTogglePostsInFeedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTogglePostsInFeedVarsBuilder toBuilder() =>
      new GTogglePostsInFeedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTogglePostsInFeedVars &&
        token == other.token &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), payload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTogglePostsInFeedVars')
          ..add('token', token)
          ..add('payload', payload))
        .toString();
  }
}

class GTogglePostsInFeedVarsBuilder
    implements Builder<GTogglePostsInFeedVars, GTogglePostsInFeedVarsBuilder> {
  _$GTogglePostsInFeedVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ListBuilder<_i2.GTogglePostsInFeedPayload>? _payload;
  ListBuilder<_i2.GTogglePostsInFeedPayload> get payload =>
      _$this._payload ??= new ListBuilder<_i2.GTogglePostsInFeedPayload>();
  set payload(ListBuilder<_i2.GTogglePostsInFeedPayload>? payload) =>
      _$this._payload = payload;

  GTogglePostsInFeedVarsBuilder();

  GTogglePostsInFeedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _payload = $v.payload.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTogglePostsInFeedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTogglePostsInFeedVars;
  }

  @override
  void update(void Function(GTogglePostsInFeedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTogglePostsInFeedVars build() => _build();

  _$GTogglePostsInFeedVars _build() {
    _$GTogglePostsInFeedVars _$result;
    try {
      _$result = _$v ??
          new _$GTogglePostsInFeedVars._(
              token: BuiltValueNullFieldError.checkNotNull(
                  token, 'GTogglePostsInFeedVars', 'token'),
              payload: payload.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTogglePostsInFeedVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignTagToApprovedPostVars extends GAssignTagToApprovedPostVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final String postId;
  @override
  final String tag;

  factory _$GAssignTagToApprovedPostVars(
          [void Function(GAssignTagToApprovedPostVarsBuilder)? updates]) =>
      (new GAssignTagToApprovedPostVarsBuilder()..update(updates))._build();

  _$GAssignTagToApprovedPostVars._(
      {required this.token,
      required this.groupId,
      required this.postId,
      required this.tag})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GAssignTagToApprovedPostVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GAssignTagToApprovedPostVars', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        postId, 'GAssignTagToApprovedPostVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        tag, 'GAssignTagToApprovedPostVars', 'tag');
  }

  @override
  GAssignTagToApprovedPostVars rebuild(
          void Function(GAssignTagToApprovedPostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignTagToApprovedPostVarsBuilder toBuilder() =>
      new GAssignTagToApprovedPostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignTagToApprovedPostVars &&
        token == other.token &&
        groupId == other.groupId &&
        postId == other.postId &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, token.hashCode), groupId.hashCode), postId.hashCode),
        tag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignTagToApprovedPostVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('postId', postId)
          ..add('tag', tag))
        .toString();
  }
}

class GAssignTagToApprovedPostVarsBuilder
    implements
        Builder<GAssignTagToApprovedPostVars,
            GAssignTagToApprovedPostVarsBuilder> {
  _$GAssignTagToApprovedPostVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  GAssignTagToApprovedPostVarsBuilder();

  GAssignTagToApprovedPostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _postId = $v.postId;
      _tag = $v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignTagToApprovedPostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignTagToApprovedPostVars;
  }

  @override
  void update(void Function(GAssignTagToApprovedPostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAssignTagToApprovedPostVars build() => _build();

  _$GAssignTagToApprovedPostVars _build() {
    final _$result = _$v ??
        new _$GAssignTagToApprovedPostVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GAssignTagToApprovedPostVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GAssignTagToApprovedPostVars', 'groupId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, 'GAssignTagToApprovedPostVars', 'postId'),
            tag: BuiltValueNullFieldError.checkNotNull(
                tag, 'GAssignTagToApprovedPostVars', 'tag'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteTagFromApprovedPostVars extends GDeleteTagFromApprovedPostVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final String postId;
  @override
  final String tag;

  factory _$GDeleteTagFromApprovedPostVars(
          [void Function(GDeleteTagFromApprovedPostVarsBuilder)? updates]) =>
      (new GDeleteTagFromApprovedPostVarsBuilder()..update(updates))._build();

  _$GDeleteTagFromApprovedPostVars._(
      {required this.token,
      required this.groupId,
      required this.postId,
      required this.tag})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GDeleteTagFromApprovedPostVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GDeleteTagFromApprovedPostVars', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        postId, 'GDeleteTagFromApprovedPostVars', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        tag, 'GDeleteTagFromApprovedPostVars', 'tag');
  }

  @override
  GDeleteTagFromApprovedPostVars rebuild(
          void Function(GDeleteTagFromApprovedPostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteTagFromApprovedPostVarsBuilder toBuilder() =>
      new GDeleteTagFromApprovedPostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteTagFromApprovedPostVars &&
        token == other.token &&
        groupId == other.groupId &&
        postId == other.postId &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, token.hashCode), groupId.hashCode), postId.hashCode),
        tag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteTagFromApprovedPostVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('postId', postId)
          ..add('tag', tag))
        .toString();
  }
}

class GDeleteTagFromApprovedPostVarsBuilder
    implements
        Builder<GDeleteTagFromApprovedPostVars,
            GDeleteTagFromApprovedPostVarsBuilder> {
  _$GDeleteTagFromApprovedPostVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  GDeleteTagFromApprovedPostVarsBuilder();

  GDeleteTagFromApprovedPostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _postId = $v.postId;
      _tag = $v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteTagFromApprovedPostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteTagFromApprovedPostVars;
  }

  @override
  void update(void Function(GDeleteTagFromApprovedPostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteTagFromApprovedPostVars build() => _build();

  _$GDeleteTagFromApprovedPostVars _build() {
    final _$result = _$v ??
        new _$GDeleteTagFromApprovedPostVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GDeleteTagFromApprovedPostVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GDeleteTagFromApprovedPostVars', 'groupId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, 'GDeleteTagFromApprovedPostVars', 'postId'),
            tag: BuiltValueNullFieldError.checkNotNull(
                tag, 'GDeleteTagFromApprovedPostVars', 'tag'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
