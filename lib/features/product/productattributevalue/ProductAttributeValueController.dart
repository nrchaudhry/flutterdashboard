import 'ProductAttributeValue.dart';
import 'ProductAttributeValueService.dart';

class ProductattributevalueController {
  static Future<List<Productattributevalue>> productattributevalueGet() async {
    return await ProductattributevalueService.get();
  }

  static Future<Productattributevalue> productattributevalueGetOne(id) async {
    return await ProductattributevalueService.getOne(id);
  }
}
