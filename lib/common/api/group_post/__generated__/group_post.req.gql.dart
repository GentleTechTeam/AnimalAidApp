// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'group_post.req.gql.g.dart';

abstract class GGroupPostsReq
    implements
        Built<GGroupPostsReq, GGroupPostsReqBuilder>,
        _i1.OperationRequest<_i2.GGroupPostsData, _i3.GGroupPostsVars> {
  GGroupPostsReq._();

  factory GGroupPostsReq([Function(GGroupPostsReqBuilder b) updates]) =
      _$GGroupPostsReq;

  static void _initializeBuilder(GGroupPostsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GroupPosts',
    )
    ..executeOnListen = true;
  @override
  _i3.GGroupPostsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGroupPostsData? Function(
    _i2.GGroupPostsData?,
    _i2.GGroupPostsData?,
  )? get updateResult;
  @override
  _i2.GGroupPostsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGroupPostsData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupPostsData.fromJson(json);
  static Serializer<GGroupPostsReq> get serializer =>
      _$gGroupPostsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupPostsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupPostsReq.serializer,
        json,
      );
}

abstract class GTogglePostsInFeedReq
    implements
        Built<GTogglePostsInFeedReq, GTogglePostsInFeedReqBuilder>,
        _i1.OperationRequest<_i2.GTogglePostsInFeedData,
            _i3.GTogglePostsInFeedVars> {
  GTogglePostsInFeedReq._();

  factory GTogglePostsInFeedReq(
          [Function(GTogglePostsInFeedReqBuilder b) updates]) =
      _$GTogglePostsInFeedReq;

  static void _initializeBuilder(GTogglePostsInFeedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'TogglePostsInFeed',
    )
    ..executeOnListen = true;
  @override
  _i3.GTogglePostsInFeedVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GTogglePostsInFeedData? Function(
    _i2.GTogglePostsInFeedData?,
    _i2.GTogglePostsInFeedData?,
  )? get updateResult;
  @override
  _i2.GTogglePostsInFeedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GTogglePostsInFeedData? parseData(Map<String, dynamic> json) =>
      _i2.GTogglePostsInFeedData.fromJson(json);
  static Serializer<GTogglePostsInFeedReq> get serializer =>
      _$gTogglePostsInFeedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTogglePostsInFeedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTogglePostsInFeedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTogglePostsInFeedReq.serializer,
        json,
      );
}

abstract class GAssignTagToApprovedPostReq
    implements
        Built<GAssignTagToApprovedPostReq, GAssignTagToApprovedPostReqBuilder>,
        _i1.OperationRequest<_i2.GAssignTagToApprovedPostData,
            _i3.GAssignTagToApprovedPostVars> {
  GAssignTagToApprovedPostReq._();

  factory GAssignTagToApprovedPostReq(
          [Function(GAssignTagToApprovedPostReqBuilder b) updates]) =
      _$GAssignTagToApprovedPostReq;

  static void _initializeBuilder(GAssignTagToApprovedPostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AssignTagToApprovedPost',
    )
    ..executeOnListen = true;
  @override
  _i3.GAssignTagToApprovedPostVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAssignTagToApprovedPostData? Function(
    _i2.GAssignTagToApprovedPostData?,
    _i2.GAssignTagToApprovedPostData?,
  )? get updateResult;
  @override
  _i2.GAssignTagToApprovedPostData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAssignTagToApprovedPostData? parseData(Map<String, dynamic> json) =>
      _i2.GAssignTagToApprovedPostData.fromJson(json);
  static Serializer<GAssignTagToApprovedPostReq> get serializer =>
      _$gAssignTagToApprovedPostReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAssignTagToApprovedPostReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAssignTagToApprovedPostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAssignTagToApprovedPostReq.serializer,
        json,
      );
}

abstract class GDeleteTagFromApprovedPostReq
    implements
        Built<GDeleteTagFromApprovedPostReq,
            GDeleteTagFromApprovedPostReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteTagFromApprovedPostData,
            _i3.GDeleteTagFromApprovedPostVars> {
  GDeleteTagFromApprovedPostReq._();

  factory GDeleteTagFromApprovedPostReq(
          [Function(GDeleteTagFromApprovedPostReqBuilder b) updates]) =
      _$GDeleteTagFromApprovedPostReq;

  static void _initializeBuilder(GDeleteTagFromApprovedPostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteTagFromApprovedPost',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeleteTagFromApprovedPostVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDeleteTagFromApprovedPostData? Function(
    _i2.GDeleteTagFromApprovedPostData?,
    _i2.GDeleteTagFromApprovedPostData?,
  )? get updateResult;
  @override
  _i2.GDeleteTagFromApprovedPostData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeleteTagFromApprovedPostData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteTagFromApprovedPostData.fromJson(json);
  static Serializer<GDeleteTagFromApprovedPostReq> get serializer =>
      _$gDeleteTagFromApprovedPostReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteTagFromApprovedPostReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteTagFromApprovedPostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteTagFromApprovedPostReq.serializer,
        json,
      );
}
