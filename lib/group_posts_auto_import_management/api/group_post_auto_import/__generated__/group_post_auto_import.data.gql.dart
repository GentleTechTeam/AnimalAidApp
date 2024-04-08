// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'group_post_auto_import.data.gql.g.dart';

abstract class GGroupPostsAutoImportEnabledStatusData
    implements
        Built<GGroupPostsAutoImportEnabledStatusData,
            GGroupPostsAutoImportEnabledStatusDataBuilder> {
  GGroupPostsAutoImportEnabledStatusData._();

  factory GGroupPostsAutoImportEnabledStatusData(
          [Function(GGroupPostsAutoImportEnabledStatusDataBuilder b) updates]) =
      _$GGroupPostsAutoImportEnabledStatusData;

  static void _initializeBuilder(
          GGroupPostsAutoImportEnabledStatusDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get groupPostsAutoImportEnabledStatus;
  static Serializer<GGroupPostsAutoImportEnabledStatusData> get serializer =>
      _$gGroupPostsAutoImportEnabledStatusDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsAutoImportEnabledStatusData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportEnabledStatusData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsAutoImportEnabledStatusData.serializer,
        json,
      );
}

abstract class GEnableGroupPostsAutoImportData
    implements
        Built<GEnableGroupPostsAutoImportData,
            GEnableGroupPostsAutoImportDataBuilder> {
  GEnableGroupPostsAutoImportData._();

  factory GEnableGroupPostsAutoImportData(
          [Function(GEnableGroupPostsAutoImportDataBuilder b) updates]) =
      _$GEnableGroupPostsAutoImportData;

  static void _initializeBuilder(GEnableGroupPostsAutoImportDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get enableGroupPostsAutoImport;
  static Serializer<GEnableGroupPostsAutoImportData> get serializer =>
      _$gEnableGroupPostsAutoImportDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEnableGroupPostsAutoImportData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEnableGroupPostsAutoImportData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEnableGroupPostsAutoImportData.serializer,
        json,
      );
}

abstract class GGroupPostsAutoImportHintData
    implements
        Built<GGroupPostsAutoImportHintData,
            GGroupPostsAutoImportHintDataBuilder> {
  GGroupPostsAutoImportHintData._();

  factory GGroupPostsAutoImportHintData(
          [Function(GGroupPostsAutoImportHintDataBuilder b) updates]) =
      _$GGroupPostsAutoImportHintData;

  static void _initializeBuilder(GGroupPostsAutoImportHintDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get groupPostsAutoImportHint;
  static Serializer<GGroupPostsAutoImportHintData> get serializer =>
      _$gGroupPostsAutoImportHintDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsAutoImportHintData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportHintData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsAutoImportHintData.serializer,
        json,
      );
}
