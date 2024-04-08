// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_meta.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAppMetaData> _$gAppMetaDataSerializer =
    new _$GAppMetaDataSerializer();
Serializer<GAppMetaData_appMeta> _$gAppMetaDataAppMetaSerializer =
    new _$GAppMetaData_appMetaSerializer();

class _$GAppMetaDataSerializer implements StructuredSerializer<GAppMetaData> {
  @override
  final Iterable<Type> types = const [GAppMetaData, _$GAppMetaData];
  @override
  final String wireName = 'GAppMetaData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAppMetaData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'appMeta',
      serializers.serialize(object.appMeta,
          specifiedType: const FullType(GAppMetaData_appMeta)),
    ];

    return result;
  }

  @override
  GAppMetaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppMetaDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'appMeta':
          result.appMeta.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAppMetaData_appMeta))!
              as GAppMetaData_appMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$GAppMetaData_appMetaSerializer
    implements StructuredSerializer<GAppMetaData_appMeta> {
  @override
  final Iterable<Type> types = const [
    GAppMetaData_appMeta,
    _$GAppMetaData_appMeta
  ];
  @override
  final String wireName = 'GAppMetaData_appMeta';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppMetaData_appMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'privacyPolicyUrl',
      serializers.serialize(object.privacyPolicyUrl,
          specifiedType: const FullType(String)),
      'supportEmail',
      serializers.serialize(object.supportEmail,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAppMetaData_appMeta deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppMetaData_appMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'privacyPolicyUrl':
          result.privacyPolicyUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'supportEmail':
          result.supportEmail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppMetaData extends GAppMetaData {
  @override
  final String G__typename;
  @override
  final GAppMetaData_appMeta appMeta;

  factory _$GAppMetaData([void Function(GAppMetaDataBuilder)? updates]) =>
      (new GAppMetaDataBuilder()..update(updates))._build();

  _$GAppMetaData._({required this.G__typename, required this.appMeta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAppMetaData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(appMeta, 'GAppMetaData', 'appMeta');
  }

  @override
  GAppMetaData rebuild(void Function(GAppMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppMetaDataBuilder toBuilder() => new GAppMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppMetaData &&
        G__typename == other.G__typename &&
        appMeta == other.appMeta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), appMeta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAppMetaData')
          ..add('G__typename', G__typename)
          ..add('appMeta', appMeta))
        .toString();
  }
}

class GAppMetaDataBuilder
    implements Builder<GAppMetaData, GAppMetaDataBuilder> {
  _$GAppMetaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAppMetaData_appMetaBuilder? _appMeta;
  GAppMetaData_appMetaBuilder get appMeta =>
      _$this._appMeta ??= new GAppMetaData_appMetaBuilder();
  set appMeta(GAppMetaData_appMetaBuilder? appMeta) =>
      _$this._appMeta = appMeta;

  GAppMetaDataBuilder() {
    GAppMetaData._initializeBuilder(this);
  }

  GAppMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _appMeta = $v.appMeta.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppMetaData;
  }

  @override
  void update(void Function(GAppMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppMetaData build() => _build();

  _$GAppMetaData _build() {
    _$GAppMetaData _$result;
    try {
      _$result = _$v ??
          new _$GAppMetaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAppMetaData', 'G__typename'),
              appMeta: appMeta.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appMeta';
        appMeta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAppMetaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppMetaData_appMeta extends GAppMetaData_appMeta {
  @override
  final String G__typename;
  @override
  final String privacyPolicyUrl;
  @override
  final String supportEmail;

  factory _$GAppMetaData_appMeta(
          [void Function(GAppMetaData_appMetaBuilder)? updates]) =>
      (new GAppMetaData_appMetaBuilder()..update(updates))._build();

  _$GAppMetaData_appMeta._(
      {required this.G__typename,
      required this.privacyPolicyUrl,
      required this.supportEmail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAppMetaData_appMeta', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        privacyPolicyUrl, 'GAppMetaData_appMeta', 'privacyPolicyUrl');
    BuiltValueNullFieldError.checkNotNull(
        supportEmail, 'GAppMetaData_appMeta', 'supportEmail');
  }

  @override
  GAppMetaData_appMeta rebuild(
          void Function(GAppMetaData_appMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppMetaData_appMetaBuilder toBuilder() =>
      new GAppMetaData_appMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppMetaData_appMeta &&
        G__typename == other.G__typename &&
        privacyPolicyUrl == other.privacyPolicyUrl &&
        supportEmail == other.supportEmail;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), privacyPolicyUrl.hashCode),
        supportEmail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAppMetaData_appMeta')
          ..add('G__typename', G__typename)
          ..add('privacyPolicyUrl', privacyPolicyUrl)
          ..add('supportEmail', supportEmail))
        .toString();
  }
}

class GAppMetaData_appMetaBuilder
    implements Builder<GAppMetaData_appMeta, GAppMetaData_appMetaBuilder> {
  _$GAppMetaData_appMeta? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _privacyPolicyUrl;
  String? get privacyPolicyUrl => _$this._privacyPolicyUrl;
  set privacyPolicyUrl(String? privacyPolicyUrl) =>
      _$this._privacyPolicyUrl = privacyPolicyUrl;

  String? _supportEmail;
  String? get supportEmail => _$this._supportEmail;
  set supportEmail(String? supportEmail) => _$this._supportEmail = supportEmail;

  GAppMetaData_appMetaBuilder() {
    GAppMetaData_appMeta._initializeBuilder(this);
  }

  GAppMetaData_appMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _privacyPolicyUrl = $v.privacyPolicyUrl;
      _supportEmail = $v.supportEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppMetaData_appMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppMetaData_appMeta;
  }

  @override
  void update(void Function(GAppMetaData_appMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppMetaData_appMeta build() => _build();

  _$GAppMetaData_appMeta _build() {
    final _$result = _$v ??
        new _$GAppMetaData_appMeta._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAppMetaData_appMeta', 'G__typename'),
            privacyPolicyUrl: BuiltValueNullFieldError.checkNotNull(
                privacyPolicyUrl, 'GAppMetaData_appMeta', 'privacyPolicyUrl'),
            supportEmail: BuiltValueNullFieldError.checkNotNull(
                supportEmail, 'GAppMetaData_appMeta', 'supportEmail'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
