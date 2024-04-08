// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'group_post_auto_import.var.gql.g.dart';

abstract class GGroupPostsAutoImportEnabledStatusVars
    implements
        Built<GGroupPostsAutoImportEnabledStatusVars,
            GGroupPostsAutoImportEnabledStatusVarsBuilder> {
  GGroupPostsAutoImportEnabledStatusVars._();

  factory GGroupPostsAutoImportEnabledStatusVars(
          [Function(GGroupPostsAutoImportEnabledStatusVarsBuilder b) updates]) =
      _$GGroupPostsAutoImportEnabledStatusVars;

  String get token;
  String get groupId;
  static Serializer<GGroupPostsAutoImportEnabledStatusVars> get serializer =>
      _$gGroupPostsAutoImportEnabledStatusVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsAutoImportEnabledStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportEnabledStatusVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsAutoImportEnabledStatusVars.serializer,
        json,
      );
}

abstract class GEnableGroupPostsAutoImportVars
    implements
        Built<GEnableGroupPostsAutoImportVars,
            GEnableGroupPostsAutoImportVarsBuilder> {
  GEnableGroupPostsAutoImportVars._();

  factory GEnableGroupPostsAutoImportVars(
          [Function(GEnableGroupPostsAutoImportVarsBuilder b) updates]) =
      _$GEnableGroupPostsAutoImportVars;

  String get token;
  String get groupId;
  static Serializer<GEnableGroupPostsAutoImportVars> get serializer =>
      _$gEnableGroupPostsAutoImportVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEnableGroupPostsAutoImportVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEnableGroupPostsAutoImportVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEnableGroupPostsAutoImportVars.serializer,
        json,
      );
}

abstract class GGroupPostsAutoImportHintVars
    implements
        Built<GGroupPostsAutoImportHintVars,
            GGroupPostsAutoImportHintVarsBuilder> {
  GGroupPostsAutoImportHintVars._();

  factory GGroupPostsAutoImportHintVars(
          [Function(GGroupPostsAutoImportHintVarsBuilder b) updates]) =
      _$GGroupPostsAutoImportHintVars;

  static Serializer<GGroupPostsAutoImportHintVars> get serializer =>
      _$gGroupPostsAutoImportHintVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupPostsAutoImportHintVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGroupPostsAutoImportHintVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupPostsAutoImportHintVars.serializer,
        json,
      );
}
