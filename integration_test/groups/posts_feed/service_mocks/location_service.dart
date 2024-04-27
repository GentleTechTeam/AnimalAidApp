import 'package:animal_aid_app/common/services/location_service/location_service.dart';

const mockInitialLocationLabel = 'Initial';
const mockInitialLocationKey = 'initialLocationKey';

final initialLocationRestorationResult = LocationRestorationResult(
  status: LocationRestorationStatus.restored,
  location: Location(
    locationData: const LocationData(
      key: mockInitialLocationKey,
      label: mockInitialLocationLabel,
      keyType: 'MOCK_LOCATION_KEY_TYPE',
    ),
  ),
);
