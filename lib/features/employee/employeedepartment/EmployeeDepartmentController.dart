import 'EmployeeDepartmentService.dart';
import 'Employeedepartment.dart';

class EmployeedepartmentController {
  static Future<List<Employeedepartment>> employeedepartmentGet() async {
    return await EmployeedepartmentService.get();
  }

  static Future<Employeedepartment> employeedepartmentGetOne(id) async {
    return await EmployeedepartmentService.getOne(id);
  }
}
