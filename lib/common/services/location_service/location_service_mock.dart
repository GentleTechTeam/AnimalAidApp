import 'package:animal_aid_app/common/services/geo_position_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_persistent_state.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/services/location_service/mock_locations.dart';
import 'package:built_collection/built_collection.dart';

class LocationServiceMock extends LocationService {
  final LocationPersistentState _locationPersistentState =
      LocationPersistentState();
  @override
  Future<Location?> getLocationByDeviceCoordinates({
    required void Function() onLocationObtainBegin,
  }) async {
    final position = await GeoPositionService.getPositionData(
      onLocationObtainBegin: onLocationObtainBegin,
    );

    if (position == null) {
      return null;
    }

    final coordinates = Coordinates(
      longitude: position.longitude,
      latitude: position.latitude,
    );
    final localLocations = List<LocationData>.from(mockLocations);

    final locationData = localLocations.first;

    return Location(
      coordinates: coordinates,
      locationData: locationData,
    );
  }

  @override
  Future<LocationSearchResult> searchLocations(String query) async {
    final matchedResults = mockLocations
        .where((mockLocation) =>
            mockLocation.label.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return LocationSearchResult(locations: matchedResults.toBuiltList());
  }

  @override
  Future<LocationRestorationResult> restoreLocation() async {
    final savedLocation = await _locationPersistentState.load;
    if (savedLocation == null) {
      return LocationRestorationResult(
        status: LocationRestorationStatus.nothingToRestore,
      );
    }

    return LocationRestorationResult(
      status: LocationRestorationStatus.restored,
      location: Location(
        coordinates: Coordinates(
          longitude: 0,
          latitude: 0,
        ),
        locationData: const LocationData(
          key: 'mock_key',
          keyType: 'mock_key_type',
          label: 'New York City',
        ),
      ),
    );
  }
}
