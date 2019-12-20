
import 'package:mobilsharelocation/locator.dart';
import 'package:mobilsharelocation/models/location.dart';
import 'package:mobilsharelocation/services/location_base.dart';
import 'package:mobilsharelocation/services/location_service.dart';

enum AppMode { DEBUG,RELEASE}

class LocationRepository implements LocationBase{

  AppMode _appMode=AppMode.RELEASE;

  LocationService _locationService=locator<LocationService>();

  @override
  Future<Location> getLocation() async{
    if(_appMode==AppMode.RELEASE){
      return await _locationService.getLocation();
    }
    else{
      return null;
    }
  }

}