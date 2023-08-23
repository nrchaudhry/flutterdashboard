import 'Building.dart';
import 'BuildingService.dart';

class BuildingController {
  static Future<List<Building>> buildingGet() async {
    return await BuildingService.get();
  }

  static Future<Building> buildingGetOne(id) async {
    return await BuildingService.getOne(id);
  }
}
