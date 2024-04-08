// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post.var.gql.g.dart';

abstract class GPostsFeedVars
    implements Built<GPostsFeedVars, GPostsFeedVarsBuilder> {
  GPostsFeedVars._();

  factory GPostsFeedVars([Function(GPostsFeedVarsBuilder b) updates]) =
      _$GPostsFeedVars;

  BuiltList<String>? get tagGroupIds;
  BuiltList<String>? get tagKeys;
  String get fromDate;
  String? get locationKey;
  static Serializer<GPostsFeedVars> get serializer =>
      _$gPostsFeedVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsFeedVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostsFeedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsFeedVars.serializer,
        json,
      );
}
