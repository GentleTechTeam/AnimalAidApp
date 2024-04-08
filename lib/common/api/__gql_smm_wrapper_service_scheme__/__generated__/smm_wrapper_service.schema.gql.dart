// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'smm_wrapper_service.schema.gql.g.dart';

class GCharityGroupApprovalStatus extends EnumClass {
  const GCharityGroupApprovalStatus._(String name) : super(name);

  static const GCharityGroupApprovalStatus NONE =
      _$gCharityGroupApprovalStatusNONE;

  static const GCharityGroupApprovalStatus PENDING =
      _$gCharityGroupApprovalStatusPENDING;

  static const GCharityGroupApprovalStatus APPROVED =
      _$gCharityGroupApprovalStatusAPPROVED;

  static const GCharityGroupApprovalStatus DECLINED =
      _$gCharityGroupApprovalStatusDECLINED;

  static Serializer<GCharityGroupApprovalStatus> get serializer =>
      _$gCharityGroupApprovalStatusSerializer;
  static BuiltSet<GCharityGroupApprovalStatus> get values =>
      _$gCharityGroupApprovalStatusValues;
  static GCharityGroupApprovalStatus valueOf(String name) =>
      _$gCharityGroupApprovalStatusValueOf(name);
}

abstract class GGeoPositionInput
    implements Built<GGeoPositionInput, GGeoPositionInputBuilder> {
  GGeoPositionInput._();

  factory GGeoPositionInput([Function(GGeoPositionInputBuilder b) updates]) =
      _$GGeoPositionInput;

  double get latitude;
  double get longitude;
  static Serializer<GGeoPositionInput> get serializer =>
      _$gGeoPositionInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGeoPositionInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGeoPositionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGeoPositionInput.serializer,
        json,
      );
}

abstract class GLocationDataInput
    implements Built<GLocationDataInput, GLocationDataInputBuilder> {
  GLocationDataInput._();

  factory GLocationDataInput([Function(GLocationDataInputBuilder b) updates]) =
      _$GLocationDataInput;

  String get label;
  String get key;
  String get keyType;
  static Serializer<GLocationDataInput> get serializer =>
      _$gLocationDataInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationDataInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLocationDataInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationDataInput.serializer,
        json,
      );
}

abstract class GRefreshLocationPayload
    implements Built<GRefreshLocationPayload, GRefreshLocationPayloadBuilder> {
  GRefreshLocationPayload._();

  factory GRefreshLocationPayload(
          [Function(GRefreshLocationPayloadBuilder b) updates]) =
      _$GRefreshLocationPayload;

  GGeoPositionInput? get position;
  GLocationDataInput get currentLocationData;
  static Serializer<GRefreshLocationPayload> get serializer =>
      _$gRefreshLocationPayloadSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshLocationPayload.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRefreshLocationPayload? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshLocationPayload.serializer,
        json,
      );
}

abstract class GTogglePostsInFeedPayload
    implements
        Built<GTogglePostsInFeedPayload, GTogglePostsInFeedPayloadBuilder> {
  GTogglePostsInFeedPayload._();

  factory GTogglePostsInFeedPayload(
          [Function(GTogglePostsInFeedPayloadBuilder b) updates]) =
      _$GTogglePostsInFeedPayload;

  String get groupId;
  String get postId;
  bool get enabled;
  static Serializer<GTogglePostsInFeedPayload> get serializer =>
      _$gTogglePostsInFeedPayloadSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTogglePostsInFeedPayload.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTogglePostsInFeedPayload? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTogglePostsInFeedPayload.serializer,
        json,
      );
}
