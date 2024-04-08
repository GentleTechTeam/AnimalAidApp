// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'post_concern.data.gql.g.dart';

abstract class GReportPostConcernData
    implements Built<GReportPostConcernData, GReportPostConcernDataBuilder> {
  GReportPostConcernData._();

  factory GReportPostConcernData(
          [Function(GReportPostConcernDataBuilder b) updates]) =
      _$GReportPostConcernData;

  static void _initializeBuilder(GReportPostConcernDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get reportPostConcern;
  static Serializer<GReportPostConcernData> get serializer =>
      _$gReportPostConcernDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReportPostConcernData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportPostConcernData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReportPostConcernData.serializer,
        json,
      );
}
