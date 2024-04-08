// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupPostsData> _$gGroupPostsDataSerializer =
    new _$GGroupPostsDataSerializer();
Serializer<GGroupPostsData_groupPosts> _$gGroupPostsDataGroupPostsSerializer =
    new _$GGroupPostsData_groupPostsSerializer();
Serializer<GGroupPostsData_groupPosts_items>
    _$gGroupPostsDataGroupPostsItemsSerializer =
    new _$GGroupPostsData_groupPosts_itemsSerializer();
Serializer<GTogglePostsInFeedData> _$gTogglePostsInFeedDataSerializer =
    new _$GTogglePostsInFeedDataSerializer();
Serializer<GAssignTagToApprovedPostData>
    _$gAssignTagToApprovedPostDataSerializer =
    new _$GAssignTagToApprovedPostDataSerializer();
Serializer<GAssignTagToApprovedPostData_assignTagToApprovedPost>
    _$gAssignTagToApprovedPostDataAssignTagToApprovedPostSerializer =
    new _$GAssignTagToApprovedPostData_assignTagToApprovedPostSerializer();
Serializer<GDeleteTagFromApprovedPostData>
    _$gDeleteTagFromApprovedPostDataSerializer =
    new _$GDeleteTagFromApprovedPostDataSerializer();
Serializer<GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost>
    _$gDeleteTagFromApprovedPostDataDeleteTagFromApprovedPostSerializer =
    new _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostSerializer();

