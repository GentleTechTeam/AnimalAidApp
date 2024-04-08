// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/serializers.gql.dart'
    as _i1;

part 'location_data.data.gql.g.dart';

abstract class GGenerateLocationDataData
    implements
        Built<GGenerateLocationDataData, GGenerateLocationDataDataBuilder> {
  GGenerateLocationDataData._();

  factory GGenerateLocationDataData(
          [Function(GGenerateLocationDataDataBuilder b) updates]) =
      _$GGenerateLocationDataData;

  static void _initializeBuilder(GGenerateLocationDataDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGenerateLocationDataData_locationData get locationData;
  static Serializer<GGenerateLocationDataData> get serializer =>
      _$gGenerateLocationDataDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenerateLocationDataData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGenerateLocationDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenerateLocationDataData.serializer,
        json,
      );
}

abstract class GGenerateLocationDataData_locationData
    implements
        Built<GGenerateLocationDataData_locationData,
            GGenerateLocationDataData_locationDataBuilder> {
  GGenerateLocationDataData_locationData._();

  factory GGenerateLocationDataData_locationData(
          [Function(GGenerateLocationDataData_locationDataBuilder b) updates]) =
      _$GGenerateLocationDataData_locationData;

  static void _initializeBuilder(
          GGenerateLocationDataData_locationDataBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get key;
  String get label;
  String get keyType;
  static Serializer<GGenerateLocationDataData_locationData> get serializer =>
      _$gGenerateLocationDataDataLocationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenerateLocationDataData_locationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGenerateLocationDataData_locationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenerateLocationDataData_locationData.serializer,
        json,
      );
}

abstract class GRefreshLocationDataData
    implements
        Built<GRefreshLocationDataData, GRefreshLocationDataDataBuilder> {
  GRefreshLocationDataData._();

  factory GRefreshLocationDataData(
          [Function(GRefreshLocationDataDataBuilder b) updates]) =
      _$GRefreshLocationDataData;

  static void _initializeBuilder(GRefreshLocationDataDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRefreshLocationDataData_refreshedLocationData? get refreshedLocationData;
  static Serializer<GRefreshLocationDataData> get serializer =>
      _$gRefreshLocationDataDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshLocationDataData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRefreshLocationDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshLocationDataData.serializer,
        json,
      );
}

abstract class GRefreshLocationDataData_refreshedLocationData
    implements
        Built<GRefreshLocationDataData_refreshedLocationData,
            GRefreshLocationDataData_refreshedLocationDataBuilder> {
  GRefreshLocationDataData_refreshedLocationData._();

  factory GRefreshLocationDataData_refreshedLocationData(
      [Function(GRefreshLocationDataData_refreshedLocationDataBuilder b)
          updates]) = _$GRefreshLocationDataData_refreshedLocationData;

  static void _initializeBuilder(
          GRefreshLocationDataData_refreshedLocationDataBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get key;
  String get label;
  String get keyType;
  static Serializer<GRefreshLocationDataData_refreshedLocationData>
      get serializer =>
          _$gRefreshLocationDataDataRefreshedLocationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshLocationDataData_refreshedLocationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GRefreshLocationDataData_refreshedLocationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshLocationDataData_refreshedLocationData.serializer,
        json,
      );
}

abstract class GSearchLocationsData
    implements Built<GSearchLocationsData, GSearchLocationsDataBuilder> {
  GSearchLocationsData._();

  factory GSearchLocationsData(
          [Function(GSearchLocationsDataBuilder b) updates]) =
      _$GSearchLocationsData;

  static void _initializeBuilder(GSearchLocationsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchLocationsData_locations> get locations;
  static Serializer<GSearchLocationsData> get serializer =>
      _$gSearchLocationsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchLocationsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchLocationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchLocationsData.serializer,
        json,
      );
}

abstract class GSearchLocationsData_locations
    implements
        Built<GSearchLocationsData_locations,
            GSearchLocationsData_locationsBuilder> {
  GSearchLocationsData_locations._();

  factory GSearchLocationsData_locations(
          [Function(GSearchLocationsData_locationsBuilder b) updates]) =
      _$GSearchLocationsData_locations;

  static void _initializeBuilder(GSearchLocationsData_locationsBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get key;
  String get keyType;
  String get label;
  static Serializer<GSearchLocationsData_locations> get serializer =>
      _$gSearchLocationsDataLocationsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchLocationsData_locations.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchLocationsData_locations? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchLocationsData_locations.serializer,
        json,
      );
}
