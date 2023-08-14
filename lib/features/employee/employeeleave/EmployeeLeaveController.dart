import 'EmployeeLeaveService.dart';
import 'Employeeleave.dart';

class EmployeeleaveController {
  static Future<List<Employeeleave>> employeeleaveGet() async {
    return await EmployeeleaveService.get();
  }

  static Future<Employeeleave> employeeleaveGetOne(id) async {
    return await EmployeeleaveService.getOne(id);
  }
}
