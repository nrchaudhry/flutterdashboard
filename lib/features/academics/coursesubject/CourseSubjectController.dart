

import 'CourseSubjectService.dart';
import 'Coursesubject.dart';

class CoursesubjectController {
  static Future<List<Coursesubject>> coursesubjectGet() async {
    return await CoursesubjectService.get();
  }

  static Future<Coursesubject> coursesubjectGetOne(id) async {
    return await CoursesubjectService.getOne(id);
  }
}
