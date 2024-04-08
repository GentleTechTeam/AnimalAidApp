import 'package:animal_aid_app/common/state/location/location_state.dart';

String? extractLocationKey(LocationState state) {
  final locationData = state.location?.locationData;
  if (locationData == null) {
    return null;
  }

  return locationData.key;
}
