// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'group_approval_requests.var.gql.g.dart';

abstract class GGroupApprovalRequestsVars
    implements
        Built<GGroupApprovalRequestsVars, GGroupApprovalRequestsVarsBuilder> {
  GGroupApprovalRequestsVars._();

  factory GGroupApprovalRequestsVars(
          [Function(GGroupApprovalRequestsVarsBuilder b) updates]) =
      _$GGroupApprovalRequestsVars;

  String get token;
  static Serializer<GGroupApprovalRequestsVars> get serializer =>
      _$gGroupApprovalRequestsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupApprovalRequestsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupApprovalRequestsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupApprovalRequestsVars.serializer,
        json,
      );
}

abstract class GMakeApprovalDecisionVars
    implements
        Built<GMakeApprovalDecisionVars, GMakeApprovalDecisionVarsBuilder> {
  GMakeApprovalDecisionVars._();

  factory GMakeApprovalDecisionVars(
          [Function(GMakeApprovalDecisionVarsBuilder b) updates]) =
      _$GMakeApprovalDecisionVars;

  String get token;
  String get groupId;
  bool get approve;
  static Serializer<GMakeApprovalDecisionVars> get serializer =>
      _$gMakeApprovalDecisionVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMakeApprovalDecisionVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMakeApprovalDecisionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMakeApprovalDecisionVars.serializer,
        json,
      );
}
