

import 'Institute.dart';
import 'InstituteService.dart';

class InstituteController {
  static Future<List<Institute>> instituteGet() async {
    return await InstituteService.get();
  }

  static Future<Institute> instituteGetOne(id) async {
    return await InstituteService.getOne(id);
  }
}
