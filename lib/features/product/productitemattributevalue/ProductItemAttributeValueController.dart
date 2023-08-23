import 'ProductItemAttributeValue.dart';
import 'ProductItemAttributeValueService.dart';

class ProductitemattributevalueController {
  static Future<List<Productitemattributevalue>>
      ProductitemattributevalueGet() async {
    return await ProductitemattributevalueService.get();
  }

  static Future<Productitemattributevalue> ProductitemattributevalueGetOne(
      id) async {
    return await ProductitemattributevalueService.getOne(id);
  }
}
