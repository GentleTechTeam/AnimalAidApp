// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_meta.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GClientMetaVars> _$gClientMetaVarsSerializer =
    new _$GClientMetaVarsSerializer();

class _$GClientMetaVarsSerializer
    implements StructuredSerializer<GClientMetaVars> {
  @override
  final Iterable<Type> types = const [GClientMetaVars, _$GClientMetaVars];
  @override
  final String wireName = 'GClientMetaVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GClientMetaVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appVersion',
      serializers.serialize(object.appVersion,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GClientMetaVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GClientMetaVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appVersion':
          result.appVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GClientMetaVars extends GClientMetaVars {
  @override
  final String appVersion;

  factory _$GClientMetaVars([void Function(GClientMetaVarsBuilder)? updates]) =>
      (new GClientMetaVarsBuilder()..update(updates))._build();

  _$GClientMetaVars._({required this.appVersion}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appVersion, 'GClientMetaVars', 'appVersion');
  }

  @override
  GClientMetaVars rebuild(void Function(GClientMetaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GClientMetaVarsBuilder toBuilder() =>
      new GClientMetaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GClientMetaVars && appVersion == other.appVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(0, appVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GClientMetaVars')
          ..add('appVersion', appVersion))
        .toString();
  }
}

class GClientMetaVarsBuilder
    implements Builder<GClientMetaVars, GClientMetaVarsBuilder> {
  _$GClientMetaVars? _$v;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  GClientMetaVarsBuilder();

  GClientMetaVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appVersion = $v.appVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GClientMetaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GClientMetaVars;
  }

  @override
  void update(void Function(GClientMetaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GClientMetaVars build() => _build();

  _$GClientMetaVars _build() {
    final _$result = _$v ??
        new _$GClientMetaVars._(
            appVersion: BuiltValueNullFieldError.checkNotNull(
                appVersion, 'GClientMetaVars', 'appVersion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
