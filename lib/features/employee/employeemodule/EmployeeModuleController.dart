import 'EmployeeModule.dart';
import 'EmployeemoduleService.dart';

class EmployeemoduleController {
  static Future<List<Employeemodule>> employeemoduleGet() async {
    return await EmployeemoduleService.get();
  }

  static Future<Employeemodule> employeemoduleGetOne(id) async {
    return await EmployeemoduleService.getOne(id);
  }
}
