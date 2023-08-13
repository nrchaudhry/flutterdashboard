

import 'Qualification.dart';
import 'QualificationService.dart';

class QualificationController {
  static Future<List<Qualification>> qualificationGet() async {
    return await QualificationService.get();
  }

  static Future<Qualification> qualificationGetOne(id) async {
    return await QualificationService.getOne(id);
  }
}
