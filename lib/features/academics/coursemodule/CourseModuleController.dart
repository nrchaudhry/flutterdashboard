

import 'CourseModuleService.dart';
import 'Coursemodule.dart';

class CoursemoduleController {
  static Future<List<Coursemodule>> coursemoduleGet() async {
    return await CoursemoduleService.get();
  }

  static Future<Coursemodule> coursemoduleGetOne(id) async {
    return await CoursemoduleService.getOne(id);
  }
}
