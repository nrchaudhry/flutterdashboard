import 'ProductItem.dart';
import 'ProductItemService.dart';

class ProductitemController {
  static Future<List<Productitem>> productitemGet() async {
    return await ProductitemService.get();
  }

  static Future<Productitem> productitemGetOne(id) async {
    return await ProductitemService.getOne(id);
  }
}
