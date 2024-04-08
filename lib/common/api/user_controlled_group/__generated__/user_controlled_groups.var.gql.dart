// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    as _i1;

part 'user_controlled_groups.var.gql.g.dart';

abstract class GUserControlledGroupsVars
    implements
        Built<GUserControlledGroupsVars, GUserControlledGroupsVarsBuilder> {
  GUserControlledGroupsVars._();

  factory GUserControlledGroupsVars(
          [Function(GUserControlledGroupsVarsBuilder b) updates]) =
      _$GUserControlledGroupsVars;

  String get token;
  _i1.GCharityGroupApprovalStatus? get approvalStatus;
  static Serializer<GUserControlledGroupsVars> get serializer =>
      _$gUserControlledGroupsVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserControlledGroupsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserControlledGroupsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserControlledGroupsVars.serializer,
        json,
      );
}

abstract class GRequestUserGroupApprovalVars
    implements
        Built<GRequestUserGroupApprovalVars,
            GRequestUserGroupApprovalVarsBuilder> {
  GRequestUserGroupApprovalVars._();

  factory GRequestUserGroupApprovalVars(
          [Function(GRequestUserGroupApprovalVarsBuilder b) updates]) =
      _$GRequestUserGroupApprovalVars;

  String get token;
  String get groupId;
  static Serializer<GRequestUserGroupApprovalVars> get serializer =>
      _$gRequestUserGroupApprovalVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GRequestUserGroupApprovalVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestUserGroupApprovalVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GRequestUserGroupApprovalVars.serializer,
        json,
      );
}

abstract class GChangeUserGroupLocationVars
    implements
        Built<GChangeUserGroupLocationVars,
            GChangeUserGroupLocationVarsBuilder> {
  GChangeUserGroupLocationVars._();

  factory GChangeUserGroupLocationVars(
          [Function(GChangeUserGroupLocationVarsBuilder b) updates]) =
      _$GChangeUserGroupLocationVars;

  String get token;
  String get groupId;
  String? get locationKey;
  static Serializer<GChangeUserGroupLocationVars> get serializer =>
      _$gChangeUserGroupLocationVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangeUserGroupLocationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GChangeUserGroupLocationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GChangeUserGroupLocationVars.serializer,
        json,
      );
}
