// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostsFeedData> _$gPostsFeedDataSerializer =
    new _$GPostsFeedDataSerializer();
Serializer<GPostsFeedData_postsFeed> _$gPostsFeedDataPostsFeedSerializer =
    new _$GPostsFeedData_postsFeedSerializer();
Serializer<GPostsFeedData_postsFeed_items>
    _$gPostsFeedDataPostsFeedItemsSerializer =
    new _$GPostsFeedData_postsFeed_itemsSerializer();
Serializer<GPostsFeedData_postsFeed_items_group>
    _$gPostsFeedDataPostsFeedItemsGroupSerializer =
    new _$GPostsFeedData_postsFeed_items_groupSerializer();

class _$GPostsFeedDataSerializer
    implements StructuredSerializer<GPostsFeedData> {
  @override
  final Iterable<Type> types = const [GPostsFeedData, _$GPostsFeedData];
  @override
  final String wireName = 'GPostsFeedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostsFeedData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postsFeed',
      serializers.serialize(object.postsFeed,
          specifiedType: const FullType(GPostsFeedData_postsFeed)),
    ];

    return result;
  }

  @override
  GPostsFeedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsFeedDataBuilder();

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
        case 'postsFeed':
          result.postsFeed.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostsFeedData_postsFeed))!
              as GPostsFeedData_postsFeed);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsFeedData_postsFeedSerializer
    implements StructuredSerializer<GPostsFeedData_postsFeed> {
  @override
  final Iterable<Type> types = const [
    GPostsFeedData_postsFeed,
    _$GPostsFeedData_postsFeed
  ];
  @override
  final String wireName = 'GPostsFeedData_postsFeed';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostsFeedData_postsFeed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasMoreItems',
      serializers.serialize(object.hasMoreItems,
          specifiedType: const FullType(bool)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GPostsFeedData_postsFeed_items)])),
    ];

    return result;
  }

  @override
  GPostsFeedData_postsFeed deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsFeedData_postsFeedBuilder();

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
        case 'hasMoreItems':
          result.hasMoreItems = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPostsFeedData_postsFeed_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsFeedData_postsFeed_itemsSerializer
    implements StructuredSerializer<GPostsFeedData_postsFeed_items> {
  @override
  final Iterable<Type> types = const [
    GPostsFeedData_postsFeed_items,
    _$GPostsFeedData_postsFeed_items
  ];
  @override
  final String wireName = 'GPostsFeedData_postsFeed_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostsFeedData_postsFeed_items object,
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
          specifiedType: const FullType(GPostsFeedData_postsFeed_items_group)),
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
  GPostsFeedData_postsFeed_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsFeedData_postsFeed_itemsBuilder();

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
                  specifiedType:
                      const FullType(GPostsFeedData_postsFeed_items_group))!
              as GPostsFeedData_postsFeed_items_group);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$GPostsFeedData_postsFeed_items_groupSerializer
    implements StructuredSerializer<GPostsFeedData_postsFeed_items_group> {
  @override
  final Iterable<Type> types = const [
    GPostsFeedData_postsFeed_items_group,
    _$GPostsFeedData_postsFeed_items_group
  ];
  @override
  final String wireName = 'GPostsFeedData_postsFeed_items_group';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostsFeedData_postsFeed_items_group object,
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
  GPostsFeedData_postsFeed_items_group deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsFeedData_postsFeed_items_groupBuilder();

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

class _$GPostsFeedData extends GPostsFeedData {
  @override
  final String G__typename;
  @override
  final GPostsFeedData_postsFeed postsFeed;

  factory _$GPostsFeedData([void Function(GPostsFeedDataBuilder)? updates]) =>
      (new GPostsFeedDataBuilder()..update(updates))._build();

  _$GPostsFeedData._({required this.G__typename, required this.postsFeed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostsFeedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postsFeed, 'GPostsFeedData', 'postsFeed');
  }

  @override
  GPostsFeedData rebuild(void Function(GPostsFeedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsFeedDataBuilder toBuilder() =>
      new GPostsFeedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsFeedData &&
        G__typename == other.G__typename &&
        postsFeed == other.postsFeed;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), postsFeed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostsFeedData')
          ..add('G__typename', G__typename)
          ..add('postsFeed', postsFeed))
        .toString();
  }
}

