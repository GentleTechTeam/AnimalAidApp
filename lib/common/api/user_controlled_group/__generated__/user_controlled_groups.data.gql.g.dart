// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controlled_groups.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserControlledGroupsData> _$gUserControlledGroupsDataSerializer =
    new _$GUserControlledGroupsDataSerializer();
Serializer<GUserControlledGroupsData_userControlledGroups>
    _$gUserControlledGroupsDataUserControlledGroupsSerializer =
    new _$GUserControlledGroupsData_userControlledGroupsSerializer();
Serializer<GRequestUserGroupApprovalData>
    _$gRequestUserGroupApprovalDataSerializer =
    new _$GRequestUserGroupApprovalDataSerializer();
Serializer<GRequestUserGroupApprovalData_requestUserControlledGroupApproval>
    _$gRequestUserGroupApprovalDataRequestUserControlledGroupApprovalSerializer =
    new _$GRequestUserGroupApprovalData_requestUserControlledGroupApprovalSerializer();
Serializer<GChangeUserGroupLocationData>
    _$gChangeUserGroupLocationDataSerializer =
    new _$GChangeUserGroupLocationDataSerializer();
Serializer<GChangeUserGroupLocationData_changeUserControlledGroupLocation>
    _$gChangeUserGroupLocationDataChangeUserControlledGroupLocationSerializer =
    new _$GChangeUserGroupLocationData_changeUserControlledGroupLocationSerializer();

