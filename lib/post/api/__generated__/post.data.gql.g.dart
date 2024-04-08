// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostData> _$gPostDataSerializer = new _$GPostDataSerializer();
Serializer<GPostData_postsFeedItem> _$gPostDataPostsFeedItemSerializer =
    new _$GPostData_postsFeedItemSerializer();
Serializer<GPostData_postsFeedItem_group>
    _$gPostDataPostsFeedItemGroupSerializer =
    new _$GPostData_postsFeedItem_groupSerializer();

class _$GPostDataSerializer implements StructuredSerializer<GPostData> {
  @override
  final Iterable<Type> types = const [GPostData, _$GPostData];
  @override
  final String wireName = 'GPostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.postsFeedItem;
    if (value != null) {
      result
        ..add('postsFeedItem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPostData_postsFeedItem)));
    }
    return result;
  }

  @override
  GPostData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostDataBuilder();

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
        case 'postsFeedItem':
          result.postsFeedItem.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostData_postsFeedItem))!
              as GPostData_postsFeedItem);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostData_postsFeedItemSerializer
    implements StructuredSerializer<GPostData_postsFeedItem> {
  @override
  final Iterable<Type> types = const [
    GPostData_postsFeedItem,
    _$GPostData_postsFeedItem
  ];
  @override
  final String wireName = 'GPostData_postsFeedItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostData_postsFeedItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'group',
      serializers.serialize(object.group,
          specifiedType: const FullType(GPostData_postsFeedItem_group)),
      'creationDate',
      serializers.serialize(object.creationDate,
          specifiedType: const FullType(String)),
      'photoAttachmentUrls',
      serializers.serialize(object.photoAttachmentUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostData_postsFeedItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostData_postsFeedItemBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'group':
          result.group.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostData_postsFeedItem_group))!
              as GPostData_postsFeedItem_group);
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoAttachmentUrls':
          result.photoAttachmentUrls.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostData_postsFeedItem_groupSerializer
    implements StructuredSerializer<GPostData_postsFeedItem_group> {
  @override
  final Iterable<Type> types = const [
    GPostData_postsFeedItem_group,
    _$GPostData_postsFeedItem_group
  ];
  @override
  final String wireName = 'GPostData_postsFeedItem_group';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostData_postsFeedItem_group object,
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
    ];

    return result;
  }

  @override
  GPostData_postsFeedItem_group deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostData_postsFeedItem_groupBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GPostData extends GPostData {
  @override
  final String G__typename;
  @override
  final GPostData_postsFeedItem? postsFeedItem;

  factory _$GPostData([void Function(GPostDataBuilder)? updates]) =>
      (new GPostDataBuilder()..update(updates))._build();

  _$GPostData._({required this.G__typename, this.postsFeedItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostData', 'G__typename');
  }

  @override
  GPostData rebuild(void Function(GPostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostDataBuilder toBuilder() => new GPostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostData &&
        G__typename == other.G__typename &&
        postsFeedItem == other.postsFeedItem;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), postsFeedItem.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostData')
          ..add('G__typename', G__typename)
          ..add('postsFeedItem', postsFeedItem))
        .toString();
  }
}

class GPostDataBuilder implements Builder<GPostData, GPostDataBuilder> {
  _$GPostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostData_postsFeedItemBuilder? _postsFeedItem;
  GPostData_postsFeedItemBuilder get postsFeedItem =>
      _$this._postsFeedItem ??= new GPostData_postsFeedItemBuilder();
  set postsFeedItem(GPostData_postsFeedItemBuilder? postsFeedItem) =>
      _$this._postsFeedItem = postsFeedItem;

  GPostDataBuilder() {
    GPostData._initializeBuilder(this);
  }

  GPostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postsFeedItem = $v.postsFeedItem?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostData;
  }

  @override
  void update(void Function(GPostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostData build() => _build();

  _$GPostData _build() {
    _$GPostData _$result;
    try {
      _$result = _$v ??
          new _$GPostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostData', 'G__typename'),
              postsFeedItem: _postsFeedItem?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postsFeedItem';
        _postsFeedItem?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostData_postsFeedItem extends GPostData_postsFeedItem {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String url;
  @override
  final GPostData_postsFeedItem_group group;
  @override
  final String creationDate;
  @override
  final String? description;
  @override
  final BuiltList<String> photoAttachmentUrls;

  factory _$GPostData_postsFeedItem(
          [void Function(GPostData_postsFeedItemBuilder)? updates]) =>
      (new GPostData_postsFeedItemBuilder()..update(updates))._build();

  _$GPostData_postsFeedItem._(
      {required this.G__typename,
      required this.id,
      required this.url,
      required this.group,
      required this.creationDate,
      this.description,
      required this.photoAttachmentUrls})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostData_postsFeedItem', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GPostData_postsFeedItem', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GPostData_postsFeedItem', 'url');
    BuiltValueNullFieldError.checkNotNull(
        group, 'GPostData_postsFeedItem', 'group');
    BuiltValueNullFieldError.checkNotNull(
        creationDate, 'GPostData_postsFeedItem', 'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        photoAttachmentUrls, 'GPostData_postsFeedItem', 'photoAttachmentUrls');
  }

  @override
  GPostData_postsFeedItem rebuild(
          void Function(GPostData_postsFeedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostData_postsFeedItemBuilder toBuilder() =>
      new GPostData_postsFeedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostData_postsFeedItem &&
        G__typename == other.G__typename &&
        id == other.id &&
        url == other.url &&
        group == other.group &&
        creationDate == other.creationDate &&
        description == other.description &&
        photoAttachmentUrls == other.photoAttachmentUrls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        url.hashCode),
                    group.hashCode),
                creationDate.hashCode),
            description.hashCode),
        photoAttachmentUrls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostData_postsFeedItem')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('url', url)
          ..add('group', group)
          ..add('creationDate', creationDate)
          ..add('description', description)
          ..add('photoAttachmentUrls', photoAttachmentUrls))
        .toString();
  }
}

