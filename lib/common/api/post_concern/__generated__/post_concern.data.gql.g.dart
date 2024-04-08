// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_concern.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReportPostConcernData> _$gReportPostConcernDataSerializer =
    new _$GReportPostConcernDataSerializer();

class _$GReportPostConcernDataSerializer
    implements StructuredSerializer<GReportPostConcernData> {
  @override
  final Iterable<Type> types = const [
    GReportPostConcernData,
    _$GReportPostConcernData
  ];
  @override
  final String wireName = 'GReportPostConcernData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReportPostConcernData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'reportPostConcern',
      serializers.serialize(object.reportPostConcern,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GReportPostConcernData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReportPostConcernDataBuilder();

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
        case 'reportPostConcern':
          result.reportPostConcern = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GReportPostConcernData extends GReportPostConcernData {
  @override
  final String G__typename;
  @override
  final bool reportPostConcern;

  factory _$GReportPostConcernData(
          [void Function(GReportPostConcernDataBuilder)? updates]) =>
      (new GReportPostConcernDataBuilder()..update(updates))._build();

  _$GReportPostConcernData._(
      {required this.G__typename, required this.reportPostConcern})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GReportPostConcernData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        reportPostConcern, 'GReportPostConcernData', 'reportPostConcern');
  }

  @override
  GReportPostConcernData rebuild(
          void Function(GReportPostConcernDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReportPostConcernDataBuilder toBuilder() =>
      new GReportPostConcernDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReportPostConcernData &&
        G__typename == other.G__typename &&
        reportPostConcern == other.reportPostConcern;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), reportPostConcern.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GReportPostConcernData')
          ..add('G__typename', G__typename)
          ..add('reportPostConcern', reportPostConcern))
        .toString();
  }
}

class GReportPostConcernDataBuilder
    implements Builder<GReportPostConcernData, GReportPostConcernDataBuilder> {
  _$GReportPostConcernData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _reportPostConcern;
  bool? get reportPostConcern => _$this._reportPostConcern;
  set reportPostConcern(bool? reportPostConcern) =>
      _$this._reportPostConcern = reportPostConcern;

  GReportPostConcernDataBuilder() {
    GReportPostConcernData._initializeBuilder(this);
  }

  GReportPostConcernDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _reportPostConcern = $v.reportPostConcern;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReportPostConcernData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReportPostConcernData;
  }

  @override
  void update(void Function(GReportPostConcernDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReportPostConcernData build() => _build();

  _$GReportPostConcernData _build() {
    final _$result = _$v ??
        new _$GReportPostConcernData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GReportPostConcernData', 'G__typename'),
            reportPostConcern: BuiltValueNullFieldError.checkNotNull(
                reportPostConcern,
                'GReportPostConcernData',
                'reportPostConcern'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