class _$GUserControlledGroupsDataSerializer
    implements StructuredSerializer<GUserControlledGroupsData> {
  @override
  final Iterable<Type> types = const [
    GUserControlledGroupsData,
    _$GUserControlledGroupsData
  ];
  @override
  final String wireName = 'GUserControlledGroupsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserControlledGroupsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userControlledGroups',
      serializers.serialize(object.userControlledGroups,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GUserControlledGroupsData_userControlledGroups)
          ])),
    ];

    return result;
  }

  @override
  GUserControlledGroupsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserControlledGroupsDataBuilder();

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
        case 'userControlledGroups':
          result.userControlledGroups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GUserControlledGroupsData_userControlledGroups)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserControlledGroupsData_userControlledGroupsSerializer
    implements
        StructuredSerializer<GUserControlledGroupsData_userControlledGroups> {
  @override
  final Iterable<Type> types = const [
    GUserControlledGroupsData_userControlledGroups,
    _$GUserControlledGroupsData_userControlledGroups
  ];
  @override
  final String wireName = 'GUserControlledGroupsData_userControlledGroups';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserControlledGroupsData_userControlledGroups object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'groupPhotoUrl',
      serializers.serialize(object.groupPhotoUrl,
          specifiedType: const FullType(String)),
      'approvalStatus',
      serializers.serialize(object.approvalStatus,
          specifiedType: const FullType(_i2.GCharityGroupApprovalStatus)),
      'autoImportSettingsAccessible',
      serializers.serialize(object.autoImportSettingsAccessible,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.locationLabel;
    if (value != null) {
      result
        ..add('locationLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserControlledGroupsData_userControlledGroups deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserControlledGroupsData_userControlledGroupsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupPhotoUrl':
          result.groupPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'approvalStatus':
          result.approvalStatus = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GCharityGroupApprovalStatus))!
              as _i2.GCharityGroupApprovalStatus;
          break;
        case 'locationLabel':
          result.locationLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'autoImportSettingsAccessible':
          result.autoImportSettingsAccessible = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestUserGroupApprovalDataSerializer
    implements StructuredSerializer<GRequestUserGroupApprovalData> {
  @override
  final Iterable<Type> types = const [
    GRequestUserGroupApprovalData,
    _$GRequestUserGroupApprovalData
  ];
  @override
  final String wireName = 'GRequestUserGroupApprovalData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestUserGroupApprovalData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.requestUserControlledGroupApproval;
    if (value != null) {
      result
        ..add('requestUserControlledGroupApproval')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRequestUserGroupApprovalData_requestUserControlledGroupApproval)));
    }
    return result;
  }

  @override
  GRequestUserGroupApprovalData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestUserGroupApprovalDataBuilder();

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
        case 'requestUserControlledGroupApproval':
          result.requestUserControlledGroupApproval.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GRequestUserGroupApprovalData_requestUserControlledGroupApproval))!
              as GRequestUserGroupApprovalData_requestUserControlledGroupApproval);
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestUserGroupApprovalData_requestUserControlledGroupApprovalSerializer
    implements
        StructuredSerializer<
            GRequestUserGroupApprovalData_requestUserControlledGroupApproval> {
  @override
  final Iterable<Type> types = const [
    GRequestUserGroupApprovalData_requestUserControlledGroupApproval,
    _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval
  ];
  @override
  final String wireName =
      'GRequestUserGroupApprovalData_requestUserControlledGroupApproval';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRequestUserGroupApprovalData_requestUserControlledGroupApproval object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'groupPhotoUrl',
      serializers.serialize(object.groupPhotoUrl,
          specifiedType: const FullType(String)),
      'approvalStatus',
      serializers.serialize(object.approvalStatus,
          specifiedType: const FullType(_i2.GCharityGroupApprovalStatus)),
      'autoImportSettingsAccessible',
      serializers.serialize(object.autoImportSettingsAccessible,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.locationLabel;
    if (value != null) {
      result
        ..add('locationLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupPhotoUrl':
          result.groupPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'approvalStatus':
          result.approvalStatus = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GCharityGroupApprovalStatus))!
              as _i2.GCharityGroupApprovalStatus;
          break;
        case 'locationLabel':
          result.locationLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'autoImportSettingsAccessible':
          result.autoImportSettingsAccessible = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeUserGroupLocationDataSerializer
    implements StructuredSerializer<GChangeUserGroupLocationData> {
  @override
  final Iterable<Type> types = const [
    GChangeUserGroupLocationData,
    _$GChangeUserGroupLocationData
  ];
  @override
  final String wireName = 'GChangeUserGroupLocationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChangeUserGroupLocationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.changeUserControlledGroupLocation;
    if (value != null) {
      result
        ..add('changeUserControlledGroupLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GChangeUserGroupLocationData_changeUserControlledGroupLocation)));
    }
    return result;
  }

  @override
  GChangeUserGroupLocationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChangeUserGroupLocationDataBuilder();

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
        case 'changeUserControlledGroupLocation':
          result.changeUserControlledGroupLocation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GChangeUserGroupLocationData_changeUserControlledGroupLocation))!
              as GChangeUserGroupLocationData_changeUserControlledGroupLocation);
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeUserGroupLocationData_changeUserControlledGroupLocationSerializer
    implements
        StructuredSerializer<
            GChangeUserGroupLocationData_changeUserControlledGroupLocation> {
  @override
  final Iterable<Type> types = const [
    GChangeUserGroupLocationData_changeUserControlledGroupLocation,
    _$GChangeUserGroupLocationData_changeUserControlledGroupLocation
  ];
  @override
  final String wireName =
      'GChangeUserGroupLocationData_changeUserControlledGroupLocation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChangeUserGroupLocationData_changeUserControlledGroupLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'groupPhotoUrl',
      serializers.serialize(object.groupPhotoUrl,
          specifiedType: const FullType(String)),
      'approvalStatus',
      serializers.serialize(object.approvalStatus,
          specifiedType: const FullType(_i2.GCharityGroupApprovalStatus)),
      'autoImportSettingsAccessible',
      serializers.serialize(object.autoImportSettingsAccessible,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.locationLabel;
    if (value != null) {
      result
        ..add('locationLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GChangeUserGroupLocationData_changeUserControlledGroupLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupPhotoUrl':
          result.groupPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'approvalStatus':
          result.approvalStatus = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GCharityGroupApprovalStatus))!
              as _i2.GCharityGroupApprovalStatus;
          break;
        case 'locationLabel':
          result.locationLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'autoImportSettingsAccessible':
          result.autoImportSettingsAccessible = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserControlledGroupsData extends GUserControlledGroupsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserControlledGroupsData_userControlledGroups>
      userControlledGroups;

  factory _$GUserControlledGroupsData(
          [void Function(GUserControlledGroupsDataBuilder)? updates]) =>
      (new GUserControlledGroupsDataBuilder()..update(updates))._build();

  _$GUserControlledGroupsData._(
      {required this.G__typename, required this.userControlledGroups})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUserControlledGroupsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(userControlledGroups,
        'GUserControlledGroupsData', 'userControlledGroups');
  }

  @override
  GUserControlledGroupsData rebuild(
          void Function(GUserControlledGroupsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserControlledGroupsDataBuilder toBuilder() =>
      new GUserControlledGroupsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserControlledGroupsData &&
        G__typename == other.G__typename &&
        userControlledGroups == other.userControlledGroups;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), userControlledGroups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserControlledGroupsData')
          ..add('G__typename', G__typename)
          ..add('userControlledGroups', userControlledGroups))
        .toString();
  }
}

