// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'main_tag_group.data.gql.g.dart';

abstract class GMainTagGroupsData
    implements Built<GMainTagGroupsData, GMainTagGroupsDataBuilder> {
  GMainTagGroupsData._();

  factory GMainTagGroupsData([Function(GMainTagGroupsDataBuilder b) updates]) =
      _$GMainTagGroupsData;

  static void _initializeBuilder(GMainTagGroupsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMainTagGroupsData_mainTagGroups> get mainTagGroups;
  static Serializer<GMainTagGroupsData> get serializer =>
      _$gMainTagGroupsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainTagGroupsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMainTagGroupsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainTagGroupsData.serializer,
        json,
      );
}

abstract class GMainTagGroupsData_mainTagGroups
    implements
        Built<GMainTagGroupsData_mainTagGroups,
            GMainTagGroupsData_mainTagGroupsBuilder> {
  GMainTagGroupsData_mainTagGroups._();

  factory GMainTagGroupsData_mainTagGroups(
          [Function(GMainTagGroupsData_mainTagGroupsBuilder b) updates]) =
      _$GMainTagGroupsData_mainTagGroups;

  static void _initializeBuilder(GMainTagGroupsData_mainTagGroupsBuilder b) =>
      b..G__typename = 'MainTagGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get label;
  BuiltList<String> get tagKeys;
  static Serializer<GMainTagGroupsData_mainTagGroups> get serializer =>
      _$gMainTagGroupsDataMainTagGroupsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainTagGroupsData_mainTagGroups.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMainTagGroupsData_mainTagGroups? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainTagGroupsData_mainTagGroups.serializer,
        json,
      );
}
