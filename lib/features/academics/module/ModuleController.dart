

import 'Module.dart';
import 'ModuleService.dart';

class ModuleController {
  static Future<List<Module>> moduleGet() async {
    return await ModuleService.get();
  }

  static Future<Module> moduleGetOne(id) async {
    return await ModuleService.getOne(id);
  }
}