class GPostData_postsFeedItemBuilder
    implements
        Builder<GPostData_postsFeedItem, GPostData_postsFeedItemBuilder> {
  _$GPostData_postsFeedItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GPostData_postsFeedItem_groupBuilder? _group;
  GPostData_postsFeedItem_groupBuilder get group =>
      _$this._group ??= new GPostData_postsFeedItem_groupBuilder();
  set group(GPostData_postsFeedItem_groupBuilder? group) =>
      _$this._group = group;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _photoAttachmentUrls;
  ListBuilder<String> get photoAttachmentUrls =>
      _$this._photoAttachmentUrls ??= new ListBuilder<String>();
  set photoAttachmentUrls(ListBuilder<String>? photoAttachmentUrls) =>
      _$this._photoAttachmentUrls = photoAttachmentUrls;

  GPostData_postsFeedItemBuilder() {
    GPostData_postsFeedItem._initializeBuilder(this);
  }

  GPostData_postsFeedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _url = $v.url;
      _group = $v.group.toBuilder();
      _creationDate = $v.creationDate;
      _description = $v.description;
      _photoAttachmentUrls = $v.photoAttachmentUrls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostData_postsFeedItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostData_postsFeedItem;
  }

  @override
  void update(void Function(GPostData_postsFeedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostData_postsFeedItem build() => _build();

  _$GPostData_postsFeedItem _build() {
    _$GPostData_postsFeedItem _$result;
    try {
      _$result = _$v ??
          new _$GPostData_postsFeedItem._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostData_postsFeedItem', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GPostData_postsFeedItem', 'id'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'GPostData_postsFeedItem', 'url'),
              group: group.build(),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate, 'GPostData_postsFeedItem', 'creationDate'),
              description: description,
              photoAttachmentUrls: photoAttachmentUrls.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();

        _$failedField = 'photoAttachmentUrls';
        photoAttachmentUrls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostData_postsFeedItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostData_postsFeedItem_group extends GPostData_postsFeedItem_group {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupPhotoUrl;

  factory _$GPostData_postsFeedItem_group(
          [void Function(GPostData_postsFeedItem_groupBuilder)? updates]) =>
      (new GPostData_postsFeedItem_groupBuilder()..update(updates))._build();

  _$GPostData_postsFeedItem_group._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupPhotoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostData_postsFeedItem_group', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GPostData_postsFeedItem_group', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GPostData_postsFeedItem_group', 'name');
    BuiltValueNullFieldError.checkNotNull(
        groupPhotoUrl, 'GPostData_postsFeedItem_group', 'groupPhotoUrl');
  }

  @override
  GPostData_postsFeedItem_group rebuild(
          void Function(GPostData_postsFeedItem_groupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostData_postsFeedItem_groupBuilder toBuilder() =>
      new GPostData_postsFeedItem_groupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostData_postsFeedItem_group &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        groupPhotoUrl == other.groupPhotoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        groupPhotoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostData_postsFeedItem_group')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupPhotoUrl', groupPhotoUrl))
        .toString();
  }
}

class GPostData_postsFeedItem_groupBuilder
    implements
        Builder<GPostData_postsFeedItem_group,
            GPostData_postsFeedItem_groupBuilder> {
  _$GPostData_postsFeedItem_group? _$v;

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

  GPostData_postsFeedItem_groupBuilder() {
    GPostData_postsFeedItem_group._initializeBuilder(this);
  }

  GPostData_postsFeedItem_groupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _groupPhotoUrl = $v.groupPhotoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostData_postsFeedItem_group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostData_postsFeedItem_group;
  }

  @override
  void update(void Function(GPostData_postsFeedItem_groupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostData_postsFeedItem_group build() => _build();

  _$GPostData_postsFeedItem_group _build() {
    final _$result = _$v ??
        new _$GPostData_postsFeedItem_group._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GPostData_postsFeedItem_group', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GPostData_postsFeedItem_group', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GPostData_postsFeedItem_group', 'name'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(groupPhotoUrl,
                'GPostData_postsFeedItem_group', 'groupPhotoUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
