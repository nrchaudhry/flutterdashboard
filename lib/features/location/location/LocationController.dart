import 'Location.dart';
import 'LocationService.dart';

class LocationController {
  static Future<List<Location>> locationGet() async {
    return await LocationService.get();
  }

  static Future<Location> locationGetOne(id) async {
    return await LocationService.getOne(id);
  }
}