class GPostsFeedDataBuilder
    implements Builder<GPostsFeedData, GPostsFeedDataBuilder> {
  _$GPostsFeedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostsFeedData_postsFeedBuilder? _postsFeed;
  GPostsFeedData_postsFeedBuilder get postsFeed =>
      _$this._postsFeed ??= new GPostsFeedData_postsFeedBuilder();
  set postsFeed(GPostsFeedData_postsFeedBuilder? postsFeed) =>
      _$this._postsFeed = postsFeed;

  GPostsFeedDataBuilder() {
    GPostsFeedData._initializeBuilder(this);
  }

  GPostsFeedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postsFeed = $v.postsFeed.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsFeedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsFeedData;
  }

  @override
  void update(void Function(GPostsFeedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsFeedData build() => _build();

  _$GPostsFeedData _build() {
    _$GPostsFeedData _$result;
    try {
      _$result = _$v ??
          new _$GPostsFeedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostsFeedData', 'G__typename'),
              postsFeed: postsFeed.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postsFeed';
        postsFeed.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostsFeedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsFeedData_postsFeed extends GPostsFeedData_postsFeed {
  @override
  final String G__typename;
  @override
  final bool hasMoreItems;
  @override
  final BuiltList<GPostsFeedData_postsFeed_items> items;

  factory _$GPostsFeedData_postsFeed(
          [void Function(GPostsFeedData_postsFeedBuilder)? updates]) =>
      (new GPostsFeedData_postsFeedBuilder()..update(updates))._build();

  _$GPostsFeedData_postsFeed._(
      {required this.G__typename,
      required this.hasMoreItems,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostsFeedData_postsFeed', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hasMoreItems, 'GPostsFeedData_postsFeed', 'hasMoreItems');
    BuiltValueNullFieldError.checkNotNull(
        items, 'GPostsFeedData_postsFeed', 'items');
  }

  @override
  GPostsFeedData_postsFeed rebuild(
          void Function(GPostsFeedData_postsFeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsFeedData_postsFeedBuilder toBuilder() =>
      new GPostsFeedData_postsFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsFeedData_postsFeed &&
        G__typename == other.G__typename &&
        hasMoreItems == other.hasMoreItems &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), hasMoreItems.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostsFeedData_postsFeed')
          ..add('G__typename', G__typename)
          ..add('hasMoreItems', hasMoreItems)
          ..add('items', items))
        .toString();
  }
}

class GPostsFeedData_postsFeedBuilder
    implements
        Builder<GPostsFeedData_postsFeed, GPostsFeedData_postsFeedBuilder> {
  _$GPostsFeedData_postsFeed? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _hasMoreItems;
  bool? get hasMoreItems => _$this._hasMoreItems;
  set hasMoreItems(bool? hasMoreItems) => _$this._hasMoreItems = hasMoreItems;

  ListBuilder<GPostsFeedData_postsFeed_items>? _items;
  ListBuilder<GPostsFeedData_postsFeed_items> get items =>
      _$this._items ??= new ListBuilder<GPostsFeedData_postsFeed_items>();
  set items(ListBuilder<GPostsFeedData_postsFeed_items>? items) =>
      _$this._items = items;

  GPostsFeedData_postsFeedBuilder() {
    GPostsFeedData_postsFeed._initializeBuilder(this);
  }

  GPostsFeedData_postsFeedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hasMoreItems = $v.hasMoreItems;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsFeedData_postsFeed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsFeedData_postsFeed;
  }

  @override
  void update(void Function(GPostsFeedData_postsFeedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsFeedData_postsFeed build() => _build();

  _$GPostsFeedData_postsFeed _build() {
    _$GPostsFeedData_postsFeed _$result;
    try {
      _$result = _$v ??
          new _$GPostsFeedData_postsFeed._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostsFeedData_postsFeed', 'G__typename'),
              hasMoreItems: BuiltValueNullFieldError.checkNotNull(
                  hasMoreItems, 'GPostsFeedData_postsFeed', 'hasMoreItems'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostsFeedData_postsFeed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsFeedData_postsFeed_items extends GPostsFeedData_postsFeed_items {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String url;
  @override
  final GPostsFeedData_postsFeed_items_group group;
  @override
  final String? description;
  @override
  final String creationDate;
  @override
  final BuiltList<String> photoAttachmentUrls;

  factory _$GPostsFeedData_postsFeed_items(
          [void Function(GPostsFeedData_postsFeed_itemsBuilder)? updates]) =>
      (new GPostsFeedData_postsFeed_itemsBuilder()..update(updates))._build();

  _$GPostsFeedData_postsFeed_items._(
      {required this.G__typename,
      required this.id,
      required this.url,
      required this.group,
      this.description,
      required this.creationDate,
      required this.photoAttachmentUrls})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostsFeedData_postsFeed_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GPostsFeedData_postsFeed_items', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GPostsFeedData_postsFeed_items', 'url');
    BuiltValueNullFieldError.checkNotNull(
        group, 'GPostsFeedData_postsFeed_items', 'group');
    BuiltValueNullFieldError.checkNotNull(
        creationDate, 'GPostsFeedData_postsFeed_items', 'creationDate');
    BuiltValueNullFieldError.checkNotNull(photoAttachmentUrls,
        'GPostsFeedData_postsFeed_items', 'photoAttachmentUrls');
  }

  @override
  GPostsFeedData_postsFeed_items rebuild(
          void Function(GPostsFeedData_postsFeed_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsFeedData_postsFeed_itemsBuilder toBuilder() =>
      new GPostsFeedData_postsFeed_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsFeedData_postsFeed_items &&
        G__typename == other.G__typename &&
        id == other.id &&
        url == other.url &&
        group == other.group &&
        description == other.description &&
        creationDate == other.creationDate &&
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
                description.hashCode),
            creationDate.hashCode),
        photoAttachmentUrls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostsFeedData_postsFeed_items')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('url', url)
          ..add('group', group)
          ..add('description', description)
          ..add('creationDate', creationDate)
          ..add('photoAttachmentUrls', photoAttachmentUrls))
        .toString();
  }
}

class GPostsFeedData_postsFeed_itemsBuilder
    implements
        Builder<GPostsFeedData_postsFeed_items,
            GPostsFeedData_postsFeed_itemsBuilder> {
  _$GPostsFeedData_postsFeed_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GPostsFeedData_postsFeed_items_groupBuilder? _group;
  GPostsFeedData_postsFeed_items_groupBuilder get group =>
      _$this._group ??= new GPostsFeedData_postsFeed_items_groupBuilder();
  set group(GPostsFeedData_postsFeed_items_groupBuilder? group) =>
      _$this._group = group;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  ListBuilder<String>? _photoAttachmentUrls;
  ListBuilder<String> get photoAttachmentUrls =>
      _$this._photoAttachmentUrls ??= new ListBuilder<String>();
  set photoAttachmentUrls(ListBuilder<String>? photoAttachmentUrls) =>
      _$this._photoAttachmentUrls = photoAttachmentUrls;

  GPostsFeedData_postsFeed_itemsBuilder() {
    GPostsFeedData_postsFeed_items._initializeBuilder(this);
  }

  GPostsFeedData_postsFeed_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _url = $v.url;
      _group = $v.group.toBuilder();
      _description = $v.description;
      _creationDate = $v.creationDate;
      _photoAttachmentUrls = $v.photoAttachmentUrls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsFeedData_postsFeed_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsFeedData_postsFeed_items;
  }

  @override
  void update(void Function(GPostsFeedData_postsFeed_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsFeedData_postsFeed_items build() => _build();

  _$GPostsFeedData_postsFeed_items _build() {
    _$GPostsFeedData_postsFeed_items _$result;
    try {
      _$result = _$v ??
          new _$GPostsFeedData_postsFeed_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostsFeedData_postsFeed_items', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GPostsFeedData_postsFeed_items', 'id'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'GPostsFeedData_postsFeed_items', 'url'),
              group: group.build(),
              description: description,
              creationDate: BuiltValueNullFieldError.checkNotNull(creationDate,
                  'GPostsFeedData_postsFeed_items', 'creationDate'),
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
            'GPostsFeedData_postsFeed_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsFeedData_postsFeed_items_group
    extends GPostsFeedData_postsFeed_items_group {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String groupPhotoUrl;

  factory _$GPostsFeedData_postsFeed_items_group(
          [void Function(GPostsFeedData_postsFeed_items_groupBuilder)?
              updates]) =>
      (new GPostsFeedData_postsFeed_items_groupBuilder()..update(updates))
          ._build();

  _$GPostsFeedData_postsFeed_items_group._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.groupPhotoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostsFeedData_postsFeed_items_group', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GPostsFeedData_postsFeed_items_group', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GPostsFeedData_postsFeed_items_group', 'name');
    BuiltValueNullFieldError.checkNotNull(
        groupPhotoUrl, 'GPostsFeedData_postsFeed_items_group', 'groupPhotoUrl');
  }

  @override
  GPostsFeedData_postsFeed_items_group rebuild(
          void Function(GPostsFeedData_postsFeed_items_groupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsFeedData_postsFeed_items_groupBuilder toBuilder() =>
      new GPostsFeedData_postsFeed_items_groupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsFeedData_postsFeed_items_group &&
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
    return (newBuiltValueToStringHelper('GPostsFeedData_postsFeed_items_group')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('groupPhotoUrl', groupPhotoUrl))
        .toString();
  }
}

class GPostsFeedData_postsFeed_items_groupBuilder
    implements
        Builder<GPostsFeedData_postsFeed_items_group,
            GPostsFeedData_postsFeed_items_groupBuilder> {
  _$GPostsFeedData_postsFeed_items_group? _$v;

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

  GPostsFeedData_postsFeed_items_groupBuilder() {
    GPostsFeedData_postsFeed_items_group._initializeBuilder(this);
  }

  GPostsFeedData_postsFeed_items_groupBuilder get _$this {
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
  void replace(GPostsFeedData_postsFeed_items_group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsFeedData_postsFeed_items_group;
  }

  @override
  void update(
      void Function(GPostsFeedData_postsFeed_items_groupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsFeedData_postsFeed_items_group build() => _build();

  _$GPostsFeedData_postsFeed_items_group _build() {
    final _$result = _$v ??
        new _$GPostsFeedData_postsFeed_items_group._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GPostsFeedData_postsFeed_items_group', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GPostsFeedData_postsFeed_items_group', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GPostsFeedData_postsFeed_items_group', 'name'),
            groupPhotoUrl: BuiltValueNullFieldError.checkNotNull(groupPhotoUrl,
                'GPostsFeedData_postsFeed_items_group', 'groupPhotoUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
