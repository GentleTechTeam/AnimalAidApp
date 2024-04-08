// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post.data.gql.g.dart';

abstract class GPostsFeedData
    implements Built<GPostsFeedData, GPostsFeedDataBuilder> {
  GPostsFeedData._();

  factory GPostsFeedData([Function(GPostsFeedDataBuilder b) updates]) =
      _$GPostsFeedData;

  static void _initializeBuilder(GPostsFeedDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostsFeedData_postsFeed get postsFeed;
  static Serializer<GPostsFeedData> get serializer =>
      _$gPostsFeedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsFeedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsFeedData.serializer,
        json,
      );
}

abstract class GPostsFeedData_postsFeed
    implements
        Built<GPostsFeedData_postsFeed, GPostsFeedData_postsFeedBuilder> {
  GPostsFeedData_postsFeed._();

  factory GPostsFeedData_postsFeed(
          [Function(GPostsFeedData_postsFeedBuilder b) updates]) =
      _$GPostsFeedData_postsFeed;

  static void _initializeBuilder(GPostsFeedData_postsFeedBuilder b) =>
      b..G__typename = 'PostsFeedData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get hasMoreItems;
  BuiltList<GPostsFeedData_postsFeed_items> get items;
  static Serializer<GPostsFeedData_postsFeed> get serializer =>
      _$gPostsFeedDataPostsFeedSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsFeedData_postsFeed.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedData_postsFeed? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsFeedData_postsFeed.serializer,
        json,
      );
}

abstract class GPostsFeedData_postsFeed_items
    implements
        Built<GPostsFeedData_postsFeed_items,
            GPostsFeedData_postsFeed_itemsBuilder> {
  GPostsFeedData_postsFeed_items._();

  factory GPostsFeedData_postsFeed_items(
          [Function(GPostsFeedData_postsFeed_itemsBuilder b) updates]) =
      _$GPostsFeedData_postsFeed_items;

  static void _initializeBuilder(GPostsFeedData_postsFeed_itemsBuilder b) =>
      b..G__typename = 'PostFeedItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get url;
  GPostsFeedData_postsFeed_items_group get group;
  String? get description;
  String get creationDate;
  BuiltList<String> get photoAttachmentUrls;
  static Serializer<GPostsFeedData_postsFeed_items> get serializer =>
      _$gPostsFeedDataPostsFeedItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsFeedData_postsFeed_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedData_postsFeed_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsFeedData_postsFeed_items.serializer,
        json,
      );
}

abstract class GPostsFeedData_postsFeed_items_group
    implements
        Built<GPostsFeedData_postsFeed_items_group,
            GPostsFeedData_postsFeed_items_groupBuilder> {
  GPostsFeedData_postsFeed_items_group._();

  factory GPostsFeedData_postsFeed_items_group(
          [Function(GPostsFeedData_postsFeed_items_groupBuilder b) updates]) =
      _$GPostsFeedData_postsFeed_items_group;

  static void _initializeBuilder(
          GPostsFeedData_postsFeed_items_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupPhotoUrl;
  static Serializer<GPostsFeedData_postsFeed_items_group> get serializer =>
      _$gPostsFeedDataPostsFeedItemsGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsFeedData_postsFeed_items_group.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedData_postsFeed_items_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsFeedData_postsFeed_items_group.serializer,
        json,
      );
}
