import 'package:animal_aid_app/common/services/location_service/location_service.dart';

class LocationState {
  final Location? location;
  final bool initialized;

  LocationState({
    this.location,
    required this.initialized,
  });

  factory LocationState.empty() => LocationState(
        initialized: false,
      );

  factory LocationState.initializedWithData({
    required Location location,
  }) =>
      LocationState(
        initialized: true,
        location: location,
      );

  factory LocationState.initializedEmpty() => LocationState(
        initialized: true,
      );

  bool get hasData => location != null;
}
