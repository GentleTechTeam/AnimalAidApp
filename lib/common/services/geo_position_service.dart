import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

bool _isAllowedToUseLocation(LocationPermission permission) =>
    permission == LocationPermission.whileInUse ||
    permission == LocationPermission.always;

class GeoPositionService {
  static Future<bool> hasAccessToLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    final permission = await Geolocator.checkPermission();

    return _isAllowedToUseLocation(permission) && serviceEnabled;
  }

  static Future<bool> requestPermissions() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    final hasAccessToLocation = await GeoPositionService.hasAccessToLocation();
    if (hasAccessToLocation) {
      return true;
    }

    final permission = await Geolocator.requestPermission();
    if (_isAllowedToUseLocation(permission)) {
      return true;
    }

    return false;
  }

  // Returns null if location could not be obtained.
  static Future<Position?> getPositionData({
    VoidCallback? onLocationObtainBegin,
  }) async {
    final canUseLocation = await requestPermissions();
    if (!canUseLocation) {
      return null;
    }

    onLocationObtainBegin?.call();
    try {
      return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      return null;
    }
  }

  static void openLocationSettings() => Geolocator.openLocationSettings();
}
