import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:mockito/mockito.dart';

class LocationServiceMock extends Mock implements LocationService {
  final _locationService = LocationService();

  @override
  Future<LocationSearchResult> searchLocations(String query) =>
      _locationService.searchLocations(query);

  @override
  Future<LocationRestorationResult> restoreLocation() => super.noSuchMethod(
        Invocation.method(#restoreLocation, []),
        returnValue: Future.value(
            LocationRestorationResult(status: LocationRestorationStatus.error)),
      ) as Future<LocationRestorationResult>;

  @override
  Future<void> saveLocation(Location? location) => super.noSuchMethod(
        Invocation.method(#saveLocation, [location]),
        returnValue: Future<void>.value(),
      ) as Future<void>;
}
