// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_controlled_groups.req.gql.g.dart';

abstract class GUserControlledGroupsReq
    implements
        Built<GUserControlledGroupsReq, GUserControlledGroupsReqBuilder>,
        _i1.OperationRequest<_i2.GUserControlledGroupsData,
            _i3.GUserControlledGroupsVars> {
  GUserControlledGroupsReq._();

  factory GUserControlledGroupsReq(
          [Function(GUserControlledGroupsReqBuilder b) updates]) =
      _$GUserControlledGroupsReq;

  static void _initializeBuilder(GUserControlledGroupsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserControlledGroups',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserControlledGroupsVars get vars;
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
  _i2.GUserControlledGroupsData? Function(
    _i2.GUserControlledGroupsData?,
    _i2.GUserControlledGroupsData?,
  )? get updateResult;
  @override
  _i2.GUserControlledGroupsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserControlledGroupsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserControlledGroupsData.fromJson(json);
  static Serializer<GUserControlledGroupsReq> get serializer =>
      _$gUserControlledGroupsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserControlledGroupsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserControlledGroupsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserControlledGroupsReq.serializer,
        json,
      );
}

abstract class GRequestUserGroupApprovalReq
    implements
        Built<GRequestUserGroupApprovalReq,
            GRequestUserGroupApprovalReqBuilder>,
        _i1.OperationRequest<_i2.GRequestUserGroupApprovalData,
            _i3.GRequestUserGroupApprovalVars> {
  GRequestUserGroupApprovalReq._();

  factory GRequestUserGroupApprovalReq(
          [Function(GRequestUserGroupApprovalReqBuilder b) updates]) =
      _$GRequestUserGroupApprovalReq;

  static void _initializeBuilder(GRequestUserGroupApprovalReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RequestUserGroupApproval',
    )
    ..executeOnListen = true;
  @override
  _i3.GRequestUserGroupApprovalVars get vars;
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
  _i2.GRequestUserGroupApprovalData? Function(
    _i2.GRequestUserGroupApprovalData?,
    _i2.GRequestUserGroupApprovalData?,
  )? get updateResult;
  @override
  _i2.GRequestUserGroupApprovalData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRequestUserGroupApprovalData? parseData(Map<String, dynamic> json) =>
      _i2.GRequestUserGroupApprovalData.fromJson(json);
  static Serializer<GRequestUserGroupApprovalReq> get serializer =>
      _$gRequestUserGroupApprovalReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRequestUserGroupApprovalReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestUserGroupApprovalReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRequestUserGroupApprovalReq.serializer,
        json,
      );
}

abstract class GChangeUserGroupLocationReq
    implements
        Built<GChangeUserGroupLocationReq, GChangeUserGroupLocationReqBuilder>,
        _i1.OperationRequest<_i2.GChangeUserGroupLocationData,
            _i3.GChangeUserGroupLocationVars> {
  GChangeUserGroupLocationReq._();

  factory GChangeUserGroupLocationReq(
          [Function(GChangeUserGroupLocationReqBuilder b) updates]) =
      _$GChangeUserGroupLocationReq;

  static void _initializeBuilder(GChangeUserGroupLocationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChangeUserGroupLocation',
    )
    ..executeOnListen = true;
  @override
  _i3.GChangeUserGroupLocationVars get vars;
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
  _i2.GChangeUserGroupLocationData? Function(
    _i2.GChangeUserGroupLocationData?,
    _i2.GChangeUserGroupLocationData?,
  )? get updateResult;
  @override
  _i2.GChangeUserGroupLocationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GChangeUserGroupLocationData? parseData(Map<String, dynamic> json) =>
      _i2.GChangeUserGroupLocationData.fromJson(json);
  static Serializer<GChangeUserGroupLocationReq> get serializer =>
      _$gChangeUserGroupLocationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeUserGroupLocationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GChangeUserGroupLocationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeUserGroupLocationReq.serializer,
        json,
      );
}
