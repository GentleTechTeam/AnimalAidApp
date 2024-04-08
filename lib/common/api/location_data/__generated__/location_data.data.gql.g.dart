// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGenerateLocationDataData> _$gGenerateLocationDataDataSerializer =
    new _$GGenerateLocationDataDataSerializer();
Serializer<GGenerateLocationDataData_locationData>
    _$gGenerateLocationDataDataLocationDataSerializer =
    new _$GGenerateLocationDataData_locationDataSerializer();
Serializer<GRefreshLocationDataData> _$gRefreshLocationDataDataSerializer =
    new _$GRefreshLocationDataDataSerializer();
Serializer<GRefreshLocationDataData_refreshedLocationData>
    _$gRefreshLocationDataDataRefreshedLocationDataSerializer =
    new _$GRefreshLocationDataData_refreshedLocationDataSerializer();
Serializer<GSearchLocationsData> _$gSearchLocationsDataSerializer =
    new _$GSearchLocationsDataSerializer();
Serializer<GSearchLocationsData_locations>
    _$gSearchLocationsDataLocationsSerializer =
    new _$GSearchLocationsData_locationsSerializer();

class _$GGenerateLocationDataDataSerializer
    implements StructuredSerializer<GGenerateLocationDataData> {
  @override
  final Iterable<Type> types = const [
    GGenerateLocationDataData,
    _$GGenerateLocationDataData
  ];
  @override
  final String wireName = 'GGenerateLocationDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenerateLocationDataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'locationData',
      serializers.serialize(object.locationData,
          specifiedType:
              const FullType(GGenerateLocationDataData_locationData)),
    ];

    return result;
  }

  @override
  GGenerateLocationDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenerateLocationDataDataBuilder();

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
        case 'locationData':
          result.locationData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGenerateLocationDataData_locationData))!
              as GGenerateLocationDataData_locationData);
          break;
      }
    }

    return result.build();
  }
}

