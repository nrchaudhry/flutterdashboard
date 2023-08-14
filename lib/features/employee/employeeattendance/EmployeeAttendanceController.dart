import 'EmployeeAttendanceService.dart';
import 'Employeeattendance.dart';

class EmployeeattendanceController {
  static Future<List<Employeeattendance>> employeeattendanceGet() async {
    return await EmployeeattendanceService.get();
  }

  static Future<Employeeattendance> employeeattendanceGetOne(id) async {
    return await EmployeeattendanceService.getOne(id);
  }
}
