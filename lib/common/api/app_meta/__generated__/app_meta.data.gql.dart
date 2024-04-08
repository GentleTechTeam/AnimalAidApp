// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'app_meta.data.gql.g.dart';

abstract class GAppMetaData
    implements Built<GAppMetaData, GAppMetaDataBuilder> {
  GAppMetaData._();

  factory GAppMetaData([Function(GAppMetaDataBuilder b) updates]) =
      _$GAppMetaData;

  static void _initializeBuilder(GAppMetaDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAppMetaData_appMeta get appMeta;
  static Serializer<GAppMetaData> get serializer => _$gAppMetaDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppMetaData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppMetaData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppMetaData.serializer,
        json,
      );
}

abstract class GAppMetaData_appMeta
    implements Built<GAppMetaData_appMeta, GAppMetaData_appMetaBuilder> {
  GAppMetaData_appMeta._();

  factory GAppMetaData_appMeta(
          [Function(GAppMetaData_appMetaBuilder b) updates]) =
      _$GAppMetaData_appMeta;

  static void _initializeBuilder(GAppMetaData_appMetaBuilder b) =>
      b..G__typename = 'AppMeta';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get privacyPolicyUrl;
  String get supportEmail;
  static Serializer<GAppMetaData_appMeta> get serializer =>
      _$gAppMetaDataAppMetaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppMetaData_appMeta.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppMetaData_appMeta? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppMetaData_appMeta.serializer,
        json,
      );
}
