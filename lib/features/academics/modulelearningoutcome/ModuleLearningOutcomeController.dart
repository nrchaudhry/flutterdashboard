

import 'ModuleLearningOutcomeService.dart';
import 'Modulelearningoutcome.dart';

class ModulelearningoutcomeController {
  static Future<List<Modulelearningoutcome>> modulelearningoutcomeGet() async {
    return await ModulelearningoutcomeService.get();
  }

  static Future<Modulelearningoutcome> modulelearningoutcomeGetOne(id) async {
    return await ModulelearningoutcomeService.getOne(id);
  }
}
