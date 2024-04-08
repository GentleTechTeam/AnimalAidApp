// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostsFeedVars> _$gPostsFeedVarsSerializer =
    new _$GPostsFeedVarsSerializer();

class _$GPostsFeedVarsSerializer
    implements StructuredSerializer<GPostsFeedVars> {
  @override
  final Iterable<Type> types = const [GPostsFeedVars, _$GPostsFeedVars];
  @override
  final String wireName = 'GPostsFeedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostsFeedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'fromDate',
      serializers.serialize(object.fromDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tagGroupIds;
    if (value != null) {
      result
        ..add('tagGroupIds')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tagKeys;
    if (value != null) {
      result
        ..add('tagKeys')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.locationKey;
    if (value != null) {
      result
        ..add('locationKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostsFeedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsFeedVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tagGroupIds':
          result.tagGroupIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tagKeys':
          result.tagKeys.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'fromDate':
          result.fromDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'locationKey':
          result.locationKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsFeedVars extends GPostsFeedVars {
  @override
  final BuiltList<String>? tagGroupIds;
  @override
  final BuiltList<String>? tagKeys;
  @override
  final String fromDate;
  @override
  final String? locationKey;

  factory _$GPostsFeedVars([void Function(GPostsFeedVarsBuilder)? updates]) =>
      (new GPostsFeedVarsBuilder()..update(updates))._build();

  _$GPostsFeedVars._(
      {this.tagGroupIds,
      this.tagKeys,
      required this.fromDate,
      this.locationKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromDate, 'GPostsFeedVars', 'fromDate');
  }

  @override
  GPostsFeedVars rebuild(void Function(GPostsFeedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsFeedVarsBuilder toBuilder() =>
      new GPostsFeedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsFeedVars &&
        tagGroupIds == other.tagGroupIds &&
        tagKeys == other.tagKeys &&
        fromDate == other.fromDate &&
        locationKey == other.locationKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, tagGroupIds.hashCode), tagKeys.hashCode),
            fromDate.hashCode),
        locationKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostsFeedVars')
          ..add('tagGroupIds', tagGroupIds)
          ..add('tagKeys', tagKeys)
          ..add('fromDate', fromDate)
          ..add('locationKey', locationKey))
        .toString();
  }
}

class GPostsFeedVarsBuilder
    implements Builder<GPostsFeedVars, GPostsFeedVarsBuilder> {
  _$GPostsFeedVars? _$v;

  ListBuilder<String>? _tagGroupIds;
  ListBuilder<String> get tagGroupIds =>
      _$this._tagGroupIds ??= new ListBuilder<String>();
  set tagGroupIds(ListBuilder<String>? tagGroupIds) =>
      _$this._tagGroupIds = tagGroupIds;

  ListBuilder<String>? _tagKeys;
  ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new ListBuilder<String>();
  set tagKeys(ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _locationKey;
  String? get locationKey => _$this._locationKey;
  set locationKey(String? locationKey) => _$this._locationKey = locationKey;

  GPostsFeedVarsBuilder();

  GPostsFeedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagGroupIds = $v.tagGroupIds?.toBuilder();
      _tagKeys = $v.tagKeys?.toBuilder();
      _fromDate = $v.fromDate;
      _locationKey = $v.locationKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsFeedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsFeedVars;
  }

  @override
  void update(void Function(GPostsFeedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsFeedVars build() => _build();

  _$GPostsFeedVars _build() {
    _$GPostsFeedVars _$result;
    try {
      _$result = _$v ??
          new _$GPostsFeedVars._(
              tagGroupIds: _tagGroupIds?.build(),
              tagKeys: _tagKeys?.build(),
              fromDate: BuiltValueNullFieldError.checkNotNull(
                  fromDate, 'GPostsFeedVars', 'fromDate'),
              locationKey: locationKey);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagGroupIds';
        _tagGroupIds?.build();
        _$failedField = 'tagKeys';
        _tagKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostsFeedVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
