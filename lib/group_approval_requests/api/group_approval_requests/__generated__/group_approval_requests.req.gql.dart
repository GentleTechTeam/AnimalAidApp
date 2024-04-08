// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'group_approval_requests.req.gql.g.dart';

abstract class GGroupApprovalRequestsReq
    implements
        Built<GGroupApprovalRequestsReq, GGroupApprovalRequestsReqBuilder>,
        _i1.OperationRequest<_i2.GGroupApprovalRequestsData,
            _i3.GGroupApprovalRequestsVars> {
  GGroupApprovalRequestsReq._();

  factory GGroupApprovalRequestsReq(
          [Function(GGroupApprovalRequestsReqBuilder b) updates]) =
      _$GGroupApprovalRequestsReq;

  static void _initializeBuilder(GGroupApprovalRequestsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GroupApprovalRequests',
    )
    ..executeOnListen = true;
  @override
  _i3.GGroupApprovalRequestsVars get vars;
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
  _i2.GGroupApprovalRequestsData? Function(
    _i2.GGroupApprovalRequestsData?,
    _i2.GGroupApprovalRequestsData?,
  )? get updateResult;
  @override
  _i2.GGroupApprovalRequestsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGroupApprovalRequestsData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupApprovalRequestsData.fromJson(json);
  static Serializer<GGroupApprovalRequestsReq> get serializer =>
      _$gGroupApprovalRequestsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupApprovalRequestsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupApprovalRequestsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupApprovalRequestsReq.serializer,
        json,
      );
}

abstract class GMakeApprovalDecisionReq
    implements
        Built<GMakeApprovalDecisionReq, GMakeApprovalDecisionReqBuilder>,
        _i1.OperationRequest<_i2.GMakeApprovalDecisionData,
            _i3.GMakeApprovalDecisionVars> {
  GMakeApprovalDecisionReq._();

  factory GMakeApprovalDecisionReq(
          [Function(GMakeApprovalDecisionReqBuilder b) updates]) =
      _$GMakeApprovalDecisionReq;

  static void _initializeBuilder(GMakeApprovalDecisionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MakeApprovalDecision',
    )
    ..executeOnListen = true;
  @override
  _i3.GMakeApprovalDecisionVars get vars;
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
  _i2.GMakeApprovalDecisionData? Function(
    _i2.GMakeApprovalDecisionData?,
    _i2.GMakeApprovalDecisionData?,
  )? get updateResult;
  @override
  _i2.GMakeApprovalDecisionData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMakeApprovalDecisionData? parseData(Map<String, dynamic> json) =>
      _i2.GMakeApprovalDecisionData.fromJson(json);
  static Serializer<GMakeApprovalDecisionReq> get serializer =>
      _$gMakeApprovalDecisionReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMakeApprovalDecisionReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMakeApprovalDecisionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMakeApprovalDecisionReq.serializer,
        json,
      );
}
