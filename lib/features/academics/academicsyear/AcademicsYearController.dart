import 'AcademicsYear.dart';
import 'AcademicsYearService.dart';

class AcademicsyearController {
  static Future<List<Academicsyear>> academicsyearGet() async {
    return await AcademicsyearService.get();
  }

  static Future<Academicsyear> academicsyearGetOne(id) async {
    return await AcademicsyearService.getOne(id);
  }
}
