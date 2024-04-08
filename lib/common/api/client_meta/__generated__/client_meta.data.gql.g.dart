// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_meta.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GClientMetaData> _$gClientMetaDataSerializer =
    new _$GClientMetaDataSerializer();
Serializer<GClientMetaData_mobileClientMeta>
    _$gClientMetaDataMobileClientMetaSerializer =
    new _$GClientMetaData_mobileClientMetaSerializer();

class _$GClientMetaDataSerializer
    implements StructuredSerializer<GClientMetaData> {
  @override
  final Iterable<Type> types = const [GClientMetaData, _$GClientMetaData];
  @override
  final String wireName = 'GClientMetaData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GClientMetaData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'mobileClientMeta',
      serializers.serialize(object.mobileClientMeta,
          specifiedType: const FullType(GClientMetaData_mobileClientMeta)),
    ];

    return result;
  }

  @override
  GClientMetaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GClientMetaDataBuilder();

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
        case 'mobileClientMeta':
          result.mobileClientMeta.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GClientMetaData_mobileClientMeta))!
              as GClientMetaData_mobileClientMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$GClientMetaData_mobileClientMetaSerializer
    implements StructuredSerializer<GClientMetaData_mobileClientMeta> {
  @override
  final Iterable<Type> types = const [
    GClientMetaData_mobileClientMeta,
    _$GClientMetaData_mobileClientMeta
  ];
  @override
  final String wireName = 'GClientMetaData_mobileClientMeta';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GClientMetaData_mobileClientMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isActual',
      serializers.serialize(object.isActual,
          specifiedType: const FullType(bool)),
      'clientUpdateUrlIos',
      serializers.serialize(object.clientUpdateUrlIos,
          specifiedType: const FullType(String)),
      'clientUpdateUrlAndroid',
      serializers.serialize(object.clientUpdateUrlAndroid,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GClientMetaData_mobileClientMeta deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GClientMetaData_mobileClientMetaBuilder();

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
        case 'isActual':
          result.isActual = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'clientUpdateUrlIos':
          result.clientUpdateUrlIos = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'clientUpdateUrlAndroid':
          result.clientUpdateUrlAndroid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GClientMetaData extends GClientMetaData {
  @override
  final String G__typename;
  @override
  final GClientMetaData_mobileClientMeta mobileClientMeta;

  factory _$GClientMetaData([void Function(GClientMetaDataBuilder)? updates]) =>
      (new GClientMetaDataBuilder()..update(updates))._build();

  _$GClientMetaData._(
      {required this.G__typename, required this.mobileClientMeta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GClientMetaData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        mobileClientMeta, 'GClientMetaData', 'mobileClientMeta');
  }

  @override
  GClientMetaData rebuild(void Function(GClientMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GClientMetaDataBuilder toBuilder() =>
      new GClientMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GClientMetaData &&
        G__typename == other.G__typename &&
        mobileClientMeta == other.mobileClientMeta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), mobileClientMeta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GClientMetaData')
          ..add('G__typename', G__typename)
          ..add('mobileClientMeta', mobileClientMeta))
        .toString();
  }
}

class GClientMetaDataBuilder
    implements Builder<GClientMetaData, GClientMetaDataBuilder> {
  _$GClientMetaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GClientMetaData_mobileClientMetaBuilder? _mobileClientMeta;
  GClientMetaData_mobileClientMetaBuilder get mobileClientMeta =>
      _$this._mobileClientMeta ??=
          new GClientMetaData_mobileClientMetaBuilder();
  set mobileClientMeta(
          GClientMetaData_mobileClientMetaBuilder? mobileClientMeta) =>
      _$this._mobileClientMeta = mobileClientMeta;

  GClientMetaDataBuilder() {
    GClientMetaData._initializeBuilder(this);
  }

  GClientMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mobileClientMeta = $v.mobileClientMeta.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GClientMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GClientMetaData;
  }

  @override
  void update(void Function(GClientMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GClientMetaData build() => _build();

  _$GClientMetaData _build() {
    _$GClientMetaData _$result;
    try {
      _$result = _$v ??
          new _$GClientMetaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GClientMetaData', 'G__typename'),
              mobileClientMeta: mobileClientMeta.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mobileClientMeta';
        mobileClientMeta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GClientMetaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GClientMetaData_mobileClientMeta
    extends GClientMetaData_mobileClientMeta {
  @override
  final String G__typename;
  @override
  final bool isActual;
  @override
  final String clientUpdateUrlIos;
  @override
  final String clientUpdateUrlAndroid;

  factory _$GClientMetaData_mobileClientMeta(
          [void Function(GClientMetaData_mobileClientMetaBuilder)? updates]) =>
      (new GClientMetaData_mobileClientMetaBuilder()..update(updates))._build();

  _$GClientMetaData_mobileClientMeta._(
      {required this.G__typename,
      required this.isActual,
      required this.clientUpdateUrlIos,
      required this.clientUpdateUrlAndroid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GClientMetaData_mobileClientMeta', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isActual, 'GClientMetaData_mobileClientMeta', 'isActual');
    BuiltValueNullFieldError.checkNotNull(clientUpdateUrlIos,
        'GClientMetaData_mobileClientMeta', 'clientUpdateUrlIos');
    BuiltValueNullFieldError.checkNotNull(clientUpdateUrlAndroid,
        'GClientMetaData_mobileClientMeta', 'clientUpdateUrlAndroid');
  }

  @override
  GClientMetaData_mobileClientMeta rebuild(
          void Function(GClientMetaData_mobileClientMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GClientMetaData_mobileClientMetaBuilder toBuilder() =>
      new GClientMetaData_mobileClientMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GClientMetaData_mobileClientMeta &&
        G__typename == other.G__typename &&
        isActual == other.isActual &&
        clientUpdateUrlIos == other.clientUpdateUrlIos &&
        clientUpdateUrlAndroid == other.clientUpdateUrlAndroid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), isActual.hashCode),
            clientUpdateUrlIos.hashCode),
        clientUpdateUrlAndroid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GClientMetaData_mobileClientMeta')
          ..add('G__typename', G__typename)
          ..add('isActual', isActual)
          ..add('clientUpdateUrlIos', clientUpdateUrlIos)
          ..add('clientUpdateUrlAndroid', clientUpdateUrlAndroid))
        .toString();
  }
}

class GClientMetaData_mobileClientMetaBuilder
    implements
        Builder<GClientMetaData_mobileClientMeta,
            GClientMetaData_mobileClientMetaBuilder> {
  _$GClientMetaData_mobileClientMeta? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isActual;
  bool? get isActual => _$this._isActual;
  set isActual(bool? isActual) => _$this._isActual = isActual;

  String? _clientUpdateUrlIos;
  String? get clientUpdateUrlIos => _$this._clientUpdateUrlIos;
  set clientUpdateUrlIos(String? clientUpdateUrlIos) =>
      _$this._clientUpdateUrlIos = clientUpdateUrlIos;

  String? _clientUpdateUrlAndroid;
  String? get clientUpdateUrlAndroid => _$this._clientUpdateUrlAndroid;
  set clientUpdateUrlAndroid(String? clientUpdateUrlAndroid) =>
      _$this._clientUpdateUrlAndroid = clientUpdateUrlAndroid;

  GClientMetaData_mobileClientMetaBuilder() {
    GClientMetaData_mobileClientMeta._initializeBuilder(this);
  }

  GClientMetaData_mobileClientMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isActual = $v.isActual;
      _clientUpdateUrlIos = $v.clientUpdateUrlIos;
      _clientUpdateUrlAndroid = $v.clientUpdateUrlAndroid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GClientMetaData_mobileClientMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GClientMetaData_mobileClientMeta;
  }

  @override
  void update(void Function(GClientMetaData_mobileClientMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GClientMetaData_mobileClientMeta build() => _build();

  _$GClientMetaData_mobileClientMeta _build() {
    final _$result = _$v ??
        new _$GClientMetaData_mobileClientMeta._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GClientMetaData_mobileClientMeta', 'G__typename'),
            isActual: BuiltValueNullFieldError.checkNotNull(
                isActual, 'GClientMetaData_mobileClientMeta', 'isActual'),
            clientUpdateUrlIos: BuiltValueNullFieldError.checkNotNull(
                clientUpdateUrlIos,
                'GClientMetaData_mobileClientMeta',
                'clientUpdateUrlIos'),
            clientUpdateUrlAndroid: BuiltValueNullFieldError.checkNotNull(
                clientUpdateUrlAndroid,
                'GClientMetaData_mobileClientMeta',
                'clientUpdateUrlAndroid'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
