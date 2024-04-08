// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_concern.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReportPostConcernVars> _$gReportPostConcernVarsSerializer =
    new _$GReportPostConcernVarsSerializer();

class _$GReportPostConcernVarsSerializer
    implements StructuredSerializer<GReportPostConcernVars> {
  @override
  final Iterable<Type> types = const [
    GReportPostConcernVars,
    _$GReportPostConcernVars
  ];
  @override
  final String wireName = 'GReportPostConcernVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReportPostConcernVars object,
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
    ];

    return result;
  }

  @override
  GReportPostConcernVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReportPostConcernVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GReportPostConcernVars extends GReportPostConcernVars {
  @override
  final String token;
  @override
  final String groupId;
  @override
  final String postId;

  factory _$GReportPostConcernVars(
          [void Function(GReportPostConcernVarsBuilder)? updates]) =>
      (new GReportPostConcernVarsBuilder()..update(updates))._build();

  _$GReportPostConcernVars._(
      {required this.token, required this.groupId, required this.postId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'GReportPostConcernVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GReportPostConcernVars', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        postId, 'GReportPostConcernVars', 'postId');
  }

  @override
  GReportPostConcernVars rebuild(
          void Function(GReportPostConcernVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReportPostConcernVarsBuilder toBuilder() =>
      new GReportPostConcernVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReportPostConcernVars &&
        token == other.token &&
        groupId == other.groupId &&
        postId == other.postId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), groupId.hashCode), postId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReportPostConcernVars')
          ..add('token', token)
          ..add('groupId', groupId)
          ..add('postId', postId))
        .toString();
  }
}

class GReportPostConcernVarsBuilder
    implements Builder<GReportPostConcernVars, GReportPostConcernVarsBuilder> {
  _$GReportPostConcernVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GReportPostConcernVarsBuilder();

  GReportPostConcernVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _groupId = $v.groupId;
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReportPostConcernVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReportPostConcernVars;
  }

  @override
  void update(void Function(GReportPostConcernVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReportPostConcernVars build() => _build();

  _$GReportPostConcernVars _build() {
    final _$result = _$v ??
        new _$GReportPostConcernVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GReportPostConcernVars', 'token'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GReportPostConcernVars', 'groupId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, 'GReportPostConcernVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
