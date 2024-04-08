// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'main_tag_group.var.gql.g.dart';

abstract class GMainTagGroupsVars
    implements Built<GMainTagGroupsVars, GMainTagGroupsVarsBuilder> {
  GMainTagGroupsVars._();

  factory GMainTagGroupsVars([Function(GMainTagGroupsVarsBuilder b) updates]) =
      _$GMainTagGroupsVars;

  static Serializer<GMainTagGroupsVars> get serializer =>
      _$gMainTagGroupsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainTagGroupsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMainTagGroupsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainTagGroupsVars.serializer,
        json,
      );
}
