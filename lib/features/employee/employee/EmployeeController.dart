import 'Employee.dart';
import 'EmployeeService.dart';

class EmployeeController {
  static Future<List<Employee>> employeeGet() async {
    return await EmployeeService.get();
  }

  static Future<Employee> employeeGetOne(id) async {
    return await EmployeeService.getOne(id);
  }
}
