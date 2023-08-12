

import 'IntakeCourseService.dart';
import 'Intakecourse.dart';

class IntakecourseController {
  static Future<List<Intakecourse>> intakecourseGet() async {
    return await IntakecourseService.get();
  }

  static Future<Intakecourse> intakecourseGetOne(id) async {
    return await IntakecourseService.getOne(id);
  }
}
