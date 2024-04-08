// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'group_post.data.gql.g.dart';

abstract class GGroupPostsData
    implements Built<GGroupPostsData, GGroupPostsDataBuilder> {
  GGroupPostsData._();

  factory GGroupPostsData([Function(GGroupPostsDataBuilder b) updates]) =
      _$GGroupPostsData;

  static void _initializeBuilder(GGroupPostsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGroupPostsData_groupPosts get groupPosts;
  static Serializer<GGroupPostsData> get serializer =>
      _$gGroupPostsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsData.serializer,
        json,
      );
}

abstract class GGroupPostsData_groupPosts
    implements
        Built<GGroupPostsData_groupPosts, GGroupPostsData_groupPostsBuilder> {
  GGroupPostsData_groupPosts._();

  factory GGroupPostsData_groupPosts(
          [Function(GGroupPostsData_groupPostsBuilder b) updates]) =
      _$GGroupPostsData_groupPosts;

  static void _initializeBuilder(GGroupPostsData_groupPostsBuilder b) =>
      b..G__typename = 'GroupPostsData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGroupPostsData_groupPosts_items> get items;
  static Serializer<GGroupPostsData_groupPosts> get serializer =>
      _$gGroupPostsDataGroupPostsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsData_groupPosts.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsData_groupPosts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsData_groupPosts.serializer,
        json,
      );
}

abstract class GGroupPostsData_groupPosts_items
    implements
        Built<GGroupPostsData_groupPosts_items,
            GGroupPostsData_groupPosts_itemsBuilder> {
  GGroupPostsData_groupPosts_items._();

  factory GGroupPostsData_groupPosts_items(
          [Function(GGroupPostsData_groupPosts_itemsBuilder b) updates]) =
      _$GGroupPostsData_groupPosts_items;

  static void _initializeBuilder(GGroupPostsData_groupPosts_itemsBuilder b) =>
      b..G__typename = 'GroupPost';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get creationDate;
  String? get description;
  BuiltList<String> get photoAttachmentUrls;
  bool get published;
  BuiltList<String> get assignedTags;
  static Serializer<GGroupPostsData_groupPosts_items> get serializer =>
      _$gGroupPostsDataGroupPostsItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsData_groupPosts_items.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsData_groupPosts_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsData_groupPosts_items.serializer,
        json,
      );
}

abstract class GTogglePostsInFeedData
    implements Built<GTogglePostsInFeedData, GTogglePostsInFeedDataBuilder> {
  GTogglePostsInFeedData._();

  factory GTogglePostsInFeedData(
          [Function(GTogglePostsInFeedDataBuilder b) updates]) =
      _$GTogglePostsInFeedData;

  static void _initializeBuilder(GTogglePostsInFeedDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get togglePostsInFeed;
  static Serializer<GTogglePostsInFeedData> get serializer =>
      _$gTogglePostsInFeedDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTogglePostsInFeedData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTogglePostsInFeedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTogglePostsInFeedData.serializer,
        json,
      );
}

abstract class GAssignTagToApprovedPostData
    implements
        Built<GAssignTagToApprovedPostData,
            GAssignTagToApprovedPostDataBuilder> {
  GAssignTagToApprovedPostData._();

  factory GAssignTagToApprovedPostData(
          [Function(GAssignTagToApprovedPostDataBuilder b) updates]) =
      _$GAssignTagToApprovedPostData;

  static void _initializeBuilder(GAssignTagToApprovedPostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAssignTagToApprovedPostData_assignTagToApprovedPost
      get assignTagToApprovedPost;
  static Serializer<GAssignTagToApprovedPostData> get serializer =>
      _$gAssignTagToApprovedPostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAssignTagToApprovedPostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAssignTagToApprovedPostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAssignTagToApprovedPostData.serializer,
        json,
      );
}

abstract class GAssignTagToApprovedPostData_assignTagToApprovedPost
    implements
        Built<GAssignTagToApprovedPostData_assignTagToApprovedPost,
            GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder> {
  GAssignTagToApprovedPostData_assignTagToApprovedPost._();

  factory GAssignTagToApprovedPostData_assignTagToApprovedPost(
      [Function(GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder b)
          updates]) = _$GAssignTagToApprovedPostData_assignTagToApprovedPost;

  static void _initializeBuilder(
          GAssignTagToApprovedPostData_assignTagToApprovedPostBuilder b) =>
      b..G__typename = 'GroupPost';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get creationDate;
  String? get description;
  BuiltList<String> get photoAttachmentUrls;
  bool get published;
  BuiltList<String> get assignedTags;
  static Serializer<GAssignTagToApprovedPostData_assignTagToApprovedPost>
      get serializer =>
          _$gAssignTagToApprovedPostDataAssignTagToApprovedPostSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAssignTagToApprovedPostData_assignTagToApprovedPost.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAssignTagToApprovedPostData_assignTagToApprovedPost? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAssignTagToApprovedPostData_assignTagToApprovedPost.serializer,
        json,
      );
}

abstract class GDeleteTagFromApprovedPostData
    implements
        Built<GDeleteTagFromApprovedPostData,
            GDeleteTagFromApprovedPostDataBuilder> {
  GDeleteTagFromApprovedPostData._();

  factory GDeleteTagFromApprovedPostData(
          [Function(GDeleteTagFromApprovedPostDataBuilder b) updates]) =
      _$GDeleteTagFromApprovedPostData;

  static void _initializeBuilder(GDeleteTagFromApprovedPostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost
      get deleteTagFromApprovedPost;
  static Serializer<GDeleteTagFromApprovedPostData> get serializer =>
      _$gDeleteTagFromApprovedPostDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteTagFromApprovedPostData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteTagFromApprovedPostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteTagFromApprovedPostData.serializer,
        json,
      );
}

abstract class GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost
    implements
        Built<GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost,
            GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder> {
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost._();

  factory GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost(
      [Function(
              GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder b)
          updates]) = _$GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost;

  static void _initializeBuilder(
          GDeleteTagFromApprovedPostData_deleteTagFromApprovedPostBuilder b) =>
      b..G__typename = 'GroupPost';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get creationDate;
  String? get description;
  BuiltList<String> get photoAttachmentUrls;
  bool get published;
  BuiltList<String> get assignedTags;
  static Serializer<GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost>
      get serializer =>
          _$gDeleteTagFromApprovedPostDataDeleteTagFromApprovedPostSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost.serializer,
        json,
      );
}
