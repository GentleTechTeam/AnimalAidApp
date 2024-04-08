// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGenerateLocationDataVars> _$gGenerateLocationDataVarsSerializer =
    new _$GGenerateLocationDataVarsSerializer();
Serializer<GRefreshLocationDataVars> _$gRefreshLocationDataVarsSerializer =
    new _$GRefreshLocationDataVarsSerializer();
Serializer<GSearchLocationsVars> _$gSearchLocationsVarsSerializer =
    new _$GSearchLocationsVarsSerializer();

class _$GGenerateLocationDataVarsSerializer
    implements StructuredSerializer<GGenerateLocationDataVars> {
  @override
  final Iterable<Type> types = const [
    GGenerateLocationDataVars,
    _$GGenerateLocationDataVars
  ];
  @override
  final String wireName = 'GGenerateLocationDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenerateLocationDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GGenerateLocationDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenerateLocationDataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshLocationDataVarsSerializer
    implements StructuredSerializer<GRefreshLocationDataVars> {
  @override
  final Iterable<Type> types = const [
    GRefreshLocationDataVars,
    _$GRefreshLocationDataVars
  ];
  @override
  final String wireName = 'GRefreshLocationDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefreshLocationDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentLocationData',
      serializers.serialize(object.currentLocationData,
          specifiedType: const FullType(_i2.GLocationDataInput)),
    ];
    Object? value;
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GGeoPositionInput)));
    }
    return result;
  }

  @override
  GRefreshLocationDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshLocationDataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'position':
          result.position.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GGeoPositionInput))!
              as _i2.GGeoPositionInput);
          break;
        case 'currentLocationData':
          result.currentLocationData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GLocationDataInput))!
              as _i2.GLocationDataInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchLocationsVarsSerializer
    implements StructuredSerializer<GSearchLocationsVars> {
  @override
  final Iterable<Type> types = const [
    GSearchLocationsVars,
    _$GSearchLocationsVars
  ];
  @override
  final String wireName = 'GSearchLocationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchLocationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchLocationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchLocationsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGenerateLocationDataVars extends GGenerateLocationDataVars {
  @override
  final double lat;
  @override
  final double lon;

  factory _$GGenerateLocationDataVars(
          [void Function(GGenerateLocationDataVarsBuilder)? updates]) =>
      (new GGenerateLocationDataVarsBuilder()..update(updates))._build();

  _$GGenerateLocationDataVars._({required this.lat, required this.lon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lat, 'GGenerateLocationDataVars', 'lat');
    BuiltValueNullFieldError.checkNotNull(
        lon, 'GGenerateLocationDataVars', 'lon');
  }

  @override
  GGenerateLocationDataVars rebuild(
          void Function(GGenerateLocationDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenerateLocationDataVarsBuilder toBuilder() =>
      new GGenerateLocationDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenerateLocationDataVars &&
        lat == other.lat &&
        lon == other.lon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lat.hashCode), lon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGenerateLocationDataVars')
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class GGenerateLocationDataVarsBuilder
    implements
        Builder<GGenerateLocationDataVars, GGenerateLocationDataVarsBuilder> {
  _$GGenerateLocationDataVars? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  GGenerateLocationDataVarsBuilder();

  GGenerateLocationDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenerateLocationDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenerateLocationDataVars;
  }

  @override
  void update(void Function(GGenerateLocationDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenerateLocationDataVars build() => _build();

  _$GGenerateLocationDataVars _build() {
    final _$result = _$v ??
        new _$GGenerateLocationDataVars._(
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, 'GGenerateLocationDataVars', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(
                lon, 'GGenerateLocationDataVars', 'lon'));
    replace(_$result);
    return _$result;
  }
}

class _$GRefreshLocationDataVars extends GRefreshLocationDataVars {
  @override
  final _i2.GGeoPositionInput? position;
  @override
  final _i2.GLocationDataInput currentLocationData;

  factory _$GRefreshLocationDataVars(
          [void Function(GRefreshLocationDataVarsBuilder)? updates]) =>
      (new GRefreshLocationDataVarsBuilder()..update(updates))._build();

  _$GRefreshLocationDataVars._(
      {this.position, required this.currentLocationData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentLocationData, 'GRefreshLocationDataVars', 'currentLocationData');
  }

  @override
  GRefreshLocationDataVars rebuild(
          void Function(GRefreshLocationDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshLocationDataVarsBuilder toBuilder() =>
      new GRefreshLocationDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshLocationDataVars &&
        position == other.position &&
        currentLocationData == other.currentLocationData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, position.hashCode), currentLocationData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefreshLocationDataVars')
          ..add('position', position)
          ..add('currentLocationData', currentLocationData))
        .toString();
  }
}

class GRefreshLocationDataVarsBuilder
    implements
        Builder<GRefreshLocationDataVars, GRefreshLocationDataVarsBuilder> {
  _$GRefreshLocationDataVars? _$v;

  _i2.GGeoPositionInputBuilder? _position;
  _i2.GGeoPositionInputBuilder get position =>
      _$this._position ??= new _i2.GGeoPositionInputBuilder();
  set position(_i2.GGeoPositionInputBuilder? position) =>
      _$this._position = position;

  _i2.GLocationDataInputBuilder? _currentLocationData;
  _i2.GLocationDataInputBuilder get currentLocationData =>
      _$this._currentLocationData ??= new _i2.GLocationDataInputBuilder();
  set currentLocationData(_i2.GLocationDataInputBuilder? currentLocationData) =>
      _$this._currentLocationData = currentLocationData;

  GRefreshLocationDataVarsBuilder();

  GRefreshLocationDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position?.toBuilder();
      _currentLocationData = $v.currentLocationData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshLocationDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshLocationDataVars;
  }

  @override
  void update(void Function(GRefreshLocationDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRefreshLocationDataVars build() => _build();

  _$GRefreshLocationDataVars _build() {
    _$GRefreshLocationDataVars _$result;
    try {
      _$result = _$v ??
          new _$GRefreshLocationDataVars._(
              position: _position?.build(),
              currentLocationData: currentLocationData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        _position?.build();
        _$failedField = 'currentLocationData';
        currentLocationData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRefreshLocationDataVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchLocationsVars extends GSearchLocationsVars {
  @override
  final String query;

  factory _$GSearchLocationsVars(
          [void Function(GSearchLocationsVarsBuilder)? updates]) =>
      (new GSearchLocationsVarsBuilder()..update(updates))._build();

  _$GSearchLocationsVars._({required this.query}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        query, 'GSearchLocationsVars', 'query');
  }

  @override
  GSearchLocationsVars rebuild(
          void Function(GSearchLocationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchLocationsVarsBuilder toBuilder() =>
      new GSearchLocationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchLocationsVars && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchLocationsVars')
          ..add('query', query))
        .toString();
  }
}

class GSearchLocationsVarsBuilder
    implements Builder<GSearchLocationsVars, GSearchLocationsVarsBuilder> {
  _$GSearchLocationsVars? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  GSearchLocationsVarsBuilder();

  GSearchLocationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchLocationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchLocationsVars;
  }

  @override
  void update(void Function(GSearchLocationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchLocationsVars build() => _build();

  _$GSearchLocationsVars _build() {
    final _$result = _$v ??
        new _$GSearchLocationsVars._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'GSearchLocationsVars', 'query'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
