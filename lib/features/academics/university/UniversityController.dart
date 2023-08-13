import 'University.dart';
import 'UniversityService.dart';

class UniversityController {
  static Future<List<University>> universityGet() async {
    return await UniversityService.get();
  }

  static Future<University> universityGetOne(id) async {
    return await UniversityService.getOne(id);
  }
}
