import 'FitnessCourseService.dart';
import 'Fitnesscourse.dart';

class FitnesscourseController {
  static Future<List<Fitnesscourse>> fitnesscourseGet() async {
    return await FitnesscourseService.get();
  }

  static Future<Fitnesscourse> fitnesscourseGetOne(id) async {
    return await FitnesscourseService.getOne(id);
  }
}
