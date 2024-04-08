// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post_auto_import.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsAutoImportEnabledStatusVars>
    _$gGroupPostsAutoImportEnabledStatusVarsSerializer =
    new _$GGroupPostsAutoImportEnabledStatusVarsSerializer();
Serializer<GEnableGroupPostsAutoImportVars>
    _$gEnableGroupPostsAutoImportVarsSerializer =
    new _$GEnableGroupPostsAutoImportVarsSerializer();
Serializer<GGroupPostsAutoImportHintVars>
    _$gGroupPostsAutoImportHintVarsSerializer =
    new _$GGroupPostsAutoImportHintVarsSerializer();

class _$GGroupPostsAutoImportEnabledStatusVarsSerializer
    implements StructuredSerializer<GGroupPostsAutoImportEnabledStatusVars> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportEnabledStatusVars,
    _$GGroupPostsAutoImportEnabledStatusVars
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportEnabledStatusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportEnabledStatusVars object,
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
  GGroupPostsAutoImportEnabledStatusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsAutoImportEnabledStatusVarsBuilder();

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

class _$GEnableGroupPostsAutoImportVarsSerializer
    implements StructuredSerializer<GEnableGroupPostsAutoImportVars> {
  @override
  final Iterable<Type> types = const [
    GEnableGroupPostsAutoImportVars,
    _$GEnableGroupPostsAutoImportVars
  ];
  @override
  final String wireName = 'GEnableGroupPostsAutoImportVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEnableGroupPostsAutoImportVars object,
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
  GEnableGroupPostsAutoImportVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEnableGroupPostsAutoImportVarsBuilder();

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

class _$GGroupPostsAutoImportHintVarsSerializer
    implements StructuredSerializer<GGroupPostsAutoImportHintVars> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportHintVars,
    _$GGroupPostsAutoImportHintVars
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportHintVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportHintVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGroupPostsAutoImportHintVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGroupPostsAutoImportHintVarsBuilder().build();
  }
}

class _$GGroupPostsAutoImportEnabledStatusVars
    extends GGroupPostsAutoImportEnabledStatusVars {
  @override
  final String token;
  @override
  final String groupId;

  factory _$GGroupPostsAutoImportEnabledStatusVars(
          [void Function(GGroupPostsAutoImportEnabledStatusVarsBuilder)?
              updates]) =>
      (new GGroupPostsAutoImportEnabledStatusVarsBuilder()..update(updates))
          ._build();

  _$GGroupPostsAutoImportEnabledStatusVars._(
      {required this.token, required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GGroupPostsAutoImportEnabledStatusVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GGroupPostsAutoImportEnabledStatusVars', 'groupId');
  }

  @override
  GGroupPostsAutoImportEnabledStatusVars rebuild(
          void Function(GGroupPostsAutoImportEnabledStatusVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportEnabledStatusVarsBuilder toBuilder() =>
      new GGroupPostsAutoImportEnabledStatusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsAutoImportEnabledStatusVars &&
        token == other.token &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), groupId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGroupPostsAutoImportEnabledStatusVars')
          ..add('token', token)
          ..add('groupId', groupId))
        .toString();
  }
}

class GGroupPostsAutoImportEnabledStatusVarsBuilder
    implements
        Builder<GGroupPostsAutoImportEnabledStatusVars,
            GGroupPostsAutoImportEnabledStatusVarsBuilder> {
  _$GGroupPostsAutoImportEnabledStatusVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GGroupPostsAutoImportEnabledStatusVarsBuilder();

  GGroupPostsAutoImportEnabledStatusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsAutoImportEnabledStatusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportEnabledStatusVars;
  }

  @override
  void update(
      void Function(GGroupPostsAutoImportEnabledStatusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportEnabledStatusVars build() => _build();

  _$GGroupPostsAutoImportEnabledStatusVars _build() {
    final _$result = _$v ??
        new _$GGroupPostsAutoImportEnabledStatusVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GGroupPostsAutoImportEnabledStatusVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GGroupPostsAutoImportEnabledStatusVars', 'groupId'));
    replace(_$result);
    return _$result;
  }
}

class _$GEnableGroupPostsAutoImportVars
    extends GEnableGroupPostsAutoImportVars {
  @override
  final String token;
  @override
  final String groupId;

  factory _$GEnableGroupPostsAutoImportVars(
          [void Function(GEnableGroupPostsAutoImportVarsBuilder)? updates]) =>
      (new GEnableGroupPostsAutoImportVarsBuilder()..update(updates))._build();

  _$GEnableGroupPostsAutoImportVars._(
      {required this.token, required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GEnableGroupPostsAutoImportVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GEnableGroupPostsAutoImportVars', 'groupId');
  }

  @override
  GEnableGroupPostsAutoImportVars rebuild(
          void Function(GEnableGroupPostsAutoImportVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnableGroupPostsAutoImportVarsBuilder toBuilder() =>
      new GEnableGroupPostsAutoImportVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEnableGroupPostsAutoImportVars &&
        token == other.token &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), groupId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GEnableGroupPostsAutoImportVars')
          ..add('token', token)
          ..add('groupId', groupId))
        .toString();
  }
}

class GEnableGroupPostsAutoImportVarsBuilder
    implements
        Builder<GEnableGroupPostsAutoImportVars,
            GEnableGroupPostsAutoImportVarsBuilder> {
  _$GEnableGroupPostsAutoImportVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GEnableGroupPostsAutoImportVarsBuilder();

  GEnableGroupPostsAutoImportVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEnableGroupPostsAutoImportVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEnableGroupPostsAutoImportVars;
  }

  @override
  void update(void Function(GEnableGroupPostsAutoImportVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnableGroupPostsAutoImportVars build() => _build();

  _$GEnableGroupPostsAutoImportVars _build() {
    final _$result = _$v ??
        new _$GEnableGroupPostsAutoImportVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GEnableGroupPostsAutoImportVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GEnableGroupPostsAutoImportVars', 'groupId'));
    replace(_$result);
    return _$result;
  }
}

class _$GGroupPostsAutoImportHintVars extends GGroupPostsAutoImportHintVars {
  factory _$GGroupPostsAutoImportHintVars(
          [void Function(GGroupPostsAutoImportHintVarsBuilder)? updates]) =>
      (new GGroupPostsAutoImportHintVarsBuilder()..update(updates))._build();

  _$GGroupPostsAutoImportHintVars._() : super._();

  @override
  GGroupPostsAutoImportHintVars rebuild(
          void Function(GGroupPostsAutoImportHintVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportHintVarsBuilder toBuilder() =>
      new GGroupPostsAutoImportHintVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsAutoImportHintVars;
  }

  @override
  int get hashCode {
    return 428170074;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGroupPostsAutoImportHintVars')
        .toString();
  }
}

class GGroupPostsAutoImportHintVarsBuilder
    implements
        Builder<GGroupPostsAutoImportHintVars,
            GGroupPostsAutoImportHintVarsBuilder> {
  _$GGroupPostsAutoImportHintVars? _$v;

  GGroupPostsAutoImportHintVarsBuilder();

  @override
  void replace(GGroupPostsAutoImportHintVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportHintVars;
  }

  @override
  void update(void Function(GGroupPostsAutoImportHintVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportHintVars build() => _build();

  _$GGroupPostsAutoImportHintVars _build() {
    final _$result = _$v ?? new _$GGroupPostsAutoImportHintVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