class _$GGenerateLocationDataData_locationDataSerializer
    implements StructuredSerializer<GGenerateLocationDataData_locationData> {
  @override
  final Iterable<Type> types = const [
    GGenerateLocationDataData_locationData,
    _$GGenerateLocationDataData_locationData
  ];
  @override
  final String wireName = 'GGenerateLocationDataData_locationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenerateLocationDataData_locationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'keyType',
      serializers.serialize(object.keyType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGenerateLocationDataData_locationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenerateLocationDataData_locationDataBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'keyType':
          result.keyType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshLocationDataDataSerializer
    implements StructuredSerializer<GRefreshLocationDataData> {
  @override
  final Iterable<Type> types = const [
    GRefreshLocationDataData,
    _$GRefreshLocationDataData
  ];
  @override
  final String wireName = 'GRefreshLocationDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefreshLocationDataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.refreshedLocationData;
    if (value != null) {
      result
        ..add('refreshedLocationData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRefreshLocationDataData_refreshedLocationData)));
    }
    return result;
  }

  @override
  GRefreshLocationDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshLocationDataDataBuilder();

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
        case 'refreshedLocationData':
          result.refreshedLocationData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRefreshLocationDataData_refreshedLocationData))!
              as GRefreshLocationDataData_refreshedLocationData);
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshLocationDataData_refreshedLocationDataSerializer
    implements
        StructuredSerializer<GRefreshLocationDataData_refreshedLocationData> {
  @override
  final Iterable<Type> types = const [
    GRefreshLocationDataData_refreshedLocationData,
    _$GRefreshLocationDataData_refreshedLocationData
  ];
  @override
  final String wireName = 'GRefreshLocationDataData_refreshedLocationData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRefreshLocationDataData_refreshedLocationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'keyType',
      serializers.serialize(object.keyType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRefreshLocationDataData_refreshedLocationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshLocationDataData_refreshedLocationDataBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'keyType':
          result.keyType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchLocationsDataSerializer
    implements StructuredSerializer<GSearchLocationsData> {
  @override
  final Iterable<Type> types = const [
    GSearchLocationsData,
    _$GSearchLocationsData
  ];
  @override
  final String wireName = 'GSearchLocationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchLocationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'locations',
      serializers.serialize(object.locations,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GSearchLocationsData_locations)])),
    ];

    return result;
  }

  @override
  GSearchLocationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchLocationsDataBuilder();

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
        case 'locations':
          result.locations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GSearchLocationsData_locations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchLocationsData_locationsSerializer
    implements StructuredSerializer<GSearchLocationsData_locations> {
  @override
  final Iterable<Type> types = const [
    GSearchLocationsData_locations,
    _$GSearchLocationsData_locations
  ];
  @override
  final String wireName = 'GSearchLocationsData_locations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchLocationsData_locations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'keyType',
      serializers.serialize(object.keyType,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchLocationsData_locations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchLocationsData_locationsBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'keyType':
          result.keyType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGenerateLocationDataData extends GGenerateLocationDataData {
  @override
  final String G__typename;
  @override
  final GGenerateLocationDataData_locationData locationData;

  factory _$GGenerateLocationDataData(
          [void Function(GGenerateLocationDataDataBuilder)? updates]) =>
      (new GGenerateLocationDataDataBuilder()..update(updates))._build();

  _$GGenerateLocationDataData._(
      {required this.G__typename, required this.locationData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGenerateLocationDataData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        locationData, 'GGenerateLocationDataData', 'locationData');
  }

  @override
  GGenerateLocationDataData rebuild(
          void Function(GGenerateLocationDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenerateLocationDataDataBuilder toBuilder() =>
      new GGenerateLocationDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenerateLocationDataData &&
        G__typename == other.G__typename &&
        locationData == other.locationData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), locationData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGenerateLocationDataData')
          ..add('G__typename', G__typename)
          ..add('locationData', locationData))
        .toString();
  }
}

class GGenerateLocationDataDataBuilder
    implements
        Builder<GGenerateLocationDataData, GGenerateLocationDataDataBuilder> {
  _$GGenerateLocationDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGenerateLocationDataData_locationDataBuilder? _locationData;
  GGenerateLocationDataData_locationDataBuilder get locationData =>
      _$this._locationData ??=
          new GGenerateLocationDataData_locationDataBuilder();
  set locationData(
          GGenerateLocationDataData_locationDataBuilder? locationData) =>
      _$this._locationData = locationData;

  GGenerateLocationDataDataBuilder() {
    GGenerateLocationDataData._initializeBuilder(this);
  }

  GGenerateLocationDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locationData = $v.locationData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenerateLocationDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenerateLocationDataData;
  }

  @override
  void update(void Function(GGenerateLocationDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenerateLocationDataData build() => _build();

  _$GGenerateLocationDataData _build() {
    _$GGenerateLocationDataData _$result;
    try {
      _$result = _$v ??
          new _$GGenerateLocationDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGenerateLocationDataData', 'G__typename'),
              locationData: locationData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locationData';
        locationData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGenerateLocationDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGenerateLocationDataData_locationData
    extends GGenerateLocationDataData_locationData {
  @override
  final String G__typename;
  @override
  final String key;
  @override
  final String label;
  @override
  final String keyType;

  factory _$GGenerateLocationDataData_locationData(
          [void Function(GGenerateLocationDataData_locationDataBuilder)?
              updates]) =>
      (new GGenerateLocationDataData_locationDataBuilder()..update(updates))
          ._build();

  _$GGenerateLocationDataData_locationData._(
      {required this.G__typename,
      required this.key,
      required this.label,
      required this.keyType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGenerateLocationDataData_locationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        key, 'GGenerateLocationDataData_locationData', 'key');
    BuiltValueNullFieldError.checkNotNull(
        label, 'GGenerateLocationDataData_locationData', 'label');
    BuiltValueNullFieldError.checkNotNull(
        keyType, 'GGenerateLocationDataData_locationData', 'keyType');
  }

  @override
  GGenerateLocationDataData_locationData rebuild(
          void Function(GGenerateLocationDataData_locationDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenerateLocationDataData_locationDataBuilder toBuilder() =>
      new GGenerateLocationDataData_locationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenerateLocationDataData_locationData &&
        G__typename == other.G__typename &&
        key == other.key &&
        label == other.label &&
        keyType == other.keyType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), key.hashCode), label.hashCode),
        keyType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGenerateLocationDataData_locationData')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('label', label)
          ..add('keyType', keyType))
        .toString();
  }
}

class GGenerateLocationDataData_locationDataBuilder
    implements
        Builder<GGenerateLocationDataData_locationData,
            GGenerateLocationDataData_locationDataBuilder> {
  _$GGenerateLocationDataData_locationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  GGenerateLocationDataData_locationDataBuilder() {
    GGenerateLocationDataData_locationData._initializeBuilder(this);
  }

  GGenerateLocationDataData_locationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _label = $v.label;
      _keyType = $v.keyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenerateLocationDataData_locationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenerateLocationDataData_locationData;
  }

  @override
  void update(
      void Function(GGenerateLocationDataData_locationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenerateLocationDataData_locationData build() => _build();

  _$GGenerateLocationDataData_locationData _build() {
    final _$result = _$v ??
        new _$GGenerateLocationDataData_locationData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGenerateLocationDataData_locationData', 'G__typename'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'GGenerateLocationDataData_locationData', 'key'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'GGenerateLocationDataData_locationData', 'label'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, 'GGenerateLocationDataData_locationData', 'keyType'));
    replace(_$result);
    return _$result;
  }
}

class _$GRefreshLocationDataData extends GRefreshLocationDataData {
  @override
  final String G__typename;
  @override
  final GRefreshLocationDataData_refreshedLocationData? refreshedLocationData;

  factory _$GRefreshLocationDataData(
          [void Function(GRefreshLocationDataDataBuilder)? updates]) =>
      (new GRefreshLocationDataDataBuilder()..update(updates))._build();

  _$GRefreshLocationDataData._(
      {required this.G__typename, this.refreshedLocationData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRefreshLocationDataData', 'G__typename');
  }

  @override
  GRefreshLocationDataData rebuild(
          void Function(GRefreshLocationDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshLocationDataDataBuilder toBuilder() =>
      new GRefreshLocationDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshLocationDataData &&
        G__typename == other.G__typename &&
        refreshedLocationData == other.refreshedLocationData;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), refreshedLocationData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefreshLocationDataData')
          ..add('G__typename', G__typename)
          ..add('refreshedLocationData', refreshedLocationData))
        .toString();
  }
}

class GRefreshLocationDataDataBuilder
    implements
        Builder<GRefreshLocationDataData, GRefreshLocationDataDataBuilder> {
  _$GRefreshLocationDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRefreshLocationDataData_refreshedLocationDataBuilder? _refreshedLocationData;
  GRefreshLocationDataData_refreshedLocationDataBuilder
      get refreshedLocationData => _$this._refreshedLocationData ??=
          new GRefreshLocationDataData_refreshedLocationDataBuilder();
  set refreshedLocationData(
          GRefreshLocationDataData_refreshedLocationDataBuilder?
              refreshedLocationData) =>
      _$this._refreshedLocationData = refreshedLocationData;

  GRefreshLocationDataDataBuilder() {
    GRefreshLocationDataData._initializeBuilder(this);
  }

  GRefreshLocationDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _refreshedLocationData = $v.refreshedLocationData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshLocationDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshLocationDataData;
  }

  @override
  void update(void Function(GRefreshLocationDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRefreshLocationDataData build() => _build();

  _$GRefreshLocationDataData _build() {
    _$GRefreshLocationDataData _$result;
    try {
      _$result = _$v ??
          new _$GRefreshLocationDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRefreshLocationDataData', 'G__typename'),
              refreshedLocationData: _refreshedLocationData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refreshedLocationData';
        _refreshedLocationData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRefreshLocationDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRefreshLocationDataData_refreshedLocationData
    extends GRefreshLocationDataData_refreshedLocationData {
  @override
  final String G__typename;
  @override
  final String key;
  @override
  final String label;
  @override
  final String keyType;

  factory _$GRefreshLocationDataData_refreshedLocationData(
          [void Function(GRefreshLocationDataData_refreshedLocationDataBuilder)?
              updates]) =>
      (new GRefreshLocationDataData_refreshedLocationDataBuilder()
            ..update(updates))
          ._build();

  _$GRefreshLocationDataData_refreshedLocationData._(
      {required this.G__typename,
      required this.key,
      required this.label,
      required this.keyType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GRefreshLocationDataData_refreshedLocationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        key, 'GRefreshLocationDataData_refreshedLocationData', 'key');
    BuiltValueNullFieldError.checkNotNull(
        label, 'GRefreshLocationDataData_refreshedLocationData', 'label');
    BuiltValueNullFieldError.checkNotNull(
        keyType, 'GRefreshLocationDataData_refreshedLocationData', 'keyType');
  }

  @override
  GRefreshLocationDataData_refreshedLocationData rebuild(
          void Function(GRefreshLocationDataData_refreshedLocationDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshLocationDataData_refreshedLocationDataBuilder toBuilder() =>
      new GRefreshLocationDataData_refreshedLocationDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshLocationDataData_refreshedLocationData &&
        G__typename == other.G__typename &&
        key == other.key &&
        label == other.label &&
        keyType == other.keyType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), key.hashCode), label.hashCode),
        keyType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRefreshLocationDataData_refreshedLocationData')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('label', label)
          ..add('keyType', keyType))
        .toString();
  }
}

class GRefreshLocationDataData_refreshedLocationDataBuilder
    implements
        Builder<GRefreshLocationDataData_refreshedLocationData,
            GRefreshLocationDataData_refreshedLocationDataBuilder> {
  _$GRefreshLocationDataData_refreshedLocationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  GRefreshLocationDataData_refreshedLocationDataBuilder() {
    GRefreshLocationDataData_refreshedLocationData._initializeBuilder(this);
  }

  GRefreshLocationDataData_refreshedLocationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _label = $v.label;
      _keyType = $v.keyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshLocationDataData_refreshedLocationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshLocationDataData_refreshedLocationData;
  }

  @override
  void update(
      void Function(GRefreshLocationDataData_refreshedLocationDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRefreshLocationDataData_refreshedLocationData build() => _build();

  _$GRefreshLocationDataData_refreshedLocationData _build() {
    final _$result = _$v ??
        new _$GRefreshLocationDataData_refreshedLocationData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GRefreshLocationDataData_refreshedLocationData',
                'G__typename'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'GRefreshLocationDataData_refreshedLocationData', 'key'),
            label: BuiltValueNullFieldError.checkNotNull(label,
                'GRefreshLocationDataData_refreshedLocationData', 'label'),
            keyType: BuiltValueNullFieldError.checkNotNull(keyType,
                'GRefreshLocationDataData_refreshedLocationData', 'keyType'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchLocationsData extends GSearchLocationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GSearchLocationsData_locations> locations;

  factory _$GSearchLocationsData(
          [void Function(GSearchLocationsDataBuilder)? updates]) =>
      (new GSearchLocationsDataBuilder()..update(updates))._build();

  _$GSearchLocationsData._({required this.G__typename, required this.locations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSearchLocationsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        locations, 'GSearchLocationsData', 'locations');
  }

  @override
  GSearchLocationsData rebuild(
          void Function(GSearchLocationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchLocationsDataBuilder toBuilder() =>
      new GSearchLocationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchLocationsData &&
        G__typename == other.G__typename &&
        locations == other.locations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), locations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchLocationsData')
          ..add('G__typename', G__typename)
          ..add('locations', locations))
        .toString();
  }
}

class GSearchLocationsDataBuilder
    implements Builder<GSearchLocationsData, GSearchLocationsDataBuilder> {
  _$GSearchLocationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GSearchLocationsData_locations>? _locations;
  ListBuilder<GSearchLocationsData_locations> get locations =>
      _$this._locations ??= new ListBuilder<GSearchLocationsData_locations>();
  set locations(ListBuilder<GSearchLocationsData_locations>? locations) =>
      _$this._locations = locations;

  GSearchLocationsDataBuilder() {
    GSearchLocationsData._initializeBuilder(this);
  }

  GSearchLocationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locations = $v.locations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchLocationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchLocationsData;
  }

  @override
  void update(void Function(GSearchLocationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchLocationsData build() => _build();

  _$GSearchLocationsData _build() {
    _$GSearchLocationsData _$result;
    try {
      _$result = _$v ??
          new _$GSearchLocationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSearchLocationsData', 'G__typename'),
              locations: locations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locations';
        locations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSearchLocationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchLocationsData_locations extends GSearchLocationsData_locations {
  @override
  final String G__typename;
  @override
  final String key;
  @override
  final String keyType;
  @override
  final String label;

  factory _$GSearchLocationsData_locations(
          [void Function(GSearchLocationsData_locationsBuilder)? updates]) =>
      (new GSearchLocationsData_locationsBuilder()..update(updates))._build();

  _$GSearchLocationsData_locations._(
      {required this.G__typename,
      required this.key,
      required this.keyType,
      required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSearchLocationsData_locations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        key, 'GSearchLocationsData_locations', 'key');
    BuiltValueNullFieldError.checkNotNull(
        keyType, 'GSearchLocationsData_locations', 'keyType');
    BuiltValueNullFieldError.checkNotNull(
        label, 'GSearchLocationsData_locations', 'label');
  }

  @override
  GSearchLocationsData_locations rebuild(
          void Function(GSearchLocationsData_locationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchLocationsData_locationsBuilder toBuilder() =>
      new GSearchLocationsData_locationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchLocationsData_locations &&
        G__typename == other.G__typename &&
        key == other.key &&
        keyType == other.keyType &&
        label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), key.hashCode), keyType.hashCode),
        label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchLocationsData_locations')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('keyType', keyType)
          ..add('label', label))
        .toString();
  }
}

class GSearchLocationsData_locationsBuilder
    implements
        Builder<GSearchLocationsData_locations,
            GSearchLocationsData_locationsBuilder> {
  _$GSearchLocationsData_locations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GSearchLocationsData_locationsBuilder() {
    GSearchLocationsData_locations._initializeBuilder(this);
  }

  GSearchLocationsData_locationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _keyType = $v.keyType;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchLocationsData_locations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchLocationsData_locations;
  }

  @override
  void update(void Function(GSearchLocationsData_locationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchLocationsData_locations build() => _build();

  _$GSearchLocationsData_locations _build() {
    final _$result = _$v ??
        new _$GSearchLocationsData_locations._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSearchLocationsData_locations', 'G__typename'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'GSearchLocationsData_locations', 'key'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, 'GSearchLocationsData_locations', 'keyType'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'GSearchLocationsData_locations', 'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
