import 'Productattribute.dart';
import 'productattributeService.dart';

class ProductattributeController {
  static Future<List<Productattribute>> productattributeGet() async {
    return await ProductattributeService.get();
  }

  static Future<Productattribute> productattributeGetOne(id) async {
    return await ProductattributeService.getOne(id);
  }
}
