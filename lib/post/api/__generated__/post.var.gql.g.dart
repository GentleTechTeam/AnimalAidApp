// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostVars> _$gPostVarsSerializer = new _$GPostVarsSerializer();

class _$GPostVarsSerializer implements StructuredSerializer<GPostVars> {
  @override
  final Iterable<Type> types = const [GPostVars, _$GPostVars];
  @override
  final String wireName = 'GPostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
  GPostVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$GPostVars extends GPostVars {
  @override
  final String groupId;
  @override
  final String postId;

  factory _$GPostVars([void Function(GPostVarsBuilder)? updates]) =>
      (new GPostVarsBuilder()..update(updates))._build();

  _$GPostVars._({required this.groupId, required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(groupId, 'GPostVars', 'groupId');
    BuiltValueNullFieldError.checkNotNull(postId, 'GPostVars', 'postId');
  }

  @override
  GPostVars rebuild(void Function(GPostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostVarsBuilder toBuilder() => new GPostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostVars &&
        groupId == other.groupId &&
        postId == other.postId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, groupId.hashCode), postId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostVars')
          ..add('groupId', groupId)
          ..add('postId', postId))
        .toString();
  }
}

class GPostVarsBuilder implements Builder<GPostVars, GPostVarsBuilder> {
  _$GPostVars? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  GPostVarsBuilder();

  GPostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostVars;
  }

  @override
  void update(void Function(GPostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostVars build() => _build();

  _$GPostVars _build() {
    final _$result = _$v ??
        new _$GPostVars._(
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GPostVars', 'groupId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, 'GPostVars', 'postId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
