import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/state/location/location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LocationCubit extends Cubit<LocationState> {
  final _service = GetIt.I<LocationService>();

  LocationCubit() : super(LocationState.empty());

  Future<LocationRestorationStatus> initFromSavedData() async {
    final restoreLocationResult = await _service.restoreLocation();
    final restoredLocation = restoreLocationResult.location;

    switch (restoreLocationResult.status) {
      case LocationRestorationStatus.nothingToRestore:
      case LocationRestorationStatus.error:
        {
          emit(LocationState.initializedEmpty());

          return restoreLocationResult.status;
        }
      case LocationRestorationStatus.restored:
        {
          if (restoredLocation != null) {
            emit(LocationState.initializedWithData(location: restoredLocation));

            return restoreLocationResult.status;
          }
        }
    }

    emit(LocationState.initializedEmpty());

    return LocationRestorationStatus.error;
  }

  Future<void> getLocationByDeviceCoordinates({
    required VoidCallback onLocationObtainBegin,
    required VoidCallback onError,
    required ValueChanged<String> onLoadLocationLabel,
  }) async {
    final location = await _service.getLocationByDeviceCoordinates(
      onLocationObtainBegin: onLocationObtainBegin,
    );

    if (location == null) {
      onError();

      return;
    }

    await setLocation(location);
    onLoadLocationLabel(location.locationData.label);
  }

  Future<void> setLocation(Location location) async {
    await _service.saveLocation(location);
    emit(LocationState.initializedWithData(location: location));
  }

  Future<void> removeLocation() async {
    await _service.removeLocation();
    emit(LocationState.initializedEmpty());
  }
}
