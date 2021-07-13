import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  // Location({this.longitude, this.latitude});
  double longitude;
  double latitude;

  Future<void> getCurrentPosition()async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this.longitude = position.longitude;
      this.latitude = position.latitude;
    }catch(e){
      print(e);
    }
  }


}