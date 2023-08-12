

import 'Building.dart';
import 'BuildingService.dart';

class BuildingController {
  static Future<List<Building>> academicsyearGet() async {
    return await BuildingService.get();
  }

  static Future<Building> academicsyearGetOne(id) async {
    return await BuildingService.getOne(id);
  }
}
