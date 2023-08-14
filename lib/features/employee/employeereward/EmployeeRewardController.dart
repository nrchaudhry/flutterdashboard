import 'Employeereward.dart';
import 'EmployeerewardService.dart';

class EmployeerewardController {
  static Future<List<Employeereward>> employeerewardGet() async {
    return await EmployeerewardService.get();
  }

  static Future<Employeereward> employeerewardGetOne(id) async {
    return await EmployeerewardService.getOne(id);
  }
}
