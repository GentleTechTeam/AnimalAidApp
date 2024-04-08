// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tag_group.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMainTagGroupsVars> _$gMainTagGroupsVarsSerializer =
    new _$GMainTagGroupsVarsSerializer();

class _$GMainTagGroupsVarsSerializer
    implements StructuredSerializer<GMainTagGroupsVars> {
  @override
  final Iterable<Type> types = const [GMainTagGroupsVars, _$GMainTagGroupsVars];
  @override
  final String wireName = 'GMainTagGroupsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMainTagGroupsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMainTagGroupsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMainTagGroupsVarsBuilder().build();
  }
}

class _$GMainTagGroupsVars extends GMainTagGroupsVars {
  factory _$GMainTagGroupsVars(
          [void Function(GMainTagGroupsVarsBuilder)? updates]) =>
      (new GMainTagGroupsVarsBuilder()..update(updates))._build();

  _$GMainTagGroupsVars._() : super._();

  @override
  GMainTagGroupsVars rebuild(
          void Function(GMainTagGroupsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMainTagGroupsVarsBuilder toBuilder() =>
      new GMainTagGroupsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMainTagGroupsVars;
  }

  @override
  int get hashCode {
    return 245203420;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GMainTagGroupsVars').toString();
  }
}

class GMainTagGroupsVarsBuilder
    implements Builder<GMainTagGroupsVars, GMainTagGroupsVarsBuilder> {
  _$GMainTagGroupsVars? _$v;

  GMainTagGroupsVarsBuilder();

  @override
  void replace(GMainTagGroupsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMainTagGroupsVars;
  }

  @override
  void update(void Function(GMainTagGroupsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMainTagGroupsVars build() => _build();

  _$GMainTagGroupsVars _build() {
    final _$result = _$v ?? new _$GMainTagGroupsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
