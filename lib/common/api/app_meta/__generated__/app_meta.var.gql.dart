// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'app_meta.var.gql.g.dart';

abstract class GAppMetaVars
    implements Built<GAppMetaVars, GAppMetaVarsBuilder> {
  GAppMetaVars._();

  factory GAppMetaVars([Function(GAppMetaVarsBuilder b) updates]) =
      _$GAppMetaVars;

  static Serializer<GAppMetaVars> get serializer => _$gAppMetaVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppMetaVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppMetaVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppMetaVars.serializer,
        json,
      );
}
