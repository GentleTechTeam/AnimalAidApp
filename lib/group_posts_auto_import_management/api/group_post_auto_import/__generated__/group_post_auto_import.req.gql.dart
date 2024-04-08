// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'group_post_auto_import.req.gql.g.dart';

abstract class GGroupPostsAutoImportEnabledStatusReq
    implements
        Built<GGroupPostsAutoImportEnabledStatusReq,
            GGroupPostsAutoImportEnabledStatusReqBuilder>,
        _i1.OperationRequest<_i2.GGroupPostsAutoImportEnabledStatusData,
            _i3.GGroupPostsAutoImportEnabledStatusVars> {
  GGroupPostsAutoImportEnabledStatusReq._();

  factory GGroupPostsAutoImportEnabledStatusReq(
          [Function(GGroupPostsAutoImportEnabledStatusReqBuilder b) updates]) =
      _$GGroupPostsAutoImportEnabledStatusReq;

  static void _initializeBuilder(
          GGroupPostsAutoImportEnabledStatusReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'GroupPostsAutoImportEnabledStatus',
        )
        ..executeOnListen = true;
  @override
  _i3.GGroupPostsAutoImportEnabledStatusVars get vars;
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
  _i2.GGroupPostsAutoImportEnabledStatusData? Function(
    _i2.GGroupPostsAutoImportEnabledStatusData?,
    _i2.GGroupPostsAutoImportEnabledStatusData?,
  )? get updateResult;
  @override
  _i2.GGroupPostsAutoImportEnabledStatusData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGroupPostsAutoImportEnabledStatusData? parseData(
          Map<String, dynamic> json) =>
      _i2.GGroupPostsAutoImportEnabledStatusData.fromJson(json);
  static Serializer<GGroupPostsAutoImportEnabledStatusReq> get serializer =>
      _$gGroupPostsAutoImportEnabledStatusReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupPostsAutoImportEnabledStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportEnabledStatusReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupPostsAutoImportEnabledStatusReq.serializer,
        json,
      );
}

abstract class GEnableGroupPostsAutoImportReq
    implements
        Built<GEnableGroupPostsAutoImportReq,
            GEnableGroupPostsAutoImportReqBuilder>,
        _i1.OperationRequest<_i2.GEnableGroupPostsAutoImportData,
            _i3.GEnableGroupPostsAutoImportVars> {
  GEnableGroupPostsAutoImportReq._();

  factory GEnableGroupPostsAutoImportReq(
          [Function(GEnableGroupPostsAutoImportReqBuilder b) updates]) =
      _$GEnableGroupPostsAutoImportReq;

  static void _initializeBuilder(GEnableGroupPostsAutoImportReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'EnableGroupPostsAutoImport',
    )
    ..executeOnListen = true;
  @override
  _i3.GEnableGroupPostsAutoImportVars get vars;
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
  _i2.GEnableGroupPostsAutoImportData? Function(
    _i2.GEnableGroupPostsAutoImportData?,
    _i2.GEnableGroupPostsAutoImportData?,
  )? get updateResult;
  @override
  _i2.GEnableGroupPostsAutoImportData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GEnableGroupPostsAutoImportData? parseData(Map<String, dynamic> json) =>
      _i2.GEnableGroupPostsAutoImportData.fromJson(json);
  static Serializer<GEnableGroupPostsAutoImportReq> get serializer =>
      _$gEnableGroupPostsAutoImportReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GEnableGroupPostsAutoImportReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEnableGroupPostsAutoImportReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GEnableGroupPostsAutoImportReq.serializer,
        json,
      );
}

abstract class GGroupPostsAutoImportHintReq
    implements
        Built<GGroupPostsAutoImportHintReq,
            GGroupPostsAutoImportHintReqBuilder>,
        _i1.OperationRequest<_i2.GGroupPostsAutoImportHintData,
            _i3.GGroupPostsAutoImportHintVars> {
  GGroupPostsAutoImportHintReq._();

  factory GGroupPostsAutoImportHintReq(
          [Function(GGroupPostsAutoImportHintReqBuilder b) updates]) =
      _$GGroupPostsAutoImportHintReq;

  static void _initializeBuilder(GGroupPostsAutoImportHintReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GroupPostsAutoImportHint',
    )
    ..executeOnListen = true;
  @override
  _i3.GGroupPostsAutoImportHintVars get vars;
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
  _i2.GGroupPostsAutoImportHintData? Function(
    _i2.GGroupPostsAutoImportHintData?,
    _i2.GGroupPostsAutoImportHintData?,
  )? get updateResult;
  @override
  _i2.GGroupPostsAutoImportHintData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGroupPostsAutoImportHintData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupPostsAutoImportHintData.fromJson(json);
  static Serializer<GGroupPostsAutoImportHintReq> get serializer =>
      _$gGroupPostsAutoImportHintReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupPostsAutoImportHintReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportHintReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupPostsAutoImportHintReq.serializer,
        json,
      );
}