class GUserControlledGroupsDataBuilder
    implements
        Builder<GUserControlledGroupsData, GUserControlledGroupsDataBuilder> {
  _$GUserControlledGroupsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserControlledGroupsData_userControlledGroups>?
      _userControlledGroups;
  ListBuilder<GUserControlledGroupsData_userControlledGroups>
      get userControlledGroups => _$this._userControlledGroups ??=
          new ListBuilder<GUserControlledGroupsData_userControlledGroups>();
  set userControlledGroups(
          ListBuilder<GUserControlledGroupsData_userControlledGroups>?
              userControlledGroups) =>
      _$this._userControlledGroups = userControlledGroups;

  GUserControlledGroupsDataBuilder() {
    GUserControlledGroupsData._initializeBuilder(this);
  }

  GUserControlledGroupsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userControlledGroups = $v.userControlledGroups.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserControlledGroupsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserControlledGroupsData;
  }

  @override
  void update(void Function(GUserControlledGroupsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserControlledGroupsData build() => _build();

  _$GUserControlledGroupsData _build() {
    _$GUserControlledGroupsData _$result;
    try {
      _$result = _$v ??
          new _$GUserControlledGroupsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUserControlledGroupsData', 'G__typename'),
              userControlledGroups: userControlledGroups.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userControlledGroups';
        userControlledGroups.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUserControlledGroupsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserControlledGroupsData_userControlledGroups
    extends GUserControlledGroupsData_userControlledGroups {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupPhotoUrl;
  @override
  final _i2.GCharityGroupApprovalStatus approvalStatus;
  @override
  final String? locationLabel;
  @override
  final bool autoImportSettingsAccessible;

  factory _$GUserControlledGroupsData_userControlledGroups(
          [void Function(GUserControlledGroupsData_userControlledGroupsBuilder)?
              updates]) =>
      (new GUserControlledGroupsData_userControlledGroupsBuilder()
            ..update(updates))
          ._build();

  _$GUserControlledGroupsData_userControlledGroups._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupPhotoUrl,
      required this.approvalStatus,
      this.locationLabel,
      required this.autoImportSettingsAccessible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GUserControlledGroupsData_userControlledGroups', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GUserControlledGroupsData_userControlledGroups', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GUserControlledGroupsData_userControlledGroups', 'name');
    BuiltValueNullFieldError.checkNotNull(groupPhotoUrl,
        'GUserControlledGroupsData_userControlledGroups', 'groupPhotoUrl');
    BuiltValueNullFieldError.checkNotNull(approvalStatus,
        'GUserControlledGroupsData_userControlledGroups', 'approvalStatus');
    BuiltValueNullFieldError.checkNotNull(
        autoImportSettingsAccessible,
        'GUserControlledGroupsData_userControlledGroups',
        'autoImportSettingsAccessible');
  }

  @override
  GUserControlledGroupsData_userControlledGroups rebuild(
          void Function(GUserControlledGroupsData_userControlledGroupsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserControlledGroupsData_userControlledGroupsBuilder toBuilder() =>
      new GUserControlledGroupsData_userControlledGroupsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserControlledGroupsData_userControlledGroups &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        groupPhotoUrl == other.groupPhotoUrl &&
        approvalStatus == other.approvalStatus &&
        locationLabel == other.locationLabel &&
        autoImportSettingsAccessible == other.autoImportSettingsAccessible;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    groupPhotoUrl.hashCode),
                approvalStatus.hashCode),
            locationLabel.hashCode),
        autoImportSettingsAccessible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GUserControlledGroupsData_userControlledGroups')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupPhotoUrl', groupPhotoUrl)
          ..add('approvalStatus', approvalStatus)
          ..add('locationLabel', locationLabel)
          ..add('autoImportSettingsAccessible', autoImportSettingsAccessible))
        .toString();
  }
}

