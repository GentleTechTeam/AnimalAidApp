// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'user_meta.var.gql.g.dart';

abstract class GUserMetaVars
    implements Built<GUserMetaVars, GUserMetaVarsBuilder> {
  GUserMetaVars._();

  factory GUserMetaVars([Function(GUserMetaVarsBuilder b) updates]) =
      _$GUserMetaVars;

  String get token;
  static Serializer<GUserMetaVars> get serializer => _$gUserMetaVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserMetaVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserMetaVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserMetaVars.serializer,
        json,
      );
}
