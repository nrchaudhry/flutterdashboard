import 'Employeeshift.dart';
import 'EmployeeshiftService.dart';

class EmployeeshiftController {
  static Future<List<Employeeshift>> employeeshiftGet() async {
    return await EmployeeshiftService.get();
  }

  static Future<Employeeshift> employeeshiftGetOne(id) async {
    return await EmployeeshiftService.getOne(id);
  }
}
