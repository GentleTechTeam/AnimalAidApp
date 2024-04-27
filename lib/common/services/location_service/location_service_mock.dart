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
    final localLocations = List<LocationData>.from(_Mocks.locations);

    final locationData = localLocations.first;

    return Location(
      coordinates: coordinates,
      locationData: locationData,
    );
  }

  @override
  Future<LocationSearchResult> searchLocations(String query) async {
    final matchedResults = _Mocks.locations
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

abstract class _Mocks {
  static const locations = [
    LocationData(
      key: 'nyc',
      keyType: 'mock_key_type',
      label: 'New York, NY',
    ),
    LocationData(
      key: 'la',
      keyType: 'mock_key_type',
      label: 'Los Angeles, CA',
    ),
    LocationData(
      key: 'chi',
      keyType: 'mock_key_type',
      label: 'Chicago, IL',
    ),
    LocationData(
      key: 'hou',
      keyType: 'mock_key_type',
      label: 'Houston, TX',
    ),
    LocationData(
      key: 'phx',
      keyType: 'mock_key_type',
      label: 'Phoenix, AZ',
    ),
    LocationData(
      key: 'phi',
      keyType: 'mock_key_type',
      label: 'Philadelphia, PA',
    ),
    LocationData(
      key: 'sa',
      keyType: 'mock_key_type',
      label: 'San Antonio, TX',
    ),
    LocationData(
      key: 'sd',
      keyType: 'mock_key_type',
      label: 'San Diego, CA',
    ),
    LocationData(
      key: 'dal',
      keyType: 'mock_key_type',
      label: 'Dallas, TX',
    ),
    LocationData(
      key: 'sj',
      keyType: 'mock_key_type',
      label: 'San Jose, CA',
    ),
    LocationData(
      key: 'aus',
      keyType: 'mock_key_type',
      label: 'Austin, TX',
    ),
    LocationData(
      key: 'jax',
      keyType: 'mock_key_type',
      label: 'Jacksonville, FL',
    ),
    LocationData(
      key: 'fw',
      keyType: 'mock_key_type',
      label: 'Fort Worth, TX',
    ),
    LocationData(
      key: 'col',
      keyType: 'mock_key_type',
      label: 'Columbus, OH',
    ),
    LocationData(
      key: 'cha',
      keyType: 'mock_key_type',
      label: 'Charlotte, NC',
    ),
    LocationData(
      key: 'sf',
      keyType: 'mock_key_type',
      label: 'San Francisco, CA',
    ),
    LocationData(
      key: 'ind',
      keyType: 'mock_key_type',
      label: 'Indianapolis, IN',
    ),
    LocationData(
      key: 'sea',
      keyType: 'mock_key_type',
      label: 'Seattle, WA',
    ),
    LocationData(
      key: 'den',
      keyType: 'mock_key_type',
      label: 'Denver, CO',
    ),
    LocationData(
      key: 'dc',
      keyType: 'mock_key_type',
      label: 'Washington, DC',
    ),
    LocationData(
      key: 'bos',
      keyType: 'mock_key_type',
      label: 'Boston, MA',
    ),
    LocationData(
      key: 'ep',
      keyType: 'mock_key_type',
      label: 'El Paso, TX',
    ),
    LocationData(
      key: 'det',
      keyType: 'mock_key_type',
      label: 'Detroit, MI',
    ),
    LocationData(
      key: 'nas',
      keyType: 'mock_key_type',
      label: 'Nashville, TN',
    ),
    LocationData(
      key: 'por',
      keyType: 'mock_key_type',
      label: 'Portland, OR',
    ),
    LocationData(
      key: 'mem',
      keyType: 'mock_key_type',
      label: 'Memphis, TN',
    ),
    LocationData(
      key: 'okc',
      keyType: 'mock_key_type',
      label: 'Oklahoma City, OK',
    ),
    LocationData(
      key: 'lv',
      keyType: 'mock_key_type',
      label: 'Las Vegas, NV',
    ),
    LocationData(
      key: 'lou',
      keyType: 'mock_key_type',
      label: 'Louisville, KY',
    ),
    LocationData(
      key: 'bal',
      keyType: 'mock_key_type',
      label: 'Baltimore, MD',
    ),
    LocationData(
      key: 'mil',
      keyType: 'mock_key_type',
      label: 'Milwaukee, WI',
    ),
    LocationData(
      key: 'abq',
      keyType: 'mock_key_type',
      label: 'Albuquerque, NM',
    ),
    LocationData(
      key: 'tuc',
      keyType: 'mock_key_type',
      label: 'Tucson, AZ',
    ),
    LocationData(
      key: 'fre',
      keyType: 'mock_key_type',
      label: 'Fresno, CA',
    ),
    LocationData(
      key: 'mes',
      keyType: 'mock_key_type',
      label: 'Mesa, AZ',
    ),
    LocationData(
      key: 'sac',
      keyType: 'mock_key_type',
      label: 'Sacramento, CA',
    ),
    LocationData(
      key: 'atl',
      keyType: 'mock_key_type',
      label: 'Atlanta, GA',
    ),
    LocationData(
      key: 'kc',
      keyType: 'mock_key_type',
      label: 'Kansas City, MO',
    ),
    LocationData(
      key: 'cos',
      keyType: 'mock_key_type',
      label: 'Colorado Springs, CO',
    ),
    LocationData(
      key: 'mia',
      keyType: 'mock_key_type',
      label: 'Miami, FL',
    ),
    LocationData(
      key: 'ral',
      keyType: 'mock_key_type',
      label: 'Raleigh, NC',
    ),
    LocationData(
      key: 'oma',
      keyType: 'mock_key_type',
      label: 'Omaha, NE',
    ),
    LocationData(
      key: 'lb',
      keyType: 'mock_key_type',
      label: 'Long Beach, CA',
    ),
    LocationData(
      key: 'vb',
      keyType: 'mock_key_type',
      label: 'Virginia Beach, VA',
    ),
    LocationData(
      key: 'oak',
      keyType: 'mock_key_type',
      label: 'Oakland, CA',
    ),
    LocationData(
      key: 'min',
      keyType: 'mock_key_type',
      label: 'Minneapolis, MN',
    ),
    LocationData(
      key: 'tul',
      keyType: 'mock_key_type',
      label: 'Tulsa, OK',
    ),
    LocationData(
      key: 'ar',
      keyType: 'mock_key_type',
      label: 'Arlington, TX',
    ),
    LocationData(
      key: 'tam',
      keyType: 'mock_key_type',
      label: 'Tampa, FL',
    ),
    LocationData(
      key: 'no',
      keyType: 'mock_key_type',
      label: 'New Orleans, LA',
    ),
    LocationData(
      key: 'wic',
      keyType: 'mock_key_type',
      label: 'Wichita, KS',
    ),
    LocationData(
      key: 'cle',
      keyType: 'mock_key_type',
      label: 'Cleveland, OH',
    ),
    LocationData(
      key: 'bak',
      keyType: 'mock_key_type',
      label: 'Bakersfield, CA',
    ),
    LocationData(
      key: 'aur',
      keyType: 'mock_key_type',
      label: 'Aurora, CO',
    ),
    LocationData(
      key: 'ana',
      keyType: 'mock_key_type',
      label: 'Anaheim, CA',
    ),
    LocationData(
      key: 'hon',
      keyType: 'mock_key_type',
      label: 'Honolulu, HI',
    ),
    LocationData(
      key: 'sa',
      keyType: 'mock_key_type',
      label: 'Santa Ana, CA',
    ),
    LocationData(
      key: 'riv',
      keyType: 'mock_key_type',
      label: 'Riverside, CA',
    ),
    LocationData(
      key: 'cc',
      keyType: 'mock_key_type',
      label: 'Corpus Christi, TX',
    ),
  ];
}