class GUserControlledGroupsData_userControlledGroupsBuilder
    implements
        Builder<GUserControlledGroupsData_userControlledGroups,
            GUserControlledGroupsData_userControlledGroupsBuilder> {
  _$GUserControlledGroupsData_userControlledGroups? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _groupPhotoUrl;
  String? get groupPhotoUrl => _$this._groupPhotoUrl;
  set groupPhotoUrl(String? groupPhotoUrl) =>
      _$this._groupPhotoUrl = groupPhotoUrl;

  _i2.GCharityGroupApprovalStatus? _approvalStatus;
  _i2.GCharityGroupApprovalStatus? get approvalStatus => _$this._approvalStatus;
  set approvalStatus(_i2.GCharityGroupApprovalStatus? approvalStatus) =>
      _$this._approvalStatus = approvalStatus;

  String? _locationLabel;
  String? get locationLabel => _$this._locationLabel;
  set locationLabel(String? locationLabel) =>
      _$this._locationLabel = locationLabel;

  bool? _autoImportSettingsAccessible;
  bool? get autoImportSettingsAccessible =>
      _$this._autoImportSettingsAccessible;
  set autoImportSettingsAccessible(bool? autoImportSettingsAccessible) =>
      _$this._autoImportSettingsAccessible = autoImportSettingsAccessible;

  GUserControlledGroupsData_userControlledGroupsBuilder() {
    GUserControlledGroupsData_userControlledGroups._initializeBuilder(this);
  }

  GUserControlledGroupsData_userControlledGroupsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _groupPhotoUrl = $v.groupPhotoUrl;
      _approvalStatus = $v.approvalStatus;
      _locationLabel = $v.locationLabel;
      _autoImportSettingsAccessible = $v.autoImportSettingsAccessible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserControlledGroupsData_userControlledGroups other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserControlledGroupsData_userControlledGroups;
  }

  @override
  void update(
      void Function(GUserControlledGroupsData_userControlledGroupsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserControlledGroupsData_userControlledGroups build() => _build();

  _$GUserControlledGroupsData_userControlledGroups _build() {
    final _$result = _$v ??
        new _$GUserControlledGroupsData_userControlledGroups._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUserControlledGroupsData_userControlledGroups', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GUserControlledGroupsData_userControlledGroups', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GUserControlledGroupsData_userControlledGroups', 'name'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(
                groupPhotoUrl, 'GUserControlledGroupsData_userControlledGroups', 'groupPhotoUrl'),
            approvalStatus: BuiltValueNullFieldError.checkNotNull(
                approvalStatus,
                'GUserControlledGroupsData_userControlledGroups',
                'approvalStatus'),
            locationLabel: locationLabel,
            autoImportSettingsAccessible: BuiltValueNullFieldError.checkNotNull(
                autoImportSettingsAccessible,
                'GUserControlledGroupsData_userControlledGroups',
                'autoImportSettingsAccessible'));
    replace(_$result);
    return _$result;
  }
}

class _$GRequestUserGroupApprovalData extends GRequestUserGroupApprovalData {
  @override
  final String G__typename;
  @override
  final GRequestUserGroupApprovalData_requestUserControlledGroupApproval?
      requestUserControlledGroupApproval;

  factory _$GRequestUserGroupApprovalData(
          [void Function(GRequestUserGroupApprovalDataBuilder)? updates]) =>
      (new GRequestUserGroupApprovalDataBuilder()..update(updates))._build();

  _$GRequestUserGroupApprovalData._(
      {required this.G__typename, this.requestUserControlledGroupApproval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRequestUserGroupApprovalData', 'G__typename');
  }

  @override
  GRequestUserGroupApprovalData rebuild(
          void Function(GRequestUserGroupApprovalDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestUserGroupApprovalDataBuilder toBuilder() =>
      new GRequestUserGroupApprovalDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestUserGroupApprovalData &&
        G__typename == other.G__typename &&
        requestUserControlledGroupApproval ==
            other.requestUserControlledGroupApproval;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode),
        requestUserControlledGroupApproval.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRequestUserGroupApprovalData')
          ..add('G__typename', G__typename)
          ..add('requestUserControlledGroupApproval',
              requestUserControlledGroupApproval))
        .toString();
  }
}

