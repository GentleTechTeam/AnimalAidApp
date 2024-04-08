// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post.var.gql.g.dart';

abstract class GPostVars implements Built<GPostVars, GPostVarsBuilder> {
  GPostVars._();

  factory GPostVars([Function(GPostVarsBuilder b) updates]) = _$GPostVars;

  String get groupId;
  String get postId;
  static Serializer<GPostVars> get serializer => _$gPostVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostVars.serializer,
        json,
      );
}
