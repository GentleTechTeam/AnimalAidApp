import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_double_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_string_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/shared_preferences_wrapper.dart';

class LocationPersistentState {
  final SharedPreferencesWrapper<SharedPreferencesDoubleValue> _longitudeData =
      SharedPreferencesWrapper(preferencesKey: 'lps_longitude');
  final SharedPreferencesWrapper<SharedPreferencesDoubleValue> _latitudeData =
      SharedPreferencesWrapper(preferencesKey: 'lps_latitude');
  final SharedPreferencesWrapper<SharedPreferencesStringValue>
      _locationKeyData =
      SharedPreferencesWrapper(preferencesKey: 'lps_locationKey');
  final SharedPreferencesWrapper<SharedPreferencesStringValue>
      _locationLabelData =
      SharedPreferencesWrapper(preferencesKey: 'lps_locationLabel');
  final SharedPreferencesWrapper<SharedPreferencesStringValue>
      _locationKeyTypeData =
      SharedPreferencesWrapper(preferencesKey: 'lps_locationKeyType');

  Future<Location?> get load async => _readSavedData();

  Future<void> save(Location location) async {
    final coordinates = location.coordinates;
    if (coordinates != null) {
      await _longitudeData
          .saveData(SharedPreferencesDoubleValue(coordinates.longitude));
      await _latitudeData
          .saveData(SharedPreferencesDoubleValue(coordinates.latitude));
    }
    await _locationKeyData
        .saveData(SharedPreferencesStringValue(location.locationData.key));
    await _locationLabelData
        .saveData(SharedPreferencesStringValue(location.locationData.label));
    await _locationKeyTypeData
        .saveData(SharedPreferencesStringValue(location.locationData.keyType));
  }

  Future<void> remove() async {
    await _longitudeData.remove();
    await _latitudeData.remove();
    await _locationKeyData.remove();
    await _locationLabelData.remove();
    await _locationKeyTypeData.remove();
  }

  Future<Location?> _readSavedData() async {
    final locationData = await _readLocationSavedData();
    if (locationData == null) {
      return null;
    }
    final coordinates = await _readCoordinatesSavedData();

    return Location(coordinates: coordinates, locationData: locationData);
  }

  Future<Coordinates?> _readCoordinatesSavedData() async {
    final longitude = await _longitudeData.data;
    final latitude = await _latitudeData.data;
    if (longitude == null || latitude == null) {
      return null;
    }

    return Coordinates(latitude: latitude.value, longitude: longitude.value);
  }

  Future<LocationData?> _readLocationSavedData() async {
    final locationKey = await _locationKeyData.data;
    final locationLabel = await _locationLabelData.data;
    final locationKeyType = await _locationKeyTypeData.data;
    if (locationKey == null ||
        locationLabel == null ||
        locationKeyType == null) {
      return null;
    }

    return LocationData(
      key: locationKey.value,
      keyType: locationKeyType.value,
      label: locationLabel.value,
    );
  }
}