class GRequestUserGroupApprovalDataBuilder
    implements
        Builder<GRequestUserGroupApprovalData,
            GRequestUserGroupApprovalDataBuilder> {
  _$GRequestUserGroupApprovalData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder?
      _requestUserControlledGroupApproval;
  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
      get requestUserControlledGroupApproval => _$this
              ._requestUserControlledGroupApproval ??=
          new GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder();
  set requestUserControlledGroupApproval(
          GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder?
              requestUserControlledGroupApproval) =>
      _$this._requestUserControlledGroupApproval =
          requestUserControlledGroupApproval;

  GRequestUserGroupApprovalDataBuilder() {
    GRequestUserGroupApprovalData._initializeBuilder(this);
  }

  GRequestUserGroupApprovalDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _requestUserControlledGroupApproval =
          $v.requestUserControlledGroupApproval?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestUserGroupApprovalData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestUserGroupApprovalData;
  }

  @override
  void update(void Function(GRequestUserGroupApprovalDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestUserGroupApprovalData build() => _build();

  _$GRequestUserGroupApprovalData _build() {
    _$GRequestUserGroupApprovalData _$result;
    try {
      _$result = _$v ??
          new _$GRequestUserGroupApprovalData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRequestUserGroupApprovalData', 'G__typename'),
              requestUserControlledGroupApproval:
                  _requestUserControlledGroupApproval?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestUserControlledGroupApproval';
        _requestUserControlledGroupApproval?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRequestUserGroupApprovalData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval
    extends GRequestUserGroupApprovalData_requestUserControlledGroupApproval {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupPhotoUrl;
  @override
  final _i2.GCharityGroupApprovalStatus approvalStatus;
  @override
  final String? locationLabel;
  @override
  final bool autoImportSettingsAccessible;

  factory _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval(
          [void Function(
                  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder)?
              updates]) =>
      (new GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder()
            ..update(updates))
          ._build();

  _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupPhotoUrl,
      required this.approvalStatus,
      this.locationLabel,
      required this.autoImportSettingsAccessible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        groupPhotoUrl,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'groupPhotoUrl');
    BuiltValueNullFieldError.checkNotNull(
        approvalStatus,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'approvalStatus');
    BuiltValueNullFieldError.checkNotNull(
        autoImportSettingsAccessible,
        'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
        'autoImportSettingsAccessible');
  }

  @override
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval rebuild(
          void Function(
                  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
      toBuilder() =>
          new GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRequestUserGroupApprovalData_requestUserControlledGroupApproval &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        groupPhotoUrl == other.groupPhotoUrl &&
        approvalStatus == other.approvalStatus &&
        locationLabel == other.locationLabel &&
        autoImportSettingsAccessible == other.autoImportSettingsAccessible;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    groupPhotoUrl.hashCode),
                approvalStatus.hashCode),
            locationLabel.hashCode),
        autoImportSettingsAccessible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRequestUserGroupApprovalData_requestUserControlledGroupApproval')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupPhotoUrl', groupPhotoUrl)
          ..add('approvalStatus', approvalStatus)
          ..add('locationLabel', locationLabel)
          ..add('autoImportSettingsAccessible', autoImportSettingsAccessible))
        .toString();
  }
}

class GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
    implements
        Builder<
            GRequestUserGroupApprovalData_requestUserControlledGroupApproval,
            GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder> {
  _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _groupPhotoUrl;
  String? get groupPhotoUrl => _$this._groupPhotoUrl;
  set groupPhotoUrl(String? groupPhotoUrl) =>
      _$this._groupPhotoUrl = groupPhotoUrl;

  _i2.GCharityGroupApprovalStatus? _approvalStatus;
  _i2.GCharityGroupApprovalStatus? get approvalStatus => _$this._approvalStatus;
  set approvalStatus(_i2.GCharityGroupApprovalStatus? approvalStatus) =>
      _$this._approvalStatus = approvalStatus;

  String? _locationLabel;
  String? get locationLabel => _$this._locationLabel;
  set locationLabel(String? locationLabel) =>
      _$this._locationLabel = locationLabel;

  bool? _autoImportSettingsAccessible;
  bool? get autoImportSettingsAccessible =>
      _$this._autoImportSettingsAccessible;
  set autoImportSettingsAccessible(bool? autoImportSettingsAccessible) =>
      _$this._autoImportSettingsAccessible = autoImportSettingsAccessible;

  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder() {
    GRequestUserGroupApprovalData_requestUserControlledGroupApproval
        ._initializeBuilder(this);
  }

  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _groupPhotoUrl = $v.groupPhotoUrl;
      _approvalStatus = $v.approvalStatus;
      _locationLabel = $v.locationLabel;
      _autoImportSettingsAccessible = $v.autoImportSettingsAccessible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRequestUserGroupApprovalData_requestUserControlledGroupApproval other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval;
  }

  @override
  void update(
      void Function(
              GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval build() =>
      _build();

  _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval _build() {
    final _$result = _$v ??
        new _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRequestUserGroupApprovalData_requestUserControlledGroupApproval', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRequestUserGroupApprovalData_requestUserControlledGroupApproval', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GRequestUserGroupApprovalData_requestUserControlledGroupApproval', 'name'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(
                groupPhotoUrl, 'GRequestUserGroupApprovalData_requestUserControlledGroupApproval', 'groupPhotoUrl'),
            approvalStatus: BuiltValueNullFieldError.checkNotNull(
                approvalStatus,
                'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
                'approvalStatus'),
            locationLabel: locationLabel,
            autoImportSettingsAccessible: BuiltValueNullFieldError.checkNotNull(
                autoImportSettingsAccessible,
                'GRequestUserGroupApprovalData_requestUserControlledGroupApproval',
                'autoImportSettingsAccessible'));
    replace(_$result);
    return _$result;
  }
}

