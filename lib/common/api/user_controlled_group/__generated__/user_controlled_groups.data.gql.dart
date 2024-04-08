// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    as _i2;

part 'user_controlled_groups.data.gql.g.dart';

abstract class GUserControlledGroupsData
    implements
        Built<GUserControlledGroupsData, GUserControlledGroupsDataBuilder> {
  GUserControlledGroupsData._();

  factory GUserControlledGroupsData(
          [Function(GUserControlledGroupsDataBuilder b) updates]) =
      _$GUserControlledGroupsData;

  static void _initializeBuilder(GUserControlledGroupsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserControlledGroupsData_userControlledGroups>
      get userControlledGroups;
  static Serializer<GUserControlledGroupsData> get serializer =>
      _$gUserControlledGroupsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserControlledGroupsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserControlledGroupsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserControlledGroupsData.serializer,
        json,
      );
}

abstract class GUserControlledGroupsData_userControlledGroups
    implements
        Built<GUserControlledGroupsData_userControlledGroups,
            GUserControlledGroupsData_userControlledGroupsBuilder> {
  GUserControlledGroupsData_userControlledGroups._();

  factory GUserControlledGroupsData_userControlledGroups(
      [Function(GUserControlledGroupsData_userControlledGroupsBuilder b)
          updates]) = _$GUserControlledGroupsData_userControlledGroups;

  static void _initializeBuilder(
          GUserControlledGroupsData_userControlledGroupsBuilder b) =>
      b..G__typename = 'CharityGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupPhotoUrl;
  _i2.GCharityGroupApprovalStatus get approvalStatus;
  String? get locationLabel;
  bool get autoImportSettingsAccessible;
  static Serializer<GUserControlledGroupsData_userControlledGroups>
      get serializer =>
          _$gUserControlledGroupsDataUserControlledGroupsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserControlledGroupsData_userControlledGroups.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserControlledGroupsData_userControlledGroups? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserControlledGroupsData_userControlledGroups.serializer,
        json,
      );
}

abstract class GRequestUserGroupApprovalData
    implements
        Built<GRequestUserGroupApprovalData,
            GRequestUserGroupApprovalDataBuilder> {
  GRequestUserGroupApprovalData._();

  factory GRequestUserGroupApprovalData(
          [Function(GRequestUserGroupApprovalDataBuilder b) updates]) =
      _$GRequestUserGroupApprovalData;

  static void _initializeBuilder(GRequestUserGroupApprovalDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval?
      get requestUserControlledGroupApproval;
  static Serializer<GRequestUserGroupApprovalData> get serializer =>
      _$gRequestUserGroupApprovalDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestUserGroupApprovalData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestUserGroupApprovalData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRequestUserGroupApprovalData.serializer,
        json,
      );
}

abstract class GRequestUserGroupApprovalData_requestUserControlledGroupApproval
    implements
        Built<GRequestUserGroupApprovalData_requestUserControlledGroupApproval,
            GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder> {
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval._();

  factory GRequestUserGroupApprovalData_requestUserControlledGroupApproval(
          [Function(
                  GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
                      b)
              updates]) =
      _$GRequestUserGroupApprovalData_requestUserControlledGroupApproval;

  static void _initializeBuilder(
          GRequestUserGroupApprovalData_requestUserControlledGroupApprovalBuilder
              b) =>
      b..G__typename = 'CharityGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupPhotoUrl;
  _i2.GCharityGroupApprovalStatus get approvalStatus;
  String? get locationLabel;
  bool get autoImportSettingsAccessible;
  static Serializer<
          GRequestUserGroupApprovalData_requestUserControlledGroupApproval>
      get serializer =>
          _$gRequestUserGroupApprovalDataRequestUserControlledGroupApprovalSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRequestUserGroupApprovalData_requestUserControlledGroupApproval
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GRequestUserGroupApprovalData_requestUserControlledGroupApproval?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRequestUserGroupApprovalData_requestUserControlledGroupApproval
                .serializer,
            json,
          );
}

abstract class GChangeUserGroupLocationData
    implements
        Built<GChangeUserGroupLocationData,
            GChangeUserGroupLocationDataBuilder> {
  GChangeUserGroupLocationData._();

  factory GChangeUserGroupLocationData(
          [Function(GChangeUserGroupLocationDataBuilder b) updates]) =
      _$GChangeUserGroupLocationData;

  static void _initializeBuilder(GChangeUserGroupLocationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangeUserGroupLocationData_changeUserControlledGroupLocation?
      get changeUserControlledGroupLocation;
  static Serializer<GChangeUserGroupLocationData> get serializer =>
      _$gChangeUserGroupLocationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeUserGroupLocationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GChangeUserGroupLocationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeUserGroupLocationData.serializer,
        json,
      );
}

abstract class GChangeUserGroupLocationData_changeUserControlledGroupLocation
    implements
        Built<GChangeUserGroupLocationData_changeUserControlledGroupLocation,
            GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder> {
  GChangeUserGroupLocationData_changeUserControlledGroupLocation._();

  factory GChangeUserGroupLocationData_changeUserControlledGroupLocation(
          [Function(
                  GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
                      b)
              updates]) =
      _$GChangeUserGroupLocationData_changeUserControlledGroupLocation;

  static void _initializeBuilder(
          GChangeUserGroupLocationData_changeUserControlledGroupLocationBuilder
              b) =>
      b..G__typename = 'CharityGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get groupPhotoUrl;
  _i2.GCharityGroupApprovalStatus get approvalStatus;
  String? get locationLabel;
  bool get autoImportSettingsAccessible;
  static Serializer<
          GChangeUserGroupLocationData_changeUserControlledGroupLocation>
      get serializer =>
          _$gChangeUserGroupLocationDataChangeUserControlledGroupLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeUserGroupLocationData_changeUserControlledGroupLocation
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GChangeUserGroupLocationData_changeUserControlledGroupLocation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GChangeUserGroupLocationData_changeUserControlledGroupLocation
                .serializer,
            json,
          );
}
