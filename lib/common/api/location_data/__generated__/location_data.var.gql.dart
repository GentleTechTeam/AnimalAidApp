// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    as _i2;

part 'location_data.var.gql.g.dart';

abstract class GGenerateLocationDataVars
    implements
        Built<GGenerateLocationDataVars, GGenerateLocationDataVarsBuilder> {
  GGenerateLocationDataVars._();

  factory GGenerateLocationDataVars(
          [Function(GGenerateLocationDataVarsBuilder b) updates]) =
      _$GGenerateLocationDataVars;

  double get lat;
  double get lon;
  static Serializer<GGenerateLocationDataVars> get serializer =>
      _$gGenerateLocationDataVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenerateLocationDataVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGenerateLocationDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenerateLocationDataVars.serializer,
        json,
      );
}

abstract class GRefreshLocationDataVars
    implements
        Built<GRefreshLocationDataVars, GRefreshLocationDataVarsBuilder> {
  GRefreshLocationDataVars._();

  factory GRefreshLocationDataVars(
          [Function(GRefreshLocationDataVarsBuilder b) updates]) =
      _$GRefreshLocationDataVars;

  _i2.GGeoPositionInput? get position;
  _i2.GLocationDataInput get currentLocationData;
  static Serializer<GRefreshLocationDataVars> get serializer =>
      _$gRefreshLocationDataVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshLocationDataVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRefreshLocationDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshLocationDataVars.serializer,
        json,
      );
}

abstract class GSearchLocationsVars
    implements Built<GSearchLocationsVars, GSearchLocationsVarsBuilder> {
  GSearchLocationsVars._();

  factory GSearchLocationsVars(
          [Function(GSearchLocationsVarsBuilder b) updates]) =
      _$GSearchLocationsVars;

  String get query;
  static Serializer<GSearchLocationsVars> get serializer =>
      _$gSearchLocationsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchLocationsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchLocationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchLocationsVars.serializer,
        json,
      );
}
