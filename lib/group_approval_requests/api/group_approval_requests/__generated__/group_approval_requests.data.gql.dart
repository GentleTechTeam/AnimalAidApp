// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'group_approval_requests.data.gql.g.dart';

abstract class GGroupApprovalRequestsData
    implements
        Built<GGroupApprovalRequestsData, GGroupApprovalRequestsDataBuilder> {
  GGroupApprovalRequestsData._();

  factory GGroupApprovalRequestsData(
          [Function(GGroupApprovalRequestsDataBuilder b) updates]) =
      _$GGroupApprovalRequestsData;

  static void _initializeBuilder(GGroupApprovalRequestsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      get charityGroupsWaitingForApproval;
  static Serializer<GGroupApprovalRequestsData> get serializer =>
      _$gGroupApprovalRequestsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupApprovalRequestsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupApprovalRequestsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupApprovalRequestsData.serializer,
        json,
      );
}

abstract class GGroupApprovalRequestsData_charityGroupsWaitingForApproval
    implements
        Built<GGroupApprovalRequestsData_charityGroupsWaitingForApproval,
            GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder> {
  GGroupApprovalRequestsData_charityGroupsWaitingForApproval._();

  factory GGroupApprovalRequestsData_charityGroupsWaitingForApproval(
      [Function(
              GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder
                  b)
          updates]) = _$GGroupApprovalRequestsData_charityGroupsWaitingForApproval;

  static void _initializeBuilder(
          GGroupApprovalRequestsData_charityGroupsWaitingForApprovalBuilder
              b) =>
      b..G__typename = 'CharityGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupUrl;
  String get groupPhotoUrl;
  static Serializer<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      get serializer =>
          _$gGroupApprovalRequestsDataCharityGroupsWaitingForApprovalSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupApprovalRequestsData_charityGroupsWaitingForApproval.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupApprovalRequestsData_charityGroupsWaitingForApproval? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupApprovalRequestsData_charityGroupsWaitingForApproval.serializer,
        json,
      );
}

abstract class GMakeApprovalDecisionData
    implements
        Built<GMakeApprovalDecisionData, GMakeApprovalDecisionDataBuilder> {
  GMakeApprovalDecisionData._();

  factory GMakeApprovalDecisionData(
          [Function(GMakeApprovalDecisionDataBuilder b) updates]) =
      _$GMakeApprovalDecisionData;

  static void _initializeBuilder(GMakeApprovalDecisionDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get makeCharityGroupApprovalDecision;
  static Serializer<GMakeApprovalDecisionData> get serializer =>
      _$gMakeApprovalDecisionDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMakeApprovalDecisionData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMakeApprovalDecisionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMakeApprovalDecisionData.serializer,
        json,
      );
}
