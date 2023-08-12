

import 'College.dart';
import 'CollegeService.dart';

class CollegeController {
  static Future<List<College>> collegeGet() async {
    return await CollegeService.get();
  }

  static Future<College> collegeGetOne(id) async {
    return await CollegeService.getOne(id);
  }
}
