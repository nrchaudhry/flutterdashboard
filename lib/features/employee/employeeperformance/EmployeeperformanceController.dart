import 'Employeeperformance.dart';
import 'EmployeeperformanceService.dart';

class EmployeeperformanceController {
  static Future<List<Employeeperformance>> employeeperformanceGet() async {
    return await EmployeeperformanceService.get();
  }

  static Future<Employeeperformance> employeeperformanceGetOne(id) async {
    return await EmployeeperformanceService.getOne(id);
  }
}
