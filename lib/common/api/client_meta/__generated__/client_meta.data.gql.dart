// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'client_meta.data.gql.g.dart';

abstract class GClientMetaData
    implements Built<GClientMetaData, GClientMetaDataBuilder> {
  GClientMetaData._();

  factory GClientMetaData([Function(GClientMetaDataBuilder b) updates]) =
      _$GClientMetaData;

  static void _initializeBuilder(GClientMetaDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GClientMetaData_mobileClientMeta get mobileClientMeta;
  static Serializer<GClientMetaData> get serializer =>
      _$gClientMetaDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GClientMetaData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GClientMetaData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GClientMetaData.serializer,
        json,
      );
}

abstract class GClientMetaData_mobileClientMeta
    implements
        Built<GClientMetaData_mobileClientMeta,
            GClientMetaData_mobileClientMetaBuilder> {
  GClientMetaData_mobileClientMeta._();

  factory GClientMetaData_mobileClientMeta(
          [Function(GClientMetaData_mobileClientMetaBuilder b) updates]) =
      _$GClientMetaData_mobileClientMeta;

  static void _initializeBuilder(GClientMetaData_mobileClientMetaBuilder b) =>
      b..G__typename = 'MobileClientMeta';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isActual;
  String get clientUpdateUrlIos;
  String get clientUpdateUrlAndroid;
  static Serializer<GClientMetaData_mobileClientMeta> get serializer =>
      _$gClientMetaDataMobileClientMetaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GClientMetaData_mobileClientMeta.serializer,
        this,
      ) as Map<String, dynamic>);
  static GClientMetaData_mobileClientMeta? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GClientMetaData_mobileClientMeta.serializer,
        json,
      );
}
