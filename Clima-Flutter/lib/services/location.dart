import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

// ignore: camel_case_types
class Location {
  double latitudeOfMap;
  double longitudeOfMap;
//  Location({@required this.latitudeOfMap,@required this.longitudeOfMap});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitudeOfMap = position.latitude;
      longitudeOfMap = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
