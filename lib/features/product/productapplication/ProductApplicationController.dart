import 'ProductApplication.dart';
import 'productapplicationService.dart';

class ProductapplicationController {
  static Future<List<Productapplication>> productapplicationGet() async {
    return await ProductapplicationService.get();
  }

  static Future<Productapplication> productapplicationGetOne(id) async {
    return await ProductapplicationService.getOne(id);
  }
}
