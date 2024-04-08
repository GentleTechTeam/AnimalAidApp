// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'post_concern.req.gql.g.dart';

abstract class GReportPostConcernReq
    implements
        Built<GReportPostConcernReq, GReportPostConcernReqBuilder>,
        _i1.OperationRequest<_i2.GReportPostConcernData,
            _i3.GReportPostConcernVars> {
  GReportPostConcernReq._();

  factory GReportPostConcernReq(
          [Function(GReportPostConcernReqBuilder b) updates]) =
      _$GReportPostConcernReq;

  static void _initializeBuilder(GReportPostConcernReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ReportPostConcern',
    )
    ..executeOnListen = true;
  @override
  _i3.GReportPostConcernVars get vars;
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
  _i2.GReportPostConcernData? Function(
    _i2.GReportPostConcernData?,
    _i2.GReportPostConcernData?,
  )? get updateResult;
  @override
  _i2.GReportPostConcernData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GReportPostConcernData? parseData(Map<String, dynamic> json) =>
      _i2.GReportPostConcernData.fromJson(json);
  static Serializer<GReportPostConcernReq> get serializer =>
      _$gReportPostConcernReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReportPostConcernReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportPostConcernReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReportPostConcernReq.serializer,
        json,
      );
}
