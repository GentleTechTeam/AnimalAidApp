// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_meta.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAppMetaVars> _$gAppMetaVarsSerializer =
    new _$GAppMetaVarsSerializer();

class _$GAppMetaVarsSerializer implements StructuredSerializer<GAppMetaVars> {
  @override
  final Iterable<Type> types = const [GAppMetaVars, _$GAppMetaVars];
  @override
  final String wireName = 'GAppMetaVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAppMetaVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAppMetaVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAppMetaVarsBuilder().build();
  }
}

class _$GAppMetaVars extends GAppMetaVars {
  factory _$GAppMetaVars([void Function(GAppMetaVarsBuilder)? updates]) =>
      (new GAppMetaVarsBuilder()..update(updates))._build();

  _$GAppMetaVars._() : super._();

  @override
  GAppMetaVars rebuild(void Function(GAppMetaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppMetaVarsBuilder toBuilder() => new GAppMetaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppMetaVars;
  }

  @override
  int get hashCode {
    return 518388442;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAppMetaVars').toString();
  }
}

class GAppMetaVarsBuilder
    implements Builder<GAppMetaVars, GAppMetaVarsBuilder> {
  _$GAppMetaVars? _$v;

  GAppMetaVarsBuilder();

  @override
  void replace(GAppMetaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppMetaVars;
  }

  @override
  void update(void Function(GAppMetaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppMetaVars build() => _build();

  _$GAppMetaVars _build() {
    final _$result = _$v ?? new _$GAppMetaVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
