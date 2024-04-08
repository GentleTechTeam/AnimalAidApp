// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meta.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserMetaData> _$gUserMetaDataSerializer =
    new _$GUserMetaDataSerializer();
Serializer<GUserMetaData_userMeta> _$gUserMetaDataUserMetaSerializer =
    new _$GUserMetaData_userMetaSerializer();

class _$GUserMetaDataSerializer implements StructuredSerializer<GUserMetaData> {
  @override
  final Iterable<Type> types = const [GUserMetaData, _$GUserMetaData];
  @override
  final String wireName = 'GUserMetaData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserMetaData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userMeta',
      serializers.serialize(object.userMeta,
          specifiedType: const FullType(GUserMetaData_userMeta)),
    ];

    return result;
  }

  @override
  GUserMetaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserMetaDataBuilder();

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
        case 'userMeta':
          result.userMeta.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserMetaData_userMeta))!
              as GUserMetaData_userMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserMetaData_userMetaSerializer
    implements StructuredSerializer<GUserMetaData_userMeta> {
  @override
  final Iterable<Type> types = const [
    GUserMetaData_userMeta,
    _$GUserMetaData_userMeta
  ];
  @override
  final String wireName = 'GUserMetaData_userMeta';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserMetaData_userMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isAdmin',
      serializers.serialize(object.isAdmin,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GUserMetaData_userMeta deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserMetaData_userMetaBuilder();

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
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserMetaData extends GUserMetaData {
  @override
  final String G__typename;
  @override
  final GUserMetaData_userMeta userMeta;

  factory _$GUserMetaData([void Function(GUserMetaDataBuilder)? updates]) =>
      (new GUserMetaDataBuilder()..update(updates))._build();

  _$GUserMetaData._({required this.G__typename, required this.userMeta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUserMetaData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userMeta, 'GUserMetaData', 'userMeta');
  }

  @override
  GUserMetaData rebuild(void Function(GUserMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserMetaDataBuilder toBuilder() => new GUserMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserMetaData &&
        G__typename == other.G__typename &&
        userMeta == other.userMeta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), userMeta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserMetaData')
          ..add('G__typename', G__typename)
          ..add('userMeta', userMeta))
        .toString();
  }
}

class GUserMetaDataBuilder
    implements Builder<GUserMetaData, GUserMetaDataBuilder> {
  _$GUserMetaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserMetaData_userMetaBuilder? _userMeta;
  GUserMetaData_userMetaBuilder get userMeta =>
      _$this._userMeta ??= new GUserMetaData_userMetaBuilder();
  set userMeta(GUserMetaData_userMetaBuilder? userMeta) =>
      _$this._userMeta = userMeta;

  GUserMetaDataBuilder() {
    GUserMetaData._initializeBuilder(this);
  }

  GUserMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userMeta = $v.userMeta.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserMetaData;
  }

  @override
  void update(void Function(GUserMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserMetaData build() => _build();

  _$GUserMetaData _build() {
    _$GUserMetaData _$result;
    try {
      _$result = _$v ??
          new _$GUserMetaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUserMetaData', 'G__typename'),
              userMeta: userMeta.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userMeta';
        userMeta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUserMetaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserMetaData_userMeta extends GUserMetaData_userMeta {
  @override
  final String G__typename;
  @override
  final bool isAdmin;

  factory _$GUserMetaData_userMeta(
          [void Function(GUserMetaData_userMetaBuilder)? updates]) =>
      (new GUserMetaData_userMetaBuilder()..update(updates))._build();

  _$GUserMetaData_userMeta._({required this.G__typename, required this.isAdmin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUserMetaData_userMeta', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isAdmin, 'GUserMetaData_userMeta', 'isAdmin');
  }

  @override
  GUserMetaData_userMeta rebuild(
          void Function(GUserMetaData_userMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserMetaData_userMetaBuilder toBuilder() =>
      new GUserMetaData_userMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserMetaData_userMeta &&
        G__typename == other.G__typename &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), isAdmin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUserMetaData_userMeta')
          ..add('G__typename', G__typename)
          ..add('isAdmin', isAdmin))
        .toString();
  }
}

class GUserMetaData_userMetaBuilder
    implements Builder<GUserMetaData_userMeta, GUserMetaData_userMetaBuilder> {
  _$GUserMetaData_userMeta? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GUserMetaData_userMetaBuilder() {
    GUserMetaData_userMeta._initializeBuilder(this);
  }

  GUserMetaData_userMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isAdmin = $v.isAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserMetaData_userMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserMetaData_userMeta;
  }

  @override
  void update(void Function(GUserMetaData_userMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserMetaData_userMeta build() => _build();

  _$GUserMetaData_userMeta _build() {
    final _$result = _$v ??
        new _$GUserMetaData_userMeta._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUserMetaData_userMeta', 'G__typename'),
            isAdmin: BuiltValueNullFieldError.checkNotNull(
                isAdmin, 'GUserMetaData_userMeta', 'isAdmin'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
