import 'ProductAttributeApplication.dart';
import 'ProductAttributeApplicationService.dart';

class ProductattributeapplicationController {
  static Future<List<Productattributeapplication>>
      productattributeapplicationGet() async {
    return await ProductattributeapplicationService.get();
  }

  static Future<Productattributeapplication> productattributeapplicationGetOne(
      id) async {
    return await ProductattributeapplicationService.getOne(id);
  }
}
