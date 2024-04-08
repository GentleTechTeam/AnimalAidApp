// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'app_meta.req.gql.g.dart';

abstract class GAppMetaReq
    implements
        Built<GAppMetaReq, GAppMetaReqBuilder>,
        _i1.OperationRequest<_i2.GAppMetaData, _i3.GAppMetaVars> {
  GAppMetaReq._();

  factory GAppMetaReq([Function(GAppMetaReqBuilder b) updates]) = _$GAppMetaReq;

  static void _initializeBuilder(GAppMetaReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AppMeta',
    )
    ..executeOnListen = true;
  @override
  _i3.GAppMetaVars get vars;
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
  _i2.GAppMetaData? Function(
    _i2.GAppMetaData?,
    _i2.GAppMetaData?,
  )? get updateResult;
  @override
  _i2.GAppMetaData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAppMetaData? parseData(Map<String, dynamic> json) =>
      _i2.GAppMetaData.fromJson(json);
  static Serializer<GAppMetaReq> get serializer => _$gAppMetaReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAppMetaReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppMetaReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAppMetaReq.serializer,
        json,
      );
}
