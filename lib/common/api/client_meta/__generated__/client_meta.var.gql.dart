// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'client_meta.var.gql.g.dart';

abstract class GClientMetaVars
    implements Built<GClientMetaVars, GClientMetaVarsBuilder> {
  GClientMetaVars._();

  factory GClientMetaVars([Function(GClientMetaVarsBuilder b) updates]) =
      _$GClientMetaVars;

  String get appVersion;
  static Serializer<GClientMetaVars> get serializer =>
      _$gClientMetaVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GClientMetaVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GClientMetaVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GClientMetaVars.serializer,
        json,
      );
}
