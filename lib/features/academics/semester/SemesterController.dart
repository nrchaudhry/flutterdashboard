import 'Semester.dart';
import 'SemesterService.dart';

class SemesterController {
  static Future<List<Semester>> semesterGet() async {
    return await SemesterService.get();
  }

  static Future<Semester> semesterGetOne(id) async {
    return await SemesterService.getOne(id);
  }
}