class _$GGroupPostsDataSerializer
    implements StructuredSerializer<GGroupPostsData> {
  @override
  final Iterable<Type> types = const [GGroupPostsData, _$GGroupPostsData];
  @override
  final String wireName = 'GGroupPostsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGroupPostsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'groupPosts',
      serializers.serialize(object.groupPosts,
          specifiedType: const FullType(GGroupPostsData_groupPosts)),
    ];

    return result;
  }

  @override
  GGroupPostsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsDataBuilder();

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
        case 'groupPosts':
          result.groupPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGroupPostsData_groupPosts))!
              as GGroupPostsData_groupPosts);
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsData_groupPostsSerializer
    implements StructuredSerializer<GGroupPostsData_groupPosts> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsData_groupPosts,
    _$GGroupPostsData_groupPosts
  ];
  @override
  final String wireName = 'GGroupPostsData_groupPosts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsData_groupPosts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGroupPostsData_groupPosts_items)])),
    ];

    return result;
  }

  @override
  GGroupPostsData_groupPosts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsData_groupPostsBuilder();

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
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGroupPostsData_groupPosts_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsData_groupPosts_itemsSerializer
    implements StructuredSerializer<GGroupPostsData_groupPosts_items> {
  @override
  final Iterable<Type> types = const [
    GGroupPostsData_groupPosts_items,
    _$GGroupPostsData_groupPosts_items
  ];
  @override
  final String wireName = 'GGroupPostsData_groupPosts_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupPostsData_groupPosts_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'creationDate',
      serializers.serialize(object.creationDate,
          specifiedType: const FullType(String)),
      'photoAttachmentUrls',
      serializers.serialize(object.photoAttachmentUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'published',
      serializers.serialize(object.published,
          specifiedType: const FullType(bool)),
      'assignedTags',
      serializers.serialize(object.assignedTags,
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
  GGroupPostsData_groupPosts_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupPostsData_groupPosts_itemsBuilder();

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
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'assignedTags':
          result.assignedTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GTogglePostsInFeedDataSerializer
    implements StructuredSerializer<GTogglePostsInFeedData> {
  @override
  final Iterable<Type> types = const [
    GTogglePostsInFeedData,
    _$GTogglePostsInFeedData
  ];
  @override
  final String wireName = 'GTogglePostsInFeedData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTogglePostsInFeedData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'togglePostsInFeed',
      serializers.serialize(object.togglePostsInFeed,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GTogglePostsInFeedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTogglePostsInFeedDataBuilder();

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
        case 'togglePostsInFeed':
          result.togglePostsInFeed = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignTagToApprovedPostDataSerializer
    implements StructuredSerializer<GAssignTagToApprovedPostData> {
  @override
  final Iterable<Type> types = const [
    GAssignTagToApprovedPostData,
    _$GAssignTagToApprovedPostData
  ];
  @override
  final String wireName = 'GAssignTagToApprovedPostData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignTagToApprovedPostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'assignTagToApprovedPost',
      serializers.serialize(object.assignTagToApprovedPost,
          specifiedType: const FullType(
              GAssignTagToApprovedPostData_assignTagToApprovedPost)),
    ];

    return result;
  }

  @override
  GAssignTagToApprovedPostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignTagToApprovedPostDataBuilder();

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
        case 'assignTagToApprovedPost':
          result.assignTagToApprovedPost.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAssignTagToApprovedPostData_assignTagToApprovedPost))!
              as GAssignTagToApprovedPostData_assignTagToApprovedPost);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignTagToApprovedPostData_assignTagToApprovedPostSerializer
    implements
        StructuredSerializer<
            GAssignTagToApprovedPostData_assignTagToApprovedPost> {
  @override
  final Iterable<Type> types = const [
    GAssignTagToApprovedPostData_assignTagToApprovedPost,
    _$GAssignTagToApprovedPostData_assignTagToApprovedPost
  ];
  @override
  final String wireName =
      'GAssignTagToApprovedPostData_assignTagToApprovedPost';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignTagToApprovedPostData_assignTagToApprovedPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'creationDate',
      serializers.serialize(object.creationDate,
          specifiedType: const FullType(String)),
      'photoAttachmentUrls',
      serializers.serialize(object.photoAttachmentUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'published',
      serializers.serialize(object.published,
          specifiedType: const FullType(bool)),
      'assignedTags',
      serializers.serialize(object.assignedTags,
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
  GAssignTagToApprovedPostData_assignTagToApprovedPost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder();

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
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'assignedTags':
          result.assignedTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteTagFromApprovedPostDataSerializer
    implements StructuredSerializer<GDeleteTagFromApprovedPostData> {
  @override
  final Iterable<Type> types = const [
    GDeleteTagFromApprovedPostData,
    _$GDeleteTagFromApprovedPostData
  ];
  @override
  final String wireName = 'GDeleteTagFromApprovedPostData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteTagFromApprovedPostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteTagFromApprovedPost',
      serializers.serialize(object.deleteTagFromApprovedPost,
          specifiedType: const FullType(
              GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost)),
    ];

    return result;
  }

  @override
  GDeleteTagFromApprovedPostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteTagFromApprovedPostDataBuilder();

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
        case 'deleteTagFromApprovedPost':
          result.deleteTagFromApprovedPost.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost))!
              as GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostSerializer
    implements
        StructuredSerializer<
            GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost> {
  @override
  final Iterable<Type> types = const [
    GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost,
    _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost
  ];
  @override
  final String wireName =
      'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'creationDate',
      serializers.serialize(object.creationDate,
          specifiedType: const FullType(String)),
      'photoAttachmentUrls',
      serializers.serialize(object.photoAttachmentUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'published',
      serializers.serialize(object.published,
          specifiedType: const FullType(bool)),
      'assignedTags',
      serializers.serialize(object.assignedTags,
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
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder();

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
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'assignedTags':
          result.assignedTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupPostsData extends GGroupPostsData {
  @override
  final String G__typename;
  @override
  final GGroupPostsData_groupPosts groupPosts;

  factory _$GGroupPostsData([void Function(GGroupPostsDataBuilder)? updates]) =>
      (new GGroupPostsDataBuilder()..update(updates))._build();

  _$GGroupPostsData._({required this.G__typename, required this.groupPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupPostsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        groupPosts, 'GGroupPostsData', 'groupPosts');
  }

  @override
  GGroupPostsData rebuild(void Function(GGroupPostsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsDataBuilder toBuilder() =>
      new GGroupPostsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsData &&
        G__typename == other.G__typename &&
        groupPosts == other.groupPosts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), groupPosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupPostsData')
          ..add('G__typename', G__typename)
          ..add('groupPosts', groupPosts))
        .toString();
  }
}

class GGroupPostsDataBuilder
    implements Builder<GGroupPostsData, GGroupPostsDataBuilder> {
  _$GGroupPostsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGroupPostsData_groupPostsBuilder? _groupPosts;
  GGroupPostsData_groupPostsBuilder get groupPosts =>
      _$this._groupPosts ??= new GGroupPostsData_groupPostsBuilder();
  set groupPosts(GGroupPostsData_groupPostsBuilder? groupPosts) =>
      _$this._groupPosts = groupPosts;

  GGroupPostsDataBuilder() {
    GGroupPostsData._initializeBuilder(this);
  }

  GGroupPostsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _groupPosts = $v.groupPosts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsData;
  }

  @override
  void update(void Function(GGroupPostsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsData build() => _build();

  _$GGroupPostsData _build() {
    _$GGroupPostsData _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGroupPostsData', 'G__typename'),
              groupPosts: groupPosts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupPosts';
        groupPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupPostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupPostsData_groupPosts extends GGroupPostsData_groupPosts {
  @override
  final String G__typename;
  @override
  final BuiltList<GGroupPostsData_groupPosts_items> items;

  factory _$GGroupPostsData_groupPosts(
          [void Function(GGroupPostsData_groupPostsBuilder)? updates]) =>
      (new GGroupPostsData_groupPostsBuilder()..update(updates))._build();

  _$GGroupPostsData_groupPosts._(
      {required this.G__typename, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupPostsData_groupPosts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        items, 'GGroupPostsData_groupPosts', 'items');
  }

  @override
  GGroupPostsData_groupPosts rebuild(
          void Function(GGroupPostsData_groupPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsData_groupPostsBuilder toBuilder() =>
      new GGroupPostsData_groupPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsData_groupPosts &&
        G__typename == other.G__typename &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupPostsData_groupPosts')
          ..add('G__typename', G__typename)
          ..add('items', items))
        .toString();
  }
}

class GGroupPostsData_groupPostsBuilder
    implements
        Builder<GGroupPostsData_groupPosts, GGroupPostsData_groupPostsBuilder> {
  _$GGroupPostsData_groupPosts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGroupPostsData_groupPosts_items>? _items;
  ListBuilder<GGroupPostsData_groupPosts_items> get items =>
      _$this._items ??= new ListBuilder<GGroupPostsData_groupPosts_items>();
  set items(ListBuilder<GGroupPostsData_groupPosts_items>? items) =>
      _$this._items = items;

  GGroupPostsData_groupPostsBuilder() {
    GGroupPostsData_groupPosts._initializeBuilder(this);
  }

  GGroupPostsData_groupPostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsData_groupPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsData_groupPosts;
  }

  @override
  void update(void Function(GGroupPostsData_groupPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsData_groupPosts build() => _build();

  _$GGroupPostsData_groupPosts _build() {
    _$GGroupPostsData_groupPosts _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsData_groupPosts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGroupPostsData_groupPosts', 'G__typename'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupPostsData_groupPosts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupPostsData_groupPosts_items
    extends GGroupPostsData_groupPosts_items {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String creationDate;
  @override
  final String? description;
  @override
  final BuiltList<String> photoAttachmentUrls;
  @override
  final bool published;
  @override
  final BuiltList<String> assignedTags;

  factory _$GGroupPostsData_groupPosts_items(
          [void Function(GGroupPostsData_groupPosts_itemsBuilder)? updates]) =>
      (new GGroupPostsData_groupPosts_itemsBuilder()..update(updates))._build();

  _$GGroupPostsData_groupPosts_items._(
      {required this.G__typename,
      required this.id,
      required this.creationDate,
      this.description,
      required this.photoAttachmentUrls,
      required this.published,
      required this.assignedTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupPostsData_groupPosts_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGroupPostsData_groupPosts_items', 'id');
    BuiltValueNullFieldError.checkNotNull(
        creationDate, 'GGroupPostsData_groupPosts_items', 'creationDate');
    BuiltValueNullFieldError.checkNotNull(photoAttachmentUrls,
        'GGroupPostsData_groupPosts_items', 'photoAttachmentUrls');
    BuiltValueNullFieldError.checkNotNull(
        published, 'GGroupPostsData_groupPosts_items', 'published');
    BuiltValueNullFieldError.checkNotNull(
        assignedTags, 'GGroupPostsData_groupPosts_items', 'assignedTags');
  }

  @override
  GGroupPostsData_groupPosts_items rebuild(
          void Function(GGroupPostsData_groupPosts_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupPostsData_groupPosts_itemsBuilder toBuilder() =>
      new GGroupPostsData_groupPosts_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupPostsData_groupPosts_items &&
        G__typename == other.G__typename &&
        id == other.id &&
        creationDate == other.creationDate &&
        description == other.description &&
        photoAttachmentUrls == other.photoAttachmentUrls &&
        published == other.published &&
        assignedTags == other.assignedTags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        creationDate.hashCode),
                    description.hashCode),
                photoAttachmentUrls.hashCode),
            published.hashCode),
        assignedTags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupPostsData_groupPosts_items')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('creationDate', creationDate)
          ..add('description', description)
          ..add('photoAttachmentUrls', photoAttachmentUrls)
          ..add('published', published)
          ..add('assignedTags', assignedTags))
        .toString();
  }
}

class GGroupPostsData_groupPosts_itemsBuilder
    implements
        Builder<GGroupPostsData_groupPosts_items,
            GGroupPostsData_groupPosts_itemsBuilder> {
  _$GGroupPostsData_groupPosts_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  bool? _published;
  bool? get published => _$this._published;
  set published(bool? published) => _$this._published = published;

  ListBuilder<String>? _assignedTags;
  ListBuilder<String> get assignedTags =>
      _$this._assignedTags ??= new ListBuilder<String>();
  set assignedTags(ListBuilder<String>? assignedTags) =>
      _$this._assignedTags = assignedTags;

  GGroupPostsData_groupPosts_itemsBuilder() {
    GGroupPostsData_groupPosts_items._initializeBuilder(this);
  }

  GGroupPostsData_groupPosts_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _creationDate = $v.creationDate;
      _description = $v.description;
      _photoAttachmentUrls = $v.photoAttachmentUrls.toBuilder();
      _published = $v.published;
      _assignedTags = $v.assignedTags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupPostsData_groupPosts_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupPostsData_groupPosts_items;
  }

  @override
  void update(void Function(GGroupPostsData_groupPosts_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupPostsData_groupPosts_items build() => _build();

  _$GGroupPostsData_groupPosts_items _build() {
    _$GGroupPostsData_groupPosts_items _$result;
    try {
      _$result = _$v ??
          new _$GGroupPostsData_groupPosts_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGroupPostsData_groupPosts_items', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGroupPostsData_groupPosts_items', 'id'),
              creationDate: BuiltValueNullFieldError.checkNotNull(creationDate,
                  'GGroupPostsData_groupPosts_items', 'creationDate'),
              description: description,
              photoAttachmentUrls: photoAttachmentUrls.build(),
              published: BuiltValueNullFieldError.checkNotNull(
                  published, 'GGroupPostsData_groupPosts_items', 'published'),
              assignedTags: assignedTags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photoAttachmentUrls';
        photoAttachmentUrls.build();

        _$failedField = 'assignedTags';
        assignedTags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupPostsData_groupPosts_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTogglePostsInFeedData extends GTogglePostsInFeedData {
  @override
  final String G__typename;
  @override
  final bool togglePostsInFeed;

  factory _$GTogglePostsInFeedData(
          [void Function(GTogglePostsInFeedDataBuilder)? updates]) =>
      (new GTogglePostsInFeedDataBuilder()..update(updates))._build();

  _$GTogglePostsInFeedData._(
      {required this.G__typename, required this.togglePostsInFeed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GTogglePostsInFeedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        togglePostsInFeed, 'GTogglePostsInFeedData', 'togglePostsInFeed');
  }

  @override
  GTogglePostsInFeedData rebuild(
          void Function(GTogglePostsInFeedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTogglePostsInFeedDataBuilder toBuilder() =>
      new GTogglePostsInFeedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTogglePostsInFeedData &&
        G__typename == other.G__typename &&
        togglePostsInFeed == other.togglePostsInFeed;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), togglePostsInFeed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTogglePostsInFeedData')
          ..add('G__typename', G__typename)
          ..add('togglePostsInFeed', togglePostsInFeed))
        .toString();
  }
}

class GTogglePostsInFeedDataBuilder
    implements Builder<GTogglePostsInFeedData, GTogglePostsInFeedDataBuilder> {
  _$GTogglePostsInFeedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _togglePostsInFeed;
  bool? get togglePostsInFeed => _$this._togglePostsInFeed;
  set togglePostsInFeed(bool? togglePostsInFeed) =>
      _$this._togglePostsInFeed = togglePostsInFeed;

  GTogglePostsInFeedDataBuilder() {
    GTogglePostsInFeedData._initializeBuilder(this);
  }

  GTogglePostsInFeedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _togglePostsInFeed = $v.togglePostsInFeed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTogglePostsInFeedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTogglePostsInFeedData;
  }

  @override
  void update(void Function(GTogglePostsInFeedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTogglePostsInFeedData build() => _build();

  _$GTogglePostsInFeedData _build() {
    final _$result = _$v ??
        new _$GTogglePostsInFeedData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GTogglePostsInFeedData', 'G__typename'),
            togglePostsInFeed: BuiltValueNullFieldError.checkNotNull(
                togglePostsInFeed,
                'GTogglePostsInFeedData',
                'togglePostsInFeed'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignTagToApprovedPostData extends GAssignTagToApprovedPostData {
  @override
  final String G__typename;
  @override
  final GAssignTagToApprovedPostData_assignTagToApprovedPost
      assignTagToApprovedPost;

  factory _$GAssignTagToApprovedPostData(
          [void Function(GAssignTagToApprovedPostDataBuilder)? updates]) =>
      (new GAssignTagToApprovedPostDataBuilder()..update(updates))._build();

  _$GAssignTagToApprovedPostData._(
      {required this.G__typename, required this.assignTagToApprovedPost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAssignTagToApprovedPostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(assignTagToApprovedPost,
        'GAssignTagToApprovedPostData', 'assignTagToApprovedPost');
  }

  @override
  GAssignTagToApprovedPostData rebuild(
          void Function(GAssignTagToApprovedPostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignTagToApprovedPostDataBuilder toBuilder() =>
      new GAssignTagToApprovedPostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignTagToApprovedPostData &&
        G__typename == other.G__typename &&
        assignTagToApprovedPost == other.assignTagToApprovedPost;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), assignTagToApprovedPost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignTagToApprovedPostData')
          ..add('G__typename', G__typename)
          ..add('assignTagToApprovedPost', assignTagToApprovedPost))
        .toString();
  }
}

class GAssignTagToApprovedPostDataBuilder
    implements
        Builder<GAssignTagToApprovedPostData,
            GAssignTagToApprovedPostDataBuilder> {
  _$GAssignTagToApprovedPostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder?
      _assignTagToApprovedPost;
  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder
      get assignTagToApprovedPost => _$this._assignTagToApprovedPost ??=
          new GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder();
  set assignTagToApprovedPost(
          GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder?
              assignTagToApprovedPost) =>
      _$this._assignTagToApprovedPost = assignTagToApprovedPost;

  GAssignTagToApprovedPostDataBuilder() {
    GAssignTagToApprovedPostData._initializeBuilder(this);
  }

  GAssignTagToApprovedPostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _assignTagToApprovedPost = $v.assignTagToApprovedPost.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignTagToApprovedPostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignTagToApprovedPostData;
  }

  @override
  void update(void Function(GAssignTagToApprovedPostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAssignTagToApprovedPostData build() => _build();

  _$GAssignTagToApprovedPostData _build() {
    _$GAssignTagToApprovedPostData _$result;
    try {
      _$result = _$v ??
          new _$GAssignTagToApprovedPostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAssignTagToApprovedPostData', 'G__typename'),
              assignTagToApprovedPost: assignTagToApprovedPost.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assignTagToApprovedPost';
        assignTagToApprovedPost.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignTagToApprovedPostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignTagToApprovedPostData_assignTagToApprovedPost
    extends GAssignTagToApprovedPostData_assignTagToApprovedPost {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String creationDate;
  @override
  final String? description;
  @override
  final BuiltList<String> photoAttachmentUrls;
  @override
  final bool published;
  @override
  final BuiltList<String> assignedTags;

  factory _$GAssignTagToApprovedPostData_assignTagToApprovedPost(
          [void Function(
                  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder)?
              updates]) =>
      (new GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder()
            ..update(updates))
          ._build();

  _$GAssignTagToApprovedPostData_assignTagToApprovedPost._(
      {required this.G__typename,
      required this.id,
      required this.creationDate,
      this.description,
      required this.photoAttachmentUrls,
      required this.published,
      required this.assignedTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'id');
    BuiltValueNullFieldError.checkNotNull(creationDate,
        'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        photoAttachmentUrls,
        'GAssignTagToApprovedPostData_assignTagToApprovedPost',
        'photoAttachmentUrls');
    BuiltValueNullFieldError.checkNotNull(published,
        'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'published');
    BuiltValueNullFieldError.checkNotNull(assignedTags,
        'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'assignedTags');
  }

  @override
  GAssignTagToApprovedPostData_assignTagToApprovedPost rebuild(
          void Function(
                  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder toBuilder() =>
      new GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignTagToApprovedPostData_assignTagToApprovedPost &&
        G__typename == other.G__typename &&
        id == other.id &&
        creationDate == other.creationDate &&
        description == other.description &&
        photoAttachmentUrls == other.photoAttachmentUrls &&
        published == other.published &&
        assignedTags == other.assignedTags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        creationDate.hashCode),
                    description.hashCode),
                photoAttachmentUrls.hashCode),
            published.hashCode),
        assignedTags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignTagToApprovedPostData_assignTagToApprovedPost')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('creationDate', creationDate)
          ..add('description', description)
          ..add('photoAttachmentUrls', photoAttachmentUrls)
          ..add('published', published)
          ..add('assignedTags', assignedTags))
        .toString();
  }
}

class GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder
    implements
        Builder<GAssignTagToApprovedPostData_assignTagToApprovedPost,
            GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder> {
  _$GAssignTagToApprovedPostData_assignTagToApprovedPost? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  bool? _published;
  bool? get published => _$this._published;
  set published(bool? published) => _$this._published = published;

  ListBuilder<String>? _assignedTags;
  ListBuilder<String> get assignedTags =>
      _$this._assignedTags ??= new ListBuilder<String>();
  set assignedTags(ListBuilder<String>? assignedTags) =>
      _$this._assignedTags = assignedTags;

  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder() {
    GAssignTagToApprovedPostData_assignTagToApprovedPost._initializeBuilder(
        this);
  }

  GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _creationDate = $v.creationDate;
      _description = $v.description;
      _photoAttachmentUrls = $v.photoAttachmentUrls.toBuilder();
      _published = $v.published;
      _assignedTags = $v.assignedTags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignTagToApprovedPostData_assignTagToApprovedPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignTagToApprovedPostData_assignTagToApprovedPost;
  }

  @override
  void update(
      void Function(
              GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAssignTagToApprovedPostData_assignTagToApprovedPost build() => _build();

  _$GAssignTagToApprovedPostData_assignTagToApprovedPost _build() {
    _$GAssignTagToApprovedPostData_assignTagToApprovedPost _$result;
    try {
      _$result = _$v ??
          new _$GAssignTagToApprovedPostData_assignTagToApprovedPost._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAssignTagToApprovedPostData_assignTagToApprovedPost',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  'GAssignTagToApprovedPostData_assignTagToApprovedPost', 'id'),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate,
                  'GAssignTagToApprovedPostData_assignTagToApprovedPost',
                  'creationDate'),
              description: description,
              photoAttachmentUrls: photoAttachmentUrls.build(),
              published: BuiltValueNullFieldError.checkNotNull(
                  published,
                  'GAssignTagToApprovedPostData_assignTagToApprovedPost',
                  'published'),
              assignedTags: assignedTags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photoAttachmentUrls';
        photoAttachmentUrls.build();

        _$failedField = 'assignedTags';
        assignedTags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignTagToApprovedPostData_assignTagToApprovedPost',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteTagFromApprovedPostData extends GDeleteTagFromApprovedPostData {
  @override
  final String G__typename;
  @override
  final GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost
      deleteTagFromApprovedPost;

  factory _$GDeleteTagFromApprovedPostData(
          [void Function(GDeleteTagFromApprovedPostDataBuilder)? updates]) =>
      (new GDeleteTagFromApprovedPostDataBuilder()..update(updates))._build();

  _$GDeleteTagFromApprovedPostData._(
      {required this.G__typename, required this.deleteTagFromApprovedPost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteTagFromApprovedPostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteTagFromApprovedPost,
        'GDeleteTagFromApprovedPostData', 'deleteTagFromApprovedPost');
  }

  @override
  GDeleteTagFromApprovedPostData rebuild(
          void Function(GDeleteTagFromApprovedPostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteTagFromApprovedPostDataBuilder toBuilder() =>
      new GDeleteTagFromApprovedPostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteTagFromApprovedPostData &&
        G__typename == other.G__typename &&
        deleteTagFromApprovedPost == other.deleteTagFromApprovedPost;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), deleteTagFromApprovedPost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteTagFromApprovedPostData')
          ..add('G__typename', G__typename)
          ..add('deleteTagFromApprovedPost', deleteTagFromApprovedPost))
        .toString();
  }
}

class GDeleteTagFromApprovedPostDataBuilder
    implements
        Builder<GDeleteTagFromApprovedPostData,
            GDeleteTagFromApprovedPostDataBuilder> {
  _$GDeleteTagFromApprovedPostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder?
      _deleteTagFromApprovedPost;
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder
      get deleteTagFromApprovedPost => _$this._deleteTagFromApprovedPost ??=
          new GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder();
  set deleteTagFromApprovedPost(
          GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder?
              deleteTagFromApprovedPost) =>
      _$this._deleteTagFromApprovedPost = deleteTagFromApprovedPost;

  GDeleteTagFromApprovedPostDataBuilder() {
    GDeleteTagFromApprovedPostData._initializeBuilder(this);
  }

  GDeleteTagFromApprovedPostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteTagFromApprovedPost = $v.deleteTagFromApprovedPost.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteTagFromApprovedPostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteTagFromApprovedPostData;
  }

  @override
  void update(void Function(GDeleteTagFromApprovedPostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteTagFromApprovedPostData build() => _build();

  _$GDeleteTagFromApprovedPostData _build() {
    _$GDeleteTagFromApprovedPostData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteTagFromApprovedPostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDeleteTagFromApprovedPostData', 'G__typename'),
              deleteTagFromApprovedPost: deleteTagFromApprovedPost.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteTagFromApprovedPost';
        deleteTagFromApprovedPost.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeleteTagFromApprovedPostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost
    extends GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String creationDate;
  @override
  final String? description;
  @override
  final BuiltList<String> photoAttachmentUrls;
  @override
  final bool published;
  @override
  final BuiltList<String> assignedTags;

  factory _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost(
          [void Function(
                  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder)?
              updates]) =>
      (new GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder()
            ..update(updates))
          ._build();

  _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost._(
      {required this.G__typename,
      required this.id,
      required this.creationDate,
      this.description,
      required this.photoAttachmentUrls,
      required this.published,
      required this.assignedTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost', 'id');
    BuiltValueNullFieldError.checkNotNull(
        creationDate,
        'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
        'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        photoAttachmentUrls,
        'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
        'photoAttachmentUrls');
    BuiltValueNullFieldError.checkNotNull(
        published,
        'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
        'published');
    BuiltValueNullFieldError.checkNotNull(
        assignedTags,
        'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
        'assignedTags');
  }

  @override
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost rebuild(
          void Function(
                  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder toBuilder() =>
      new GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost &&
        G__typename == other.G__typename &&
        id == other.id &&
        creationDate == other.creationDate &&
        description == other.description &&
        photoAttachmentUrls == other.photoAttachmentUrls &&
        published == other.published &&
        assignedTags == other.assignedTags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        creationDate.hashCode),
                    description.hashCode),
                photoAttachmentUrls.hashCode),
            published.hashCode),
        assignedTags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('creationDate', creationDate)
          ..add('description', description)
          ..add('photoAttachmentUrls', photoAttachmentUrls)
          ..add('published', published)
          ..add('assignedTags', assignedTags))
        .toString();
  }
}

class GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder
    implements
        Builder<GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost,
            GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder> {
  _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  bool? _published;
  bool? get published => _$this._published;
  set published(bool? published) => _$this._published = published;

  ListBuilder<String>? _assignedTags;
  ListBuilder<String> get assignedTags =>
      _$this._assignedTags ??= new ListBuilder<String>();
  set assignedTags(ListBuilder<String>? assignedTags) =>
      _$this._assignedTags = assignedTags;

  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder() {
    GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost._initializeBuilder(
        this);
  }

  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _creationDate = $v.creationDate;
      _description = $v.description;
      _photoAttachmentUrls = $v.photoAttachmentUrls.toBuilder();
      _published = $v.published;
      _assignedTags = $v.assignedTags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost;
  }

  @override
  void update(
      void Function(
              GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost build() => _build();

  _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost _build() {
    _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost _$result;
    try {
      _$result = _$v ??
          new _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
                  'id'),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate,
                  'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
                  'creationDate'),
              description: description,
              photoAttachmentUrls: photoAttachmentUrls.build(),
              published: BuiltValueNullFieldError.checkNotNull(
                  published,
                  'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
                  'published'),
              assignedTags: assignedTags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photoAttachmentUrls';
        photoAttachmentUrls.build();

        _$failedField = 'assignedTags';
        assignedTags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
