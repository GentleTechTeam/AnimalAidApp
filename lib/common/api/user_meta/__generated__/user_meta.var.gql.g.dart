// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meta.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserMetaVars> _$gUserMetaVarsSerializer =
    new _$GUserMetaVarsSerializer();

class _$GUserMetaVarsSerializer implements StructuredSerializer<GUserMetaVars> {
  @override
  final Iterable<Type> types = const [GUserMetaVars, _$GUserMetaVars];
  @override
  final String wireName = 'GUserMetaVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserMetaVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserMetaVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserMetaVarsBuilder();

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

class _$GUserMetaVars extends GUserMetaVars {
  @override
  final String token;

  factory _$GUserMetaVars([void Function(GUserMetaVarsBuilder)? updates]) =>
      (new GUserMetaVarsBuilder()..update(updates))._build();

  _$GUserMetaVars._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, 'GUserMetaVars', 'token');
  }

  @override
  GUserMetaVars rebuild(void Function(GUserMetaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserMetaVarsBuilder toBuilder() => new GUserMetaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserMetaVars && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserMetaVars')..add('token', token))
        .toString();
  }
}

class GUserMetaVarsBuilder
    implements Builder<GUserMetaVars, GUserMetaVarsBuilder> {
  _$GUserMetaVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GUserMetaVarsBuilder();

  GUserMetaVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserMetaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserMetaVars;
  }

  @override
  void update(void Function(GUserMetaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserMetaVars build() => _build();

  _$GUserMetaVars _build() {
    final _$result = _$v ??
        new _$GUserMetaVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GUserMetaVars', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
