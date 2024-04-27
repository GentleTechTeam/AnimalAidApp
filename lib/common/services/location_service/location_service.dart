import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/services/geo_position_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_persistent_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class LocationService {
  final LocationPersistentState _locationPersistentState =
      LocationPersistentState();
  final Client _gqlClient = GetIt.I<Client>();

  Future<LocationRestorationResult> restoreLocation() async {
    final savedLocation = await _locationPersistentState.load;
    if (savedLocation == null) {
      return LocationRestorationResult(
        status: LocationRestorationStatus.nothingToRestore,
      );
    }

    final refreshedLocation =
        await _refreshLocation(savedLocation: savedLocation);

    if (refreshedLocation == null) {
      return LocationRestorationResult(status: LocationRestorationStatus.error);
    }

    return LocationRestorationResult(
      status: LocationRestorationStatus.restored,
      location: refreshedLocation,
    );
  }

  Future<Location?> getLocationByDeviceCoordinates({
    required void Function() onLocationObtainBegin,
  }) async {
    final position = await GeoPositionService.getPositionData(
      onLocationObtainBegin: onLocationObtainBegin,
    );

    if (position == null) {
      return null;
    }

    final locationDataReq = GGenerateLocationDataReq((b) => b
      ..fetchPolicy = FetchPolicy.NoCache
      ..vars.lat = position.latitude
      ..vars.lon = position.longitude);

    final res = await _gqlClient.request(locationDataReq).first;
    final responseData = res.data;

    if (res.hasErrors || responseData == null) {
      return null;
    }

    final locationDataRes = responseData.locationData;

    final coordinates = Coordinates(
      longitude: position.longitude,
      latitude: position.latitude,
    );
    final locationData = LocationData(
      key: locationDataRes.key,
      keyType: locationDataRes.keyType,
      label: locationDataRes.label,
    );

    return Location(
      coordinates: coordinates,
      locationData: locationData,
    );
  }

  Future<void> saveLocation(Location location) async {
    await _locationPersistentState.save(location);
  }

  Future<void> removeLocation() async {
    await _locationPersistentState.remove();
  }

  Future<LocationSearchResult> searchLocations(String query) async {
    final request = GSearchLocationsReq((b) => b
      ..fetchPolicy = FetchPolicy.NoCache
      ..vars.query = query);

    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return LocationSearchResult(failed: true);
    }

    final normalizedData = responseData.locations
        .map((location) => LocationData(
              key: location.key,
              label: location.label,
              keyType: location.keyType,
            ))
        .toBuiltList();

    return LocationSearchResult(locations: normalizedData);
  }

  Future<Location?> _refreshLocation({
    required Location savedLocation,
  }) async {
    final req = GRefreshLocationDataReq((b) {
      final savedCoordinates = savedLocation.coordinates;
      if (savedCoordinates != null) {
        b.vars.position = GGeoPositionInput((b) => b
          ..latitude = savedCoordinates.latitude
          ..longitude = savedCoordinates.longitude).toBuilder();
      }
      b
        ..fetchPolicy = FetchPolicy.NoCache
        ..vars.currentLocationData = GLocationDataInput((b) => b
          ..key = savedLocation.locationData.key
          ..keyType = savedLocation.locationData.keyType
          ..label = savedLocation.locationData.label).toBuilder();
    });
    final refreshLocationDataRes = await _gqlClient.request(req).first;
    final refreshedData = refreshLocationDataRes.data?.refreshedLocationData;

    if (refreshLocationDataRes.hasErrors || refreshedData == null) {
      return null;
    }

    final refreshedLocationData = LocationData(
      key: refreshedData.key,
      keyType: refreshedData.keyType,
      label: refreshedData.label,
    );

    return Location(
      coordinates: savedLocation.coordinates,
      locationData: refreshedLocationData,
    );
  }
}

class LocationRestorationResult {
  final LocationRestorationStatus status;
  final Location? location;

  LocationRestorationResult({
    required this.status,
    this.location,
  });
}

enum LocationRestorationStatus {
  nothingToRestore,
  restored,
  error,
}

class LocationSearchResult {
  final BuiltList<LocationData> locations;
  final bool failed;

  LocationSearchResult({
    BuiltList<LocationData>? locations,
    this.failed = false,
  }) : locations = locations ?? BuiltList();
}

class Location {
  final Coordinates? coordinates;
  final LocationData locationData;

  Location({
    this.coordinates,
    required this.locationData,
  });
}

class LocationData {
  final String key;
  final String keyType;
  final String label;

  const LocationData({
    required this.key,
    required this.keyType,
    required this.label,
  });
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });
}
