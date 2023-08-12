

import 'Department.dart';
import 'DepartmentService.dart';

class DepartmentController {
  static Future<List<Department>> departmentGet() async {
    return await DepartmentService.get();
  }

  static Future<Department> departmentGetOne(id) async {
    return await DepartmentService.getOne(id);
  }
}
