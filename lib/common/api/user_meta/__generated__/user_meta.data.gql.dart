// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'user_meta.data.gql.g.dart';

abstract class GUserMetaData
    implements Built<GUserMetaData, GUserMetaDataBuilder> {
  GUserMetaData._();

  factory GUserMetaData([Function(GUserMetaDataBuilder b) updates]) =
      _$GUserMetaData;

  static void _initializeBuilder(GUserMetaDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserMetaData_userMeta get userMeta;
  static Serializer<GUserMetaData> get serializer => _$gUserMetaDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserMetaData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserMetaData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserMetaData.serializer,
        json,
      );
}

abstract class GUserMetaData_userMeta
    implements Built<GUserMetaData_userMeta, GUserMetaData_userMetaBuilder> {
  GUserMetaData_userMeta._();

  factory GUserMetaData_userMeta(
          [Function(GUserMetaData_userMetaBuilder b) updates]) =
      _$GUserMetaData_userMeta;

  static void _initializeBuilder(GUserMetaData_userMetaBuilder b) =>
      b..G__typename = 'UserMeta';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isAdmin;
  static Serializer<GUserMetaData_userMeta> get serializer =>
      _$gUserMetaDataUserMetaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserMetaData_userMeta.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserMetaData_userMeta? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserMetaData_userMeta.serializer,
        json,
      );
}
