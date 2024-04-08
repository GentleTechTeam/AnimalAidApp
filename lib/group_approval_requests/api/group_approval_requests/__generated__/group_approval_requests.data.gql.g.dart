// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_approval_requests.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupApprovalRequestsData> _$gGroupApprovalRequestsDataSerializer =
    new _$GGroupApprovalRequestsDataSerializer();
Serializer<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
    _$gGroupApprovalRequestsDataCharityGroupsWaitingForApprovalSerializer =
    new _$GGroupApprovalRequestsData_charityGroupsWaitingForApprovalSerializer();
Serializer<GMakeApprovalDecisionData> _$gMakeApprovalDecisionDataSerializer =
    new _$GMakeApprovalDecisionDataSerializer();

class _$GGroupApprovalRequestsDataSerializer
    implements StructuredSerializer<GGroupApprovalRequestsData> {
  @override
  final Iterable<Type> types = const [
    GGroupApprovalRequestsData,
    _$GGroupApprovalRequestsData
  ];
  @override
  final String wireName = 'GGroupApprovalRequestsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupApprovalRequestsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'charityGroupsWaitingForApproval',
      serializers.serialize(object.charityGroupsWaitingForApproval,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GGroupApprovalRequestsData_charityGroupsWaitingForApproval)
          ])),
    ];

    return result;
  }

  @override
  GGroupApprovalRequestsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupApprovalRequestsDataBuilder();

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
        case 'charityGroupsWaitingForApproval':
          result.charityGroupsWaitingForApproval.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        GGroupApprovalRequestsData_charityGroupsWaitingForApproval)
                  ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupApprovalRequestsData_charityGroupsWaitingForApprovalSerializer
    implements
        StructuredSerializer<
            GGroupApprovalRequestsData_charityGroupsWaitingForApproval> {
  @override
  final Iterable<Type> types = const [
    GGroupApprovalRequestsData_charityGroupsWaitingForApproval,
    _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval
  ];
  @override
  final String wireName =
      'GGroupApprovalRequestsData_charityGroupsWaitingForApproval';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGroupApprovalRequestsData_charityGroupsWaitingForApproval object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'groupUrl',
      serializers.serialize(object.groupUrl,
          specifiedType: const FullType(String)),
      'groupPhotoUrl',
      serializers.serialize(object.groupPhotoUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGroupApprovalRequestsData_charityGroupsWaitingForApproval deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder();

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
        case 'groupUrl':
          result.groupUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupPhotoUrl':
          result.groupPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMakeApprovalDecisionDataSerializer
    implements StructuredSerializer<GMakeApprovalDecisionData> {
  @override
  final Iterable<Type> types = const [
    GMakeApprovalDecisionData,
    _$GMakeApprovalDecisionData
  ];
  @override
  final String wireName = 'GMakeApprovalDecisionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMakeApprovalDecisionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.makeCharityGroupApprovalDecision;
    if (value != null) {
      result
        ..add('makeCharityGroupApprovalDecision')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GMakeApprovalDecisionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMakeApprovalDecisionDataBuilder();

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
        case 'makeCharityGroupApprovalDecision':
          result.makeCharityGroupApprovalDecision = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupApprovalRequestsData extends GGroupApprovalRequestsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      charityGroupsWaitingForApproval;

  factory _$GGroupApprovalRequestsData(
          [void Function(GGroupApprovalRequestsDataBuilder)? updates]) =>
      (new GGroupApprovalRequestsDataBuilder()..update(updates))._build();

  _$GGroupApprovalRequestsData._(
      {required this.G__typename,
      required this.charityGroupsWaitingForApproval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupApprovalRequestsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(charityGroupsWaitingForApproval,
        'GGroupApprovalRequestsData', 'charityGroupsWaitingForApproval');
  }

  @override
  GGroupApprovalRequestsData rebuild(
          void Function(GGroupApprovalRequestsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupApprovalRequestsDataBuilder toBuilder() =>
      new GGroupApprovalRequestsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupApprovalRequestsData &&
        G__typename == other.G__typename &&
        charityGroupsWaitingForApproval ==
            other.charityGroupsWaitingForApproval;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode),
        charityGroupsWaitingForApproval.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupApprovalRequestsData')
          ..add('G__typename', G__typename)
          ..add('charityGroupsWaitingForApproval',
              charityGroupsWaitingForApproval))
        .toString();
  }
}

class GGroupApprovalRequestsDataBuilder
    implements
        Builder<GGroupApprovalRequestsData, GGroupApprovalRequestsDataBuilder> {
  _$GGroupApprovalRequestsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>?
      _charityGroupsWaitingForApproval;
  ListBuilder<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      get charityGroupsWaitingForApproval =>
          _$this._charityGroupsWaitingForApproval ??= new ListBuilder<
              GGroupApprovalRequestsData_charityGroupsWaitingForApproval>();
  set charityGroupsWaitingForApproval(
          ListBuilder<
                  GGroupApprovalRequestsData_charityGroupsWaitingForApproval>?
              charityGroupsWaitingForApproval) =>
      _$this._charityGroupsWaitingForApproval = charityGroupsWaitingForApproval;

  GGroupApprovalRequestsDataBuilder() {
    GGroupApprovalRequestsData._initializeBuilder(this);
  }

  GGroupApprovalRequestsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _charityGroupsWaitingForApproval =
          $v.charityGroupsWaitingForApproval.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupApprovalRequestsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupApprovalRequestsData;
  }

  @override
  void update(void Function(GGroupApprovalRequestsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupApprovalRequestsData build() => _build();

  _$GGroupApprovalRequestsData _build() {
    _$GGroupApprovalRequestsData _$result;
    try {
      _$result = _$v ??
          new _$GGroupApprovalRequestsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGroupApprovalRequestsData', 'G__typename'),
              charityGroupsWaitingForApproval:
                  charityGroupsWaitingForApproval.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'charityGroupsWaitingForApproval';
        charityGroupsWaitingForApproval.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupApprovalRequestsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval
    extends GGroupApprovalRequestsData_charityGroupsWaitingForApproval {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupUrl;
  @override
  final String groupPhotoUrl;

  factory _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval(
          [void Function(
                  GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder)?
              updates]) =>
      (new GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder()
            ..update(updates))
          ._build();

  _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupUrl,
      required this.groupPhotoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGroupApprovalRequestsData_charityGroupsWaitingForApproval', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        'GGroupApprovalRequestsData_charityGroupsWaitingForApproval', 'name');
    BuiltValueNullFieldError.checkNotNull(
        groupUrl,
        'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
        'groupUrl');
    BuiltValueNullFieldError.checkNotNull(
        groupPhotoUrl,
        'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
        'groupPhotoUrl');
  }

  @override
  GGroupApprovalRequestsData_charityGroupsWaitingForApproval rebuild(
          void Function(
                  GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder
      toBuilder() =>
          new GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGroupApprovalRequestsData_charityGroupsWaitingForApproval &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        groupUrl == other.groupUrl &&
        groupPhotoUrl == other.groupPhotoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
            groupUrl.hashCode),
        groupPhotoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGroupApprovalRequestsData_charityGroupsWaitingForApproval')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupUrl', groupUrl)
          ..add('groupPhotoUrl', groupPhotoUrl))
        .toString();
  }
}

class GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder
    implements
        Builder<GGroupApprovalRequestsData_charityGroupsWaitingForApproval,
            GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder> {
  _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _groupUrl;
  String? get groupUrl => _$this._groupUrl;
  set groupUrl(String? groupUrl) => _$this._groupUrl = groupUrl;

  String? _groupPhotoUrl;
  String? get groupPhotoUrl => _$this._groupPhotoUrl;
  set groupPhotoUrl(String? groupPhotoUrl) =>
      _$this._groupPhotoUrl = groupPhotoUrl;

  GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder() {
    GGroupApprovalRequestsData_charityGroupsWaitingForApproval
        ._initializeBuilder(this);
  }

  GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _groupUrl = $v.groupUrl;
      _groupPhotoUrl = $v.groupPhotoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GGroupApprovalRequestsData_charityGroupsWaitingForApproval other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval;
  }

  @override
  void update(
      void Function(
              GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupApprovalRequestsData_charityGroupsWaitingForApproval build() =>
      _build();

  _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval _build() {
    final _$result = _$v ??
        new _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGroupApprovalRequestsData_charityGroupsWaitingForApproval', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
                'name'),
            groupUrl: BuiltValueNullFieldError.checkNotNull(
                groupUrl,
                'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
                'groupUrl'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(
                groupPhotoUrl,
                'GGroupApprovalRequestsData_charityGroupsWaitingForApproval',
                'groupPhotoUrl'));
    replace(_$result);
    return _$result;
  }
}

class _$GMakeApprovalDecisionData extends GMakeApprovalDecisionData {
  @override
  final String G__typename;
  @override
  final bool? makeCharityGroupApprovalDecision;

  factory _$GMakeApprovalDecisionData(
          [void Function(GMakeApprovalDecisionDataBuilder)? updates]) =>
      (new GMakeApprovalDecisionDataBuilder()..update(updates))._build();

  _$GMakeApprovalDecisionData._(
      {required this.G__typename, this.makeCharityGroupApprovalDecision})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMakeApprovalDecisionData', 'G__typename');
  }

  @override
  GMakeApprovalDecisionData rebuild(
          void Function(GMakeApprovalDecisionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMakeApprovalDecisionDataBuilder toBuilder() =>
      new GMakeApprovalDecisionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMakeApprovalDecisionData &&
        G__typename == other.G__typename &&
        makeCharityGroupApprovalDecision ==
            other.makeCharityGroupApprovalDecision;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode),
        makeCharityGroupApprovalDecision.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMakeApprovalDecisionData')
          ..add('G__typename', G__typename)
          ..add('makeCharityGroupApprovalDecision',
              makeCharityGroupApprovalDecision))
        .toString();
  }
}

class GMakeApprovalDecisionDataBuilder
    implements
        Builder<GMakeApprovalDecisionData, GMakeApprovalDecisionDataBuilder> {
  _$GMakeApprovalDecisionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _makeCharityGroupApprovalDecision;
  bool? get makeCharityGroupApprovalDecision =>
      _$this._makeCharityGroupApprovalDecision;
  set makeCharityGroupApprovalDecision(
          bool? makeCharityGroupApprovalDecision) =>
      _$this._makeCharityGroupApprovalDecision =
          makeCharityGroupApprovalDecision;

  GMakeApprovalDecisionDataBuilder() {
    GMakeApprovalDecisionData._initializeBuilder(this);
  }

  GMakeApprovalDecisionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _makeCharityGroupApprovalDecision = $v.makeCharityGroupApprovalDecision;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMakeApprovalDecisionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMakeApprovalDecisionData;
  }

  @override
  void update(void Function(GMakeApprovalDecisionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMakeApprovalDecisionData build() => _build();

  _$GMakeApprovalDecisionData _build() {
    final _$result = _$v ??
        new _$GMakeApprovalDecisionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GMakeApprovalDecisionData', 'G__typename'),
            makeCharityGroupApprovalDecision: makeCharityGroupApprovalDecision);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
