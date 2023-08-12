

import 'ModuleAssessmentCriteriaService.dart';
import 'Moduleassessmentcriteria.dart';

class ModuleassessmentcriteriaController {
  static Future<List<Moduleassessmentcriteria>> moduleassessmentcriteriaGet() async {
    return await ModuleassessmentcriteriaService.get();
  }

  static Future<Moduleassessmentcriteria> moduleassessmentcriteriaGetOne(id) async {
    return await ModuleassessmentcriteriaService.getOne(id);
  }
}
