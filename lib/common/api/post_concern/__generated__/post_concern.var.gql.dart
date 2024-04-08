// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post_concern.var.gql.g.dart';

abstract class GReportPostConcernVars
    implements Built<GReportPostConcernVars, GReportPostConcernVarsBuilder> {
  GReportPostConcernVars._();

  factory GReportPostConcernVars(
          [Function(GReportPostConcernVarsBuilder b) updates]) =
      _$GReportPostConcernVars;

  String get token;
  String get groupId;
  String get postId;
  static Serializer<GReportPostConcernVars> get serializer =>
      _$gReportPostConcernVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReportPostConcernVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportPostConcernVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReportPostConcernVars.serializer,
        json,
      );
}
