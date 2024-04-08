// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smm_wrapper_service.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GCharityGroupApprovalStatus _$gCharityGroupApprovalStatusNONE =
    const GCharityGroupApprovalStatus._('NONE');
const GCharityGroupApprovalStatus _$gCharityGroupApprovalStatusPENDING =
    const GCharityGroupApprovalStatus._('PENDING');
const GCharityGroupApprovalStatus _$gCharityGroupApprovalStatusAPPROVED =
    const GCharityGroupApprovalStatus._('APPROVED');
const GCharityGroupApprovalStatus _$gCharityGroupApprovalStatusDECLINED =
    const GCharityGroupApprovalStatus._('DECLINED');

GCharityGroupApprovalStatus _$gCharityGroupApprovalStatusValueOf(String name) {
  switch (name) {
    case 'NONE':
      return _$gCharityGroupApprovalStatusNONE;
    case 'PENDING':
      return _$gCharityGroupApprovalStatusPENDING;
    case 'APPROVED':
      return _$gCharityGroupApprovalStatusAPPROVED;
    case 'DECLINED':
      return _$gCharityGroupApprovalStatusDECLINED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GCharityGroupApprovalStatus>
    _$gCharityGroupApprovalStatusValues = new BuiltSet<
        GCharityGroupApprovalStatus>(const <GCharityGroupApprovalStatus>[
  _$gCharityGroupApprovalStatusNONE,
  _$gCharityGroupApprovalStatusPENDING,
  _$gCharityGroupApprovalStatusAPPROVED,
  _$gCharityGroupApprovalStatusDECLINED,
]);

Serializer<GCharityGroupApprovalStatus>
    _$gCharityGroupApprovalStatusSerializer =
    new _$GCharityGroupApprovalStatusSerializer();
Serializer<GGeoPositionInput> _$gGeoPositionInputSerializer =
    new _$GGeoPositionInputSerializer();
Serializer<GLocationDataInput> _$gLocationDataInputSerializer =
    new _$GLocationDataInputSerializer();
Serializer<GRefreshLocationPayload> _$gRefreshLocationPayloadSerializer =
    new _$GRefreshLocationPayloadSerializer();
Serializer<GTogglePostsInFeedPayload> _$gTogglePostsInFeedPayloadSerializer =
    new _$GTogglePostsInFeedPayloadSerializer();

class _$GCharityGroupApprovalStatusSerializer
    implements PrimitiveSerializer<GCharityGroupApprovalStatus> {
  @override
  final Iterable<Type> types = const <Type>[GCharityGroupApprovalStatus];
  @override
  final String wireName = 'GCharityGroupApprovalStatus';

  @override
  Object serialize(Serializers serializers, GCharityGroupApprovalStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GCharityGroupApprovalStatus deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GCharityGroupApprovalStatus.valueOf(serialized as String);
}

class _$GGeoPositionInputSerializer
    implements StructuredSerializer<GGeoPositionInput> {
  @override
  final Iterable<Type> types = const [GGeoPositionInput, _$GGeoPositionInput];
  @override
  final String wireName = 'GGeoPositionInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGeoPositionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GGeoPositionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGeoPositionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationDataInputSerializer
    implements StructuredSerializer<GLocationDataInput> {
  @override
  final Iterable<Type> types = const [GLocationDataInput, _$GLocationDataInput];
  @override
  final String wireName = 'GLocationDataInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationDataInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'keyType',
      serializers.serialize(object.keyType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationDataInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationDataInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$GRefreshLocationPayloadSerializer
    implements StructuredSerializer<GRefreshLocationPayload> {
  @override
  final Iterable<Type> types = const [
    GRefreshLocationPayload,
    _$GRefreshLocationPayload
  ];
  @override
  final String wireName = 'GRefreshLocationPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRefreshLocationPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentLocationData',
      serializers.serialize(object.currentLocationData,
          specifiedType: const FullType(GLocationDataInput)),
    ];
    Object? value;
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGeoPositionInput)));
    }
    return result;
  }

  @override
  GRefreshLocationPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshLocationPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'position':
          result.position.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGeoPositionInput))!
              as GGeoPositionInput);
          break;
        case 'currentLocationData':
          result.currentLocationData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocationDataInput))!
              as GLocationDataInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GTogglePostsInFeedPayloadSerializer
    implements StructuredSerializer<GTogglePostsInFeedPayload> {
  @override
  final Iterable<Type> types = const [
    GTogglePostsInFeedPayload,
    _$GTogglePostsInFeedPayload
  ];
  @override
  final String wireName = 'GTogglePostsInFeedPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTogglePostsInFeedPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'enabled',
      serializers.serialize(object.enabled,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GTogglePostsInFeedPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTogglePostsInFeedPayloadBuilder();

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
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGeoPositionInput extends GGeoPositionInput {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$GGeoPositionInput(
          [void Function(GGeoPositionInputBuilder)? updates]) =>
      (new GGeoPositionInputBuilder()..update(updates))._build();

  _$GGeoPositionInput._({required this.latitude, required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'GGeoPositionInput', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'GGeoPositionInput', 'longitude');
  }

  @override
  GGeoPositionInput rebuild(void Function(GGeoPositionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGeoPositionInputBuilder toBuilder() =>
      new GGeoPositionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGeoPositionInput &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGeoPositionInput')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class GGeoPositionInputBuilder
    implements Builder<GGeoPositionInput, GGeoPositionInputBuilder> {
  _$GGeoPositionInput? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  GGeoPositionInputBuilder();

  GGeoPositionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGeoPositionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGeoPositionInput;
  }

  @override
  void update(void Function(GGeoPositionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGeoPositionInput build() => _build();

  _$GGeoPositionInput _build() {
    final _$result = _$v ??
        new _$GGeoPositionInput._(
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'GGeoPositionInput', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'GGeoPositionInput', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocationDataInput extends GLocationDataInput {
  @override
  final String label;
  @override
  final String key;
  @override
  final String keyType;

  factory _$GLocationDataInput(
          [void Function(GLocationDataInputBuilder)? updates]) =>
      (new GLocationDataInputBuilder()..update(updates))._build();

  _$GLocationDataInput._(
      {required this.label, required this.key, required this.keyType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(label, 'GLocationDataInput', 'label');
    BuiltValueNullFieldError.checkNotNull(key, 'GLocationDataInput', 'key');
    BuiltValueNullFieldError.checkNotNull(
        keyType, 'GLocationDataInput', 'keyType');
  }

  @override
  GLocationDataInput rebuild(
          void Function(GLocationDataInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationDataInputBuilder toBuilder() =>
      new GLocationDataInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationDataInput &&
        label == other.label &&
        key == other.key &&
        keyType == other.keyType;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, label.hashCode), key.hashCode), keyType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLocationDataInput')
          ..add('label', label)
          ..add('key', key)
          ..add('keyType', keyType))
        .toString();
  }
}

class GLocationDataInputBuilder
    implements Builder<GLocationDataInput, GLocationDataInputBuilder> {
  _$GLocationDataInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  GLocationDataInputBuilder();

  GLocationDataInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _key = $v.key;
      _keyType = $v.keyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationDataInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationDataInput;
  }

  @override
  void update(void Function(GLocationDataInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationDataInput build() => _build();

  _$GLocationDataInput _build() {
    final _$result = _$v ??
        new _$GLocationDataInput._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'GLocationDataInput', 'label'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'GLocationDataInput', 'key'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, 'GLocationDataInput', 'keyType'));
    replace(_$result);
    return _$result;
  }
}

class _$GRefreshLocationPayload extends GRefreshLocationPayload {
  @override
  final GGeoPositionInput? position;
  @override
  final GLocationDataInput currentLocationData;

  factory _$GRefreshLocationPayload(
          [void Function(GRefreshLocationPayloadBuilder)? updates]) =>
      (new GRefreshLocationPayloadBuilder()..update(updates))._build();

  _$GRefreshLocationPayload._(
      {this.position, required this.currentLocationData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentLocationData, 'GRefreshLocationPayload', 'currentLocationData');
  }

  @override
  GRefreshLocationPayload rebuild(
          void Function(GRefreshLocationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshLocationPayloadBuilder toBuilder() =>
      new GRefreshLocationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshLocationPayload &&
        position == other.position &&
        currentLocationData == other.currentLocationData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, position.hashCode), currentLocationData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRefreshLocationPayload')
          ..add('position', position)
          ..add('currentLocationData', currentLocationData))
        .toString();
  }
}

class GRefreshLocationPayloadBuilder
    implements
        Builder<GRefreshLocationPayload, GRefreshLocationPayloadBuilder> {
  _$GRefreshLocationPayload? _$v;

  GGeoPositionInputBuilder? _position;
  GGeoPositionInputBuilder get position =>
      _$this._position ??= new GGeoPositionInputBuilder();
  set position(GGeoPositionInputBuilder? position) =>
      _$this._position = position;

  GLocationDataInputBuilder? _currentLocationData;
  GLocationDataInputBuilder get currentLocationData =>
      _$this._currentLocationData ??= new GLocationDataInputBuilder();
  set currentLocationData(GLocationDataInputBuilder? currentLocationData) =>
      _$this._currentLocationData = currentLocationData;

  GRefreshLocationPayloadBuilder();

  GRefreshLocationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position?.toBuilder();
      _currentLocationData = $v.currentLocationData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshLocationPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshLocationPayload;
  }

  @override
  void update(void Function(GRefreshLocationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRefreshLocationPayload build() => _build();

  _$GRefreshLocationPayload _build() {
    _$GRefreshLocationPayload _$result;
    try {
      _$result = _$v ??
          new _$GRefreshLocationPayload._(
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
            'GRefreshLocationPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTogglePostsInFeedPayload extends GTogglePostsInFeedPayload {
  @override
  final String groupId;
  @override
  final String postId;
  @override
  final bool enabled;

  factory _$GTogglePostsInFeedPayload(
          [void Function(GTogglePostsInFeedPayloadBuilder)? updates]) =>
      (new GTogglePostsInFeedPayloadBuilder()..update(updates))._build();

  _$GTogglePostsInFeedPayload._(
      {required this.groupId, required this.postId, required this.enabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupId, 'GTogglePostsInFeedPayload', 'groupId');
    BuiltValueNullFieldError.checkNotNull(
        postId, 'GTogglePostsInFeedPayload', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        enabled, 'GTogglePostsInFeedPayload', 'enabled');
  }

  @override
  GTogglePostsInFeedPayload rebuild(
          void Function(GTogglePostsInFeedPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTogglePostsInFeedPayloadBuilder toBuilder() =>
      new GTogglePostsInFeedPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTogglePostsInFeedPayload &&
        groupId == other.groupId &&
        postId == other.postId &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, groupId.hashCode), postId.hashCode), enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTogglePostsInFeedPayload')
          ..add('groupId', groupId)
          ..add('postId', postId)
          ..add('enabled', enabled))
        .toString();
  }
}

class GTogglePostsInFeedPayloadBuilder
    implements
        Builder<GTogglePostsInFeedPayload, GTogglePostsInFeedPayloadBuilder> {
  _$GTogglePostsInFeedPayload? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  GTogglePostsInFeedPayloadBuilder();

  GTogglePostsInFeedPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _postId = $v.postId;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTogglePostsInFeedPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTogglePostsInFeedPayload;
  }

  @override
  void update(void Function(GTogglePostsInFeedPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTogglePostsInFeedPayload build() => _build();

  _$GTogglePostsInFeedPayload _build() {
    final _$result = _$v ??
        new _$GTogglePostsInFeedPayload._(
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, 'GTogglePostsInFeedPayload', 'groupId'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, 'GTogglePostsInFeedPayload', 'postId'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, 'GTogglePostsInFeedPayload', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
