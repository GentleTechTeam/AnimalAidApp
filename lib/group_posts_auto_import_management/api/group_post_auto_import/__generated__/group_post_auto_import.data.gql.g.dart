// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post_auto_import.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsAutoImportEnabledStatusData>
    _$gGroupPostsAutoImportEnabledStatusDataSerializer =
    new _$GGroupPostsAutoImportEnabledStatusDataSerializer();
Serializer<GEnableGroupPostsAutoImportData>
    _$gEnableGroupPostsAutoImportDataSerializer =
    new _$GEnableGroupPostsAutoImportDataSerializer();
Serializer<GGroupPostsAutoImportHintData>
    _$gGroupPostsAutoImportHintDataSerializer =
    new _$GGroupPostsAutoImportHintDataSerializer();

class _$GGroupPostsAutoImportEnabledStatusDataSerializer
    implements StructuredSerializer<GGroupPostsAutoImportEnabledStatusData> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportEnabledStatusData,
    _$GGroupPostsAutoImportEnabledStatusData
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportEnabledStatusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportEnabledStatusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'groupPostsAutoImportEnabledStatus',
      serializers.serialize(object.groupPostsAutoImportEnabledStatus,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGroupPostsAutoImportEnabledStatusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsAutoImportEnabledStatusDataBuilder();

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
        case 'groupPostsAutoImportEnabledStatus':
          result.groupPostsAutoImportEnabledStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GEnableGroupPostsAutoImportDataSerializer
    implements StructuredSerializer<GEnableGroupPostsAutoImportData> {
  @override
  final Iterable<Type> types = const [
    GEnableGroupPostsAutoImportData,
    _$GEnableGroupPostsAutoImportData
  ];
  @override
  final String wireName = 'GEnableGroupPostsAutoImportData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEnableGroupPostsAutoImportData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'enableGroupPostsAutoImport',
      serializers.serialize(object.enableGroupPostsAutoImport,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GEnableGroupPostsAutoImportData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEnableGroupPostsAutoImportDataBuilder();

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
        case 'enableGroupPostsAutoImport':
          result.enableGroupPostsAutoImport = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsAutoImportHintDataSerializer
    implements StructuredSerializer<GGroupPostsAutoImportHintData> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsAutoImportHintData,
    _$GGroupPostsAutoImportHintData
  ];
  @override
  final String wireName = 'GGroupPostsAutoImportHintData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsAutoImportHintData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'groupPostsAutoImportHint',
      serializers.serialize(object.groupPostsAutoImportHint,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGroupPostsAutoImportHintData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsAutoImportHintDataBuilder();

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
        case 'groupPostsAutoImportHint':
          result.groupPostsAutoImportHint = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsAutoImportEnabledStatusData
    extends GGroupPostsAutoImportEnabledStatusData {
  @override
  final String G__typename;
  @override
  final bool groupPostsAutoImportEnabledStatus;

  factory _$GGroupPostsAutoImportEnabledStatusData(
          [void Function(GGroupPostsAutoImportEnabledStatusDataBuilder)?
              updates]) =>
      (new GGroupPostsAutoImportEnabledStatusDataBuilder()..update(updates))
          ._build();

  _$GGroupPostsAutoImportEnabledStatusData._(
      {required this.G__typename,
      required this.groupPostsAutoImportEnabledStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupPostsAutoImportEnabledStatusData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        groupPostsAutoImportEnabledStatus,
        'GGroupPostsAutoImportEnabledStatusData',
        'groupPostsAutoImportEnabledStatus');
  }

  @override
  GGroupPostsAutoImportEnabledStatusData rebuild(
          void Function(GGroupPostsAutoImportEnabledStatusDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportEnabledStatusDataBuilder toBuilder() =>
      new GGroupPostsAutoImportEnabledStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsAutoImportEnabledStatusData &&
        G__typename == other.G__typename &&
        groupPostsAutoImportEnabledStatus ==
            other.groupPostsAutoImportEnabledStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode),
        groupPostsAutoImportEnabledStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGroupPostsAutoImportEnabledStatusData')
          ..add('G__typename', G__typename)
          ..add('groupPostsAutoImportEnabledStatus',
              groupPostsAutoImportEnabledStatus))
        .toString();
  }
}

class GGroupPostsAutoImportEnabledStatusDataBuilder
    implements
        Builder<GGroupPostsAutoImportEnabledStatusData,
            GGroupPostsAutoImportEnabledStatusDataBuilder> {
  _$GGroupPostsAutoImportEnabledStatusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _groupPostsAutoImportEnabledStatus;
  bool? get groupPostsAutoImportEnabledStatus =>
      _$this._groupPostsAutoImportEnabledStatus;
  set groupPostsAutoImportEnabledStatus(
          bool? groupPostsAutoImportEnabledStatus) =>
      _$this._groupPostsAutoImportEnabledStatus =
          groupPostsAutoImportEnabledStatus;

  GGroupPostsAutoImportEnabledStatusDataBuilder() {
    GGroupPostsAutoImportEnabledStatusData._initializeBuilder(this);
  }

  GGroupPostsAutoImportEnabledStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _groupPostsAutoImportEnabledStatus = $v.groupPostsAutoImportEnabledStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsAutoImportEnabledStatusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportEnabledStatusData;
  }

  @override
  void update(
      void Function(GGroupPostsAutoImportEnabledStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportEnabledStatusData build() => _build();

  _$GGroupPostsAutoImportEnabledStatusData _build() {
    final _$result = _$v ??
        new _$GGroupPostsAutoImportEnabledStatusData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGroupPostsAutoImportEnabledStatusData', 'G__typename'),
            groupPostsAutoImportEnabledStatus:
                BuiltValueNullFieldError.checkNotNull(
                    groupPostsAutoImportEnabledStatus,
                    'GGroupPostsAutoImportEnabledStatusData',
                    'groupPostsAutoImportEnabledStatus'));
    replace(_$result);
    return _$result;
  }
}

class _$GEnableGroupPostsAutoImportData
    extends GEnableGroupPostsAutoImportData {
  @override
  final String G__typename;
  @override
  final bool enableGroupPostsAutoImport;

  factory _$GEnableGroupPostsAutoImportData(
          [void Function(GEnableGroupPostsAutoImportDataBuilder)? updates]) =>
      (new GEnableGroupPostsAutoImportDataBuilder()..update(updates))._build();

  _$GEnableGroupPostsAutoImportData._(
      {required this.G__typename, required this.enableGroupPostsAutoImport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GEnableGroupPostsAutoImportData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(enableGroupPostsAutoImport,
        'GEnableGroupPostsAutoImportData', 'enableGroupPostsAutoImport');
  }

  @override
  GEnableGroupPostsAutoImportData rebuild(
          void Function(GEnableGroupPostsAutoImportDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnableGroupPostsAutoImportDataBuilder toBuilder() =>
      new GEnableGroupPostsAutoImportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEnableGroupPostsAutoImportData &&
        G__typename == other.G__typename &&
        enableGroupPostsAutoImport == other.enableGroupPostsAutoImport;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), enableGroupPostsAutoImport.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GEnableGroupPostsAutoImportData')
          ..add('G__typename', G__typename)
          ..add('enableGroupPostsAutoImport', enableGroupPostsAutoImport))
        .toString();
  }
}

class GEnableGroupPostsAutoImportDataBuilder
    implements
        Builder<GEnableGroupPostsAutoImportData,
            GEnableGroupPostsAutoImportDataBuilder> {
  _$GEnableGroupPostsAutoImportData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _enableGroupPostsAutoImport;
  bool? get enableGroupPostsAutoImport => _$this._enableGroupPostsAutoImport;
  set enableGroupPostsAutoImport(bool? enableGroupPostsAutoImport) =>
      _$this._enableGroupPostsAutoImport = enableGroupPostsAutoImport;

  GEnableGroupPostsAutoImportDataBuilder() {
    GEnableGroupPostsAutoImportData._initializeBuilder(this);
  }

  GEnableGroupPostsAutoImportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _enableGroupPostsAutoImport = $v.enableGroupPostsAutoImport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEnableGroupPostsAutoImportData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEnableGroupPostsAutoImportData;
  }

  @override
  void update(void Function(GEnableGroupPostsAutoImportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnableGroupPostsAutoImportData build() => _build();

  _$GEnableGroupPostsAutoImportData _build() {
    final _$result = _$v ??
        new _$GEnableGroupPostsAutoImportData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GEnableGroupPostsAutoImportData', 'G__typename'),
            enableGroupPostsAutoImport: BuiltValueNullFieldError.checkNotNull(
                enableGroupPostsAutoImport,
                'GEnableGroupPostsAutoImportData',
                'enableGroupPostsAutoImport'));
    replace(_$result);
    return _$result;
  }
}

class _$GGroupPostsAutoImportHintData extends GGroupPostsAutoImportHintData {
  @override
  final String G__typename;
  @override
  final String groupPostsAutoImportHint;

  factory _$GGroupPostsAutoImportHintData(
          [void Function(GGroupPostsAutoImportHintDataBuilder)? updates]) =>
      (new GGroupPostsAutoImportHintDataBuilder()..update(updates))._build();

  _$GGroupPostsAutoImportHintData._(
      {required this.G__typename, required this.groupPostsAutoImportHint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupPostsAutoImportHintData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(groupPostsAutoImportHint,
        'GGroupPostsAutoImportHintData', 'groupPostsAutoImportHint');
  }

  @override
  GGroupPostsAutoImportHintData rebuild(
          void Function(GGroupPostsAutoImportHintDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsAutoImportHintDataBuilder toBuilder() =>
      new GGroupPostsAutoImportHintDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsAutoImportHintData &&
        G__typename == other.G__typename &&
        groupPostsAutoImportHint == other.groupPostsAutoImportHint;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), groupPostsAutoImportHint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupPostsAutoImportHintData')
          ..add('G__typename', G__typename)
          ..add('groupPostsAutoImportHint', groupPostsAutoImportHint))
        .toString();
  }
}

class GGroupPostsAutoImportHintDataBuilder
    implements
        Builder<GGroupPostsAutoImportHintData,
            GGroupPostsAutoImportHintDataBuilder> {
  _$GGroupPostsAutoImportHintData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _groupPostsAutoImportHint;
  String? get groupPostsAutoImportHint => _$this._groupPostsAutoImportHint;
  set groupPostsAutoImportHint(String? groupPostsAutoImportHint) =>
      _$this._groupPostsAutoImportHint = groupPostsAutoImportHint;

  GGroupPostsAutoImportHintDataBuilder() {
    GGroupPostsAutoImportHintData._initializeBuilder(this);
  }

  GGroupPostsAutoImportHintDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _groupPostsAutoImportHint = $v.groupPostsAutoImportHint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsAutoImportHintData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsAutoImportHintData;
  }

  @override
  void update(void Function(GGroupPostsAutoImportHintDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsAutoImportHintData build() => _build();

  _$GGroupPostsAutoImportHintData _build() {
    final _$result = _$v ??
        new _$GGroupPostsAutoImportHintData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGroupPostsAutoImportHintData', 'G__typename'),
            groupPostsAutoImportHint: BuiltValueNullFieldError.checkNotNull(
                groupPostsAutoImportHint,
                'GGroupPostsAutoImportHintData',
                'groupPostsAutoImportHint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
