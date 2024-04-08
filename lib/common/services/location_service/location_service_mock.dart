import 'package:animal_aid_app/common/services/geo_position_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_persistent_state.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
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
    final locationData = LocationData(
      key: 'mock_key',
      keyType: 'mock_key_type',
      label: 'New York City',
    );

    return Location(
      coordinates: coordinates,
      locationData: locationData,
    );
  }

  @override
  Future<LocationSearchResult> searchLocations(String query) async {
    final normalizedData = [
      LocationData(
        key: 'mock_key_1',
        keyType: 'mock_key_type_1',
        label: 'mock_label_1',
      ),
      LocationData(
        key: 'mock_key_2',
        keyType: 'mock_key_type_2',
        label: 'mock_label_2',
      ),
    ].toBuiltList();

    return LocationSearchResult(locations: normalizedData);
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
        locationData: LocationData(
          key: 'mock_key',
          keyType: 'mock_key_type',
          label: 'New York City',
        ),
      ),
    );
  }
}
