// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post.data.gql.g.dart';

abstract class GPostData implements Built<GPostData, GPostDataBuilder> {
  GPostData._();

  factory GPostData([Function(GPostDataBuilder b) updates]) = _$GPostData;

  static void _initializeBuilder(GPostDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostData_postsFeedItem? get postsFeedItem;
  static Serializer<GPostData> get serializer => _$gPostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostData.serializer,
        json,
      );
}

abstract class GPostData_postsFeedItem
    implements Built<GPostData_postsFeedItem, GPostData_postsFeedItemBuilder> {
  GPostData_postsFeedItem._();

  factory GPostData_postsFeedItem(
          [Function(GPostData_postsFeedItemBuilder b) updates]) =
      _$GPostData_postsFeedItem;

  static void _initializeBuilder(GPostData_postsFeedItemBuilder b) =>
      b..G__typename = 'PostFeedItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get url;
  GPostData_postsFeedItem_group get group;
  String get creationDate;
  String? get description;
  BuiltList<String> get photoAttachmentUrls;
  static Serializer<GPostData_postsFeedItem> get serializer =>
      _$gPostDataPostsFeedItemSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostData_postsFeedItem.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostData_postsFeedItem? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostData_postsFeedItem.serializer,
        json,
      );
}

abstract class GPostData_postsFeedItem_group
    implements
        Built<GPostData_postsFeedItem_group,
            GPostData_postsFeedItem_groupBuilder> {
  GPostData_postsFeedItem_group._();

  factory GPostData_postsFeedItem_group(
          [Function(GPostData_postsFeedItem_groupBuilder b) updates]) =
      _$GPostData_postsFeedItem_group;

  static void _initializeBuilder(GPostData_postsFeedItem_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupPhotoUrl;
  static Serializer<GPostData_postsFeedItem_group> get serializer =>
      _$gPostDataPostsFeedItemGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostData_postsFeedItem_group.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostData_postsFeedItem_group? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostData_postsFeedItem_group.serializer,
        json,
      );
}
