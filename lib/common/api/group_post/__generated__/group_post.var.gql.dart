// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    as _i2;

part 'group_post.var.gql.g.dart';

abstract class GGroupPostsVars
    implements Built<GGroupPostsVars, GGroupPostsVarsBuilder> {
  GGroupPostsVars._();

  factory GGroupPostsVars([Function(GGroupPostsVarsBuilder b) updates]) =
      _$GGroupPostsVars;

  String get token;
  String get groupId;
  int? get skip;
  int? get first;
  static Serializer<GGroupPostsVars> get serializer =>
      _$gGroupPostsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsVars.serializer,
        json,
      );
}

abstract class GTogglePostsInFeedVars
    implements Built<GTogglePostsInFeedVars, GTogglePostsInFeedVarsBuilder> {
  GTogglePostsInFeedVars._();

  factory GTogglePostsInFeedVars(
          [Function(GTogglePostsInFeedVarsBuilder b) updates]) =
      _$GTogglePostsInFeedVars;

  String get token;
  BuiltList<_i2.GTogglePostsInFeedPayload> get payload;
  static Serializer<GTogglePostsInFeedVars> get serializer =>
      _$gTogglePostsInFeedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTogglePostsInFeedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTogglePostsInFeedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTogglePostsInFeedVars.serializer,
        json,
      );
}

abstract class GAssignTagToApprovedPostVars
    implements
        Built<GAssignTagToApprovedPostVars,
            GAssignTagToApprovedPostVarsBuilder> {
  GAssignTagToApprovedPostVars._();

  factory GAssignTagToApprovedPostVars(
          [Function(GAssignTagToApprovedPostVarsBuilder b) updates]) =
      _$GAssignTagToApprovedPostVars;

  String get token;
  String get groupId;
  String get postId;
  String get tag;
  static Serializer<GAssignTagToApprovedPostVars> get serializer =>
      _$gAssignTagToApprovedPostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAssignTagToApprovedPostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAssignTagToApprovedPostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAssignTagToApprovedPostVars.serializer,
        json,
      );
}

abstract class GDeleteTagFromApprovedPostVars
    implements
        Built<GDeleteTagFromApprovedPostVars,
            GDeleteTagFromApprovedPostVarsBuilder> {
  GDeleteTagFromApprovedPostVars._();

  factory GDeleteTagFromApprovedPostVars(
          [Function(GDeleteTagFromApprovedPostVarsBuilder b) updates]) =
      _$GDeleteTagFromApprovedPostVars;

  String get token;
  String get groupId;
  String get postId;
  String get tag;
  static Serializer<GDeleteTagFromApprovedPostVars> get serializer =>
      _$gDeleteTagFromApprovedPostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteTagFromApprovedPostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteTagFromApprovedPostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteTagFromApprovedPostVars.serializer,
        json,
      );
}
