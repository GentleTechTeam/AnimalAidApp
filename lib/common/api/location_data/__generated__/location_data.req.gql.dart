// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i6;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.ast.gql.dart'
    as _i5;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.data.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'location_data.req.gql.g.dart';

abstract class GGenerateLocationDataReq
    implements
        Built<GGenerateLocationDataReq, GGenerateLocationDataReqBuilder>,
        _i1.OperationRequest<_i2.GGenerateLocationDataData,
            _i3.GGenerateLocationDataVars> {
  GGenerateLocationDataReq._();

  factory GGenerateLocationDataReq(
          [Function(GGenerateLocationDataReqBuilder b) updates]) =
      _$GGenerateLocationDataReq;

  static void _initializeBuilder(GGenerateLocationDataReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GenerateLocationData',
    )
    ..executeOnListen = true;
  @override
  _i3.GGenerateLocationDataVars get vars;
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
  _i2.GGenerateLocationDataData? Function(
    _i2.GGenerateLocationDataData?,
    _i2.GGenerateLocationDataData?,
  )? get updateResult;
  @override
  _i2.GGenerateLocationDataData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGenerateLocationDataData? parseData(Map<String, dynamic> json) =>
      _i2.GGenerateLocationDataData.fromJson(json);
  static Serializer<GGenerateLocationDataReq> get serializer =>
      _$gGenerateLocationDataReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGenerateLocationDataReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGenerateLocationDataReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGenerateLocationDataReq.serializer,
        json,
      );
}

abstract class GRefreshLocationDataReq
    implements
        Built<GRefreshLocationDataReq, GRefreshLocationDataReqBuilder>,
        _i1.OperationRequest<_i2.GRefreshLocationDataData,
            _i3.GRefreshLocationDataVars> {
  GRefreshLocationDataReq._();

  factory GRefreshLocationDataReq(
          [Function(GRefreshLocationDataReqBuilder b) updates]) =
      _$GRefreshLocationDataReq;

  static void _initializeBuilder(GRefreshLocationDataReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RefreshLocationData',
    )
    ..executeOnListen = true;
  @override
  _i3.GRefreshLocationDataVars get vars;
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
  _i2.GRefreshLocationDataData? Function(
    _i2.GRefreshLocationDataData?,
    _i2.GRefreshLocationDataData?,
  )? get updateResult;
  @override
  _i2.GRefreshLocationDataData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRefreshLocationDataData? parseData(Map<String, dynamic> json) =>
      _i2.GRefreshLocationDataData.fromJson(json);
  static Serializer<GRefreshLocationDataReq> get serializer =>
      _$gRefreshLocationDataReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRefreshLocationDataReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRefreshLocationDataReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRefreshLocationDataReq.serializer,
        json,
      );
}

abstract class GSearchLocationsReq
    implements
        Built<GSearchLocationsReq, GSearchLocationsReqBuilder>,
        _i1.OperationRequest<_i2.GSearchLocationsData,
            _i3.GSearchLocationsVars> {
  GSearchLocationsReq._();

  factory GSearchLocationsReq(
      [Function(GSearchLocationsReqBuilder b) updates]) = _$GSearchLocationsReq;

  static void _initializeBuilder(GSearchLocationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SearchLocations',
    )
    ..executeOnListen = true;
  @override
  _i3.GSearchLocationsVars get vars;
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
  _i2.GSearchLocationsData? Function(
    _i2.GSearchLocationsData?,
    _i2.GSearchLocationsData?,
  )? get updateResult;
  @override
  _i2.GSearchLocationsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSearchLocationsData? parseData(Map<String, dynamic> json) =>
      _i2.GSearchLocationsData.fromJson(json);
  static Serializer<GSearchLocationsReq> get serializer =>
      _$gSearchLocationsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSearchLocationsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchLocationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSearchLocationsReq.serializer,
        json,
      );
}
