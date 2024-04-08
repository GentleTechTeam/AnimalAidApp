// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'main_tag_group.req.gql.g.dart';

abstract class GMainTagGroupsReq
    implements
        Built<GMainTagGroupsReq, GMainTagGroupsReqBuilder>,
        _i1.OperationRequest<_i2.GMainTagGroupsData, _i3.GMainTagGroupsVars> {
  GMainTagGroupsReq._();

  factory GMainTagGroupsReq([Function(GMainTagGroupsReqBuilder b) updates]) =
      _$GMainTagGroupsReq;

  static void _initializeBuilder(GMainTagGroupsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MainTagGroups',
    )
    ..executeOnListen = true;
  @override
  _i3.GMainTagGroupsVars get vars;
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
  _i2.GMainTagGroupsData? Function(
    _i2.GMainTagGroupsData?,
    _i2.GMainTagGroupsData?,
  )? get updateResult;
  @override
  _i2.GMainTagGroupsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMainTagGroupsData? parseData(Map<String, dynamic> json) =>
      _i2.GMainTagGroupsData.fromJson(json);
  static Serializer<GMainTagGroupsReq> get serializer =>
      _$gMainTagGroupsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMainTagGroupsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMainTagGroupsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMainTagGroupsReq.serializer,
        json,
      );
}
