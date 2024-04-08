// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tag_group.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMainTagGroupsData> _$gMainTagGroupsDataSerializer =
    new _$GMainTagGroupsDataSerializer();
Serializer<GMainTagGroupsData_mainTagGroups>
    _$gMainTagGroupsDataMainTagGroupsSerializer =
    new _$GMainTagGroupsData_mainTagGroupsSerializer();

class _$GMainTagGroupsDataSerializer
    implements StructuredSerializer<GMainTagGroupsData> {
  @override
  final Iterable<Type> types = const [GMainTagGroupsData, _$GMainTagGroupsData];
  @override
  final String wireName = 'GMainTagGroupsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMainTagGroupsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'mainTagGroups',
      serializers.serialize(object.mainTagGroups,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GMainTagGroupsData_mainTagGroups)])),
    ];

    return result;
  }

  @override
  GMainTagGroupsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMainTagGroupsDataBuilder();

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
        case 'mainTagGroups':
          result.mainTagGroups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GMainTagGroupsData_mainTagGroups)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMainTagGroupsData_mainTagGroupsSerializer
    implements StructuredSerializer<GMainTagGroupsData_mainTagGroups> {
  @override
  final Iterable<Type> types = const [
    GMainTagGroupsData_mainTagGroups,
    _$GMainTagGroupsData_mainTagGroups
  ];
  @override
  final String wireName = 'GMainTagGroupsData_mainTagGroups';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMainTagGroupsData_mainTagGroups object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'tagKeys',
      serializers.serialize(object.tagKeys,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GMainTagGroupsData_mainTagGroups deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMainTagGroupsData_mainTagGroupsBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tagKeys':
          result.tagKeys.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMainTagGroupsData extends GMainTagGroupsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GMainTagGroupsData_mainTagGroups> mainTagGroups;

  factory _$GMainTagGroupsData(
          [void Function(GMainTagGroupsDataBuilder)? updates]) =>
      (new GMainTagGroupsDataBuilder()..update(updates))._build();

  _$GMainTagGroupsData._(
      {required this.G__typename, required this.mainTagGroups})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMainTagGroupsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        mainTagGroups, 'GMainTagGroupsData', 'mainTagGroups');
  }

  @override
  GMainTagGroupsData rebuild(
          void Function(GMainTagGroupsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMainTagGroupsDataBuilder toBuilder() =>
      new GMainTagGroupsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMainTagGroupsData &&
        G__typename == other.G__typename &&
        mainTagGroups == other.mainTagGroups;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), mainTagGroups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMainTagGroupsData')
          ..add('G__typename', G__typename)
          ..add('mainTagGroups', mainTagGroups))
        .toString();
  }
}

class GMainTagGroupsDataBuilder
    implements Builder<GMainTagGroupsData, GMainTagGroupsDataBuilder> {
  _$GMainTagGroupsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMainTagGroupsData_mainTagGroups>? _mainTagGroups;
  ListBuilder<GMainTagGroupsData_mainTagGroups> get mainTagGroups =>
      _$this._mainTagGroups ??=
          new ListBuilder<GMainTagGroupsData_mainTagGroups>();
  set mainTagGroups(
          ListBuilder<GMainTagGroupsData_mainTagGroups>? mainTagGroups) =>
      _$this._mainTagGroups = mainTagGroups;

  GMainTagGroupsDataBuilder() {
    GMainTagGroupsData._initializeBuilder(this);
  }

  GMainTagGroupsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mainTagGroups = $v.mainTagGroups.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMainTagGroupsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMainTagGroupsData;
  }

  @override
  void update(void Function(GMainTagGroupsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMainTagGroupsData build() => _build();

  _$GMainTagGroupsData _build() {
    _$GMainTagGroupsData _$result;
    try {
      _$result = _$v ??
          new _$GMainTagGroupsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GMainTagGroupsData', 'G__typename'),
              mainTagGroups: mainTagGroups.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainTagGroups';
        mainTagGroups.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMainTagGroupsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMainTagGroupsData_mainTagGroups
    extends GMainTagGroupsData_mainTagGroups {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String label;
  @override
  final BuiltList<String> tagKeys;

  factory _$GMainTagGroupsData_mainTagGroups(
          [void Function(GMainTagGroupsData_mainTagGroupsBuilder)? updates]) =>
      (new GMainTagGroupsData_mainTagGroupsBuilder()..update(updates))._build();

  _$GMainTagGroupsData_mainTagGroups._(
      {required this.G__typename,
      required this.id,
      required this.label,
      required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMainTagGroupsData_mainTagGroups', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMainTagGroupsData_mainTagGroups', 'id');
    BuiltValueNullFieldError.checkNotNull(
        label, 'GMainTagGroupsData_mainTagGroups', 'label');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, 'GMainTagGroupsData_mainTagGroups', 'tagKeys');
  }

  @override
  GMainTagGroupsData_mainTagGroups rebuild(
          void Function(GMainTagGroupsData_mainTagGroupsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMainTagGroupsData_mainTagGroupsBuilder toBuilder() =>
      new GMainTagGroupsData_mainTagGroupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMainTagGroupsData_mainTagGroups &&
        G__typename == other.G__typename &&
        id == other.id &&
        label == other.label &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), label.hashCode),
        tagKeys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMainTagGroupsData_mainTagGroups')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('label', label)
          ..add('tagKeys', tagKeys))
        .toString();
  }
}

class GMainTagGroupsData_mainTagGroupsBuilder
    implements
        Builder<GMainTagGroupsData_mainTagGroups,
            GMainTagGroupsData_mainTagGroupsBuilder> {
  _$GMainTagGroupsData_mainTagGroups? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ListBuilder<String>? _tagKeys;
  ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new ListBuilder<String>();
  set tagKeys(ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  GMainTagGroupsData_mainTagGroupsBuilder() {
    GMainTagGroupsData_mainTagGroups._initializeBuilder(this);
  }

  GMainTagGroupsData_mainTagGroupsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _label = $v.label;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMainTagGroupsData_mainTagGroups other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMainTagGroupsData_mainTagGroups;
  }

  @override
  void update(void Function(GMainTagGroupsData_mainTagGroupsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMainTagGroupsData_mainTagGroups build() => _build();

  _$GMainTagGroupsData_mainTagGroups _build() {
    _$GMainTagGroupsData_mainTagGroups _$result;
    try {
      _$result = _$v ??
          new _$GMainTagGroupsData_mainTagGroups._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GMainTagGroupsData_mainTagGroups', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GMainTagGroupsData_mainTagGroups', 'id'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, 'GMainTagGroupsData_mainTagGroups', 'label'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMainTagGroupsData_mainTagGroups', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
