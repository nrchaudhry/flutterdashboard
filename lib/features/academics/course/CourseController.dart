

import 'Course.dart';
import 'CourseService.dart';

class CourseController {
  static Future<List<Course>> courseGet() async {
    return await CourseService.get();
  }

  static Future<Course> courseGetOne(id) async {
    return await CourseService.getOne(id);
  }
}
