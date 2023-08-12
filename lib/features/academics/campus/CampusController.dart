

import 'Campus.dart';
import 'CampusService.dart';

class CampusController {
  static Future<List<Campus>> campusGet() async {
    return await CampusService.get();
  }

  static Future<Campus> campusGetOne(id) async {
    return await CampusService.getOne(id);
  }
}
