// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_meta.req.gql.g.dart';

abstract class GUserMetaReq
    implements
        Built<GUserMetaReq, GUserMetaReqBuilder>,
        _i1.OperationRequest<_i2.GUserMetaData, _i3.GUserMetaVars> {
  GUserMetaReq._();

  factory GUserMetaReq([Function(GUserMetaReqBuilder b) updates]) =
      _$GUserMetaReq;

  static void _initializeBuilder(GUserMetaReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserMeta',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserMetaVars get vars;
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
  _i2.GUserMetaData? Function(
    _i2.GUserMetaData?,
    _i2.GUserMetaData?,
  )? get updateResult;
  @override
  _i2.GUserMetaData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserMetaData? parseData(Map<String, dynamic> json) =>
      _i2.GUserMetaData.fromJson(json);
  static Serializer<GUserMetaReq> get serializer => _$gUserMetaReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserMetaReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserMetaReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserMetaReq.serializer,
        json,
      );
}