class _$GChangeUserGroupLocationData extends GChangeUserGroupLocationData {
  @override
  final String G__typename;
  @override
  final GChangeUserGroupLocationData_changeUserControlledGroupLocation?
      changeUserControlledGroupLocation;

  factory _$GChangeUserGroupLocationData(
          [void Function(GChangeUserGroupLocationDataBuilder)? updates]) =>
      (new GChangeUserGroupLocationDataBuilder()..update(updates))._build();

  _$GChangeUserGroupLocationData._(
      {required this.G__typename, this.changeUserControlledGroupLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GChangeUserGroupLocationData', 'G__typename');
  }

  @override
  GChangeUserGroupLocationData rebuild(
          void Function(GChangeUserGroupLocationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChangeUserGroupLocationDataBuilder toBuilder() =>
      new GChangeUserGroupLocationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeUserGroupLocationData &&
        G__typename == other.G__typename &&
        changeUserControlledGroupLocation ==
            other.changeUserControlledGroupLocation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode),
        changeUserControlledGroupLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GChangeUserGroupLocationData')
          ..add('G__typename', G__typename)
          ..add('changeUserControlledGroupLocation',
              changeUserControlledGroupLocation))
        .toString();
  }
}

class GChangeUserGroupLocationDataBuilder
    implements
        Builder<GChangeUserGroupLocationData,
            GChangeUserGroupLocationDataBuilder> {
  _$GChangeUserGroupLocationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder?
      _changeUserControlledGroupLocation;
  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
      get changeUserControlledGroupLocation => _$this
              ._changeUserControlledGroupLocation ??=
          new GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder();
  set changeUserControlledGroupLocation(
          GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder?
              changeUserControlledGroupLocation) =>
      _$this._changeUserControlledGroupLocation =
          changeUserControlledGroupLocation;

  GChangeUserGroupLocationDataBuilder() {
    GChangeUserGroupLocationData._initializeBuilder(this);
  }

  GChangeUserGroupLocationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _changeUserControlledGroupLocation =
          $v.changeUserControlledGroupLocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeUserGroupLocationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChangeUserGroupLocationData;
  }

  @override
  void update(void Function(GChangeUserGroupLocationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeUserGroupLocationData build() => _build();

  _$GChangeUserGroupLocationData _build() {
    _$GChangeUserGroupLocationData _$result;
    try {
      _$result = _$v ??
          new _$GChangeUserGroupLocationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GChangeUserGroupLocationData', 'G__typename'),
              changeUserControlledGroupLocation:
                  _changeUserControlledGroupLocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changeUserControlledGroupLocation';
        _changeUserControlledGroupLocation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GChangeUserGroupLocationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChangeUserGroupLocationData_changeUserControlledGroupLocation
    extends GChangeUserGroupLocationData_changeUserControlledGroupLocation {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupPhotoUrl;
  @override
  final _i2.GCharityGroupApprovalStatus approvalStatus;
  @override
  final String? locationLabel;
  @override
  final bool autoImportSettingsAccessible;

  factory _$GChangeUserGroupLocationData_changeUserControlledGroupLocation(
          [void Function(
                  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder)?
              updates]) =>
      (new GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder()
            ..update(updates))
          ._build();

  _$GChangeUserGroupLocationData_changeUserControlledGroupLocation._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupPhotoUrl,
      required this.approvalStatus,
      this.locationLabel,
      required this.autoImportSettingsAccessible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        groupPhotoUrl,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
        'groupPhotoUrl');
    BuiltValueNullFieldError.checkNotNull(
        approvalStatus,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
        'approvalStatus');
    BuiltValueNullFieldError.checkNotNull(
        autoImportSettingsAccessible,
        'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
        'autoImportSettingsAccessible');
  }

  @override
  GChangeUserGroupLocationData_changeUserControlledGroupLocation rebuild(
          void Function(
                  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
      toBuilder() =>
          new GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GChangeUserGroupLocationData_changeUserControlledGroupLocation &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        groupPhotoUrl == other.groupPhotoUrl &&
        approvalStatus == other.approvalStatus &&
        locationLabel == other.locationLabel &&
        autoImportSettingsAccessible == other.autoImportSettingsAccessible;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    groupPhotoUrl.hashCode),
                approvalStatus.hashCode),
            locationLabel.hashCode),
        autoImportSettingsAccessible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GChangeUserGroupLocationData_changeUserControlledGroupLocation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupPhotoUrl', groupPhotoUrl)
          ..add('approvalStatus', approvalStatus)
          ..add('locationLabel', locationLabel)
          ..add('autoImportSettingsAccessible', autoImportSettingsAccessible))
        .toString();
  }
}

class GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
    implements
        Builder<GChangeUserGroupLocationData_changeUserControlledGroupLocation,
            GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder> {
  _$GChangeUserGroupLocationData_changeUserControlledGroupLocation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _groupPhotoUrl;
  String? get groupPhotoUrl => _$this._groupPhotoUrl;
  set groupPhotoUrl(String? groupPhotoUrl) =>
      _$this._groupPhotoUrl = groupPhotoUrl;

  _i2.GCharityGroupApprovalStatus? _approvalStatus;
  _i2.GCharityGroupApprovalStatus? get approvalStatus => _$this._approvalStatus;
  set approvalStatus(_i2.GCharityGroupApprovalStatus? approvalStatus) =>
      _$this._approvalStatus = approvalStatus;

  String? _locationLabel;
  String? get locationLabel => _$this._locationLabel;
  set locationLabel(String? locationLabel) =>
      _$this._locationLabel = locationLabel;

  bool? _autoImportSettingsAccessible;
  bool? get autoImportSettingsAccessible =>
      _$this._autoImportSettingsAccessible;
  set autoImportSettingsAccessible(bool? autoImportSettingsAccessible) =>
      _$this._autoImportSettingsAccessible = autoImportSettingsAccessible;

  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder() {
    GChangeUserGroupLocationData_changeUserControlledGroupLocation
        ._initializeBuilder(this);
  }

  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _groupPhotoUrl = $v.groupPhotoUrl;
      _approvalStatus = $v.approvalStatus;
      _locationLabel = $v.locationLabel;
      _autoImportSettingsAccessible = $v.autoImportSettingsAccessible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GChangeUserGroupLocationData_changeUserControlledGroupLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GChangeUserGroupLocationData_changeUserControlledGroupLocation;
  }

  @override
  void update(
      void Function(
              GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeUserGroupLocationData_changeUserControlledGroupLocation build() =>
      _build();

  _$GChangeUserGroupLocationData_changeUserControlledGroupLocation _build() {
    final _$result = _$v ??
        new _$GChangeUserGroupLocationData_changeUserControlledGroupLocation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GChangeUserGroupLocationData_changeUserControlledGroupLocation', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GChangeUserGroupLocationData_changeUserControlledGroupLocation', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GChangeUserGroupLocationData_changeUserControlledGroupLocation', 'name'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(
                groupPhotoUrl, 'GChangeUserGroupLocationData_changeUserControlledGroupLocation', 'groupPhotoUrl'),
            approvalStatus: BuiltValueNullFieldError.checkNotNull(
                approvalStatus,
                'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
                'approvalStatus'),
            locationLabel: locationLabel,
            autoImportSettingsAccessible: BuiltValueNullFieldError.checkNotNull(
                autoImportSettingsAccessible,
                'GChangeUserGroupLocationData_changeUserControlledGroupLocation',
                'autoImportSettingsAccessible'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
