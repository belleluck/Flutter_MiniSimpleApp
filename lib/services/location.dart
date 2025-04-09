import 'package:geolocator/geolocator.dart';
import 'package:flutter/foundation.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {

      final settings = LocationSettings(
        accuracy: LocationAccuracy.low,
      );

      Position position = await Geolocator
          .getCurrentPosition(locationSettings: settings,);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
