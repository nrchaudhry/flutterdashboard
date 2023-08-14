import 'Company.dart';
import 'CompanyService.dart';

class CompanyController {
  static Future<List<Company>> companyGet() async {
    return await CompanyService.get();
  }

  static Future<Company> companyGetOne(id) async {
    return await CompanyService.getOne(id);
  }
}
