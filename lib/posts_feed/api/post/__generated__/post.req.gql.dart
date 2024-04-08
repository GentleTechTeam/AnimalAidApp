// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'post.req.gql.g.dart';

abstract class GPostsFeedReq
    implements
        Built<GPostsFeedReq, GPostsFeedReqBuilder>,
        _i1.OperationRequest<_i2.GPostsFeedData, _i3.GPostsFeedVars> {
  GPostsFeedReq._();

  factory GPostsFeedReq([Function(GPostsFeedReqBuilder b) updates]) =
      _$GPostsFeedReq;

  static void _initializeBuilder(GPostsFeedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PostsFeed',
    )
    ..executeOnListen = true;
  @override
  _i3.GPostsFeedVars get vars;
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
  _i2.GPostsFeedData? Function(
    _i2.GPostsFeedData?,
    _i2.GPostsFeedData?,
  )? get updateResult;
  @override
  _i2.GPostsFeedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPostsFeedData? parseData(Map<String, dynamic> json) =>
      _i2.GPostsFeedData.fromJson(json);
  static Serializer<GPostsFeedReq> get serializer => _$gPostsFeedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostsFeedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostsFeedReq.serializer,
        json,
      );
}